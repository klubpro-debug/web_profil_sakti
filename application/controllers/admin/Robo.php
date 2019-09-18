<?php
class Robo extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_robo');
		$this->load->model('m_pengguna');
		$this->load->library('upload');
	}


	function index(){
		$x['data']=$this->m_robo->get_all_robo();
		$this->load->view('admin/v_robo',$x);
	}
	
	function simpan_robo(){
				$config['upload_path'] = './assets/images/'; //path folder
	            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
	            $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

	            $this->upload->initialize($config);
	            if(!empty($_FILES['filefoto']['name']))
	            {
	                if ($this->upload->do_upload('filefoto'))
	                {
	                        $gbr = $this->upload->data();
	                        //Compress Image
	                        $config['image_library']='gd2';
	                        $config['source_image']='./assets/images/'.$gbr['file_name'];
	                        $config['create_thumb']= FALSE;
	                        $config['maintain_ratio']= FALSE;
	                        $config['quality']= '60%';
	                        $config['width']= 300;
	                        $config['height']= 300;
	                        $config['new_image']= './assets/images/'.$gbr['file_name'];
	                        $this->load->library('image_lib', $config);
	                        $this->image_lib->resize();

	                        $photo=$gbr['file_name'];
							$nama=strip_tags($this->input->post('xnama'));
							$desk=strip_tags($this->input->post('xdesk'));

							$this->m_robo->simpan_robo($nama,$desk,$photo);
							echo $this->session->set_flashdata('msg','success');
							redirect('admin/robo');
					}else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('admin/robo');
	                }
	                 
	            }else{
	            	
					$nama=strip_tags($this->input->post('xnama'));
					
					$desk=strip_tags($this->input->post('xdesk'));

					$this->m_robo->simpan_robo_tanpa_img($nama,$desk);
					echo $this->session->set_flashdata('msg','success');
					redirect('admin/robo');
				}
				
	}
	
	function update_robo(){
				
	            $config['upload_path'] = './assets/images/'; //path folder
	            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
	            $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

	            $this->upload->initialize($config);
	            if(!empty($_FILES['filefoto']['name']))
	            {
	                if ($this->upload->do_upload('filefoto'))
	                {
	                        $gbr = $this->upload->data();
	                        //Compress Image
	                        $config['image_library']='gd2';
	                        $config['source_image']='./assets/images/'.$gbr['file_name'];
	                        $config['create_thumb']= FALSE;
	                        $config['maintain_ratio']= FALSE;
	                        $config['quality']= '60%';
	                        $config['width']= 300;
	                        $config['height']= 300;
	                        $config['new_image']= './assets/images/'.$gbr['file_name'];
	                        $this->load->library('image_lib', $config);
	                        $this->image_lib->resize();
	                        $gambar=$this->input->post('gambar');
							$path='./assets/images/'.$gambar;
							unlink($path);

	                        $photo=$gbr['file_name'];
	                        $kode=$this->input->post('kode');
							$nama=strip_tags($this->input->post('xnama'));
							$desk=strip_tags($this->input->post('xdesk'));

							$this->m_robo->update_robo($kode,$nama,$desk,$photo);
							echo $this->session->set_flashdata('msg','info');
							redirect('admin/robo');
	                    
	                }else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('admin/robo');
	                }
	                
	            }else{
							$kode=$this->input->post('kode');
							$nama=strip_tags($this->input->post('xnama'));
							$desk=strip_tags($this->input->post('xdesk'));
							$this->m_robo->update_robo_tanpa_img($kode,$nama,$desk);
							echo $this->session->set_flashdata('msg','info');
							redirect('admin/robo');
	            } 

	}

	function hapus_robo(){
		$kode=$this->input->post('kode');
		$gambar=$this->input->post('gambar');
		$path='./assets/images/'.$gambar;
		unlink($path);
		$this->m_robo->hapus_robo($kode);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/robo');
	}

}