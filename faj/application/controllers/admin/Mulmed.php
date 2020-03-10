<?php
class Mulmed extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_mulmed');
		$this->load->model('m_pengguna');
		$this->load->library('upload');
	}


	function index(){
		$x['data']=$this->m_mulmed->get_all_mulmed();
		$this->load->view('admin/v_mulmed',$x);
	}
	
	function simpan_mulmed(){
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

							$this->m_mulmed->simpan_mulmed($nama,$desk,$photo);
							echo $this->session->set_flashdata('msg','success');
							redirect('admin/mulmed');
					}else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('admin/mulmed');
	                }
	                 
	            }else{
	            	
					$nama=strip_tags($this->input->post('xnama'));
					
					$desk=strip_tags($this->input->post('xdesk'));

					$this->m_mulmed->simpan_mulmed_tanpa_img($nama,$desk);
					echo $this->session->set_flashdata('msg','success');
					redirect('admin/mulmed');
				}
				
	}
	
	function update_mulmed(){
				
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

							$this->m_mulmed->update_mulmed($kode,$nama,$desk,$photo);
							echo $this->session->set_flashdata('msg','info');
							redirect('admin/mulmed');
	                    
	                }else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('admin/mulmed');
	                }
	                
	            }else{
							$kode=$this->input->post('kode');
							$nama=strip_tags($this->input->post('xnama'));
							$desk=strip_tags($this->input->post('xdesk'));
							$this->m_mulmed->update_mulmed_tanpa_img($kode,$nama,$desk);
							echo $this->session->set_flashdata('msg','info');
							redirect('admin/mulmed');
	            } 

	}

	function hapus_mulmed(){
		$kode=$this->input->post('kode');
		$gambar=$this->input->post('gambar');
		$path='./assets/images/'.$gambar;
		unlink($path);
		$this->m_mulmed->hapus_mulmed($kode);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/mulmed');
	}

}