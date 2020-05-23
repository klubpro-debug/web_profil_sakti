<?php
class Banner extends CI_Controller{
	function __construct(){
		parent::__construct();
		// if($this->session->userdata('masuk') !=TRUE){
        //     $url=base_url('admin/login');
        //     redirect($url);
        // };
        $this->load->model('m_banner');
		$this->load->model('m_pengguna');
		$this->load->library('upload');        
	}
	function index(){
		if($this->session->userdata('akses')=='1'){
			$x['data'] = $this->m_banner->get_all_banner();
			$this->load->view('admin/v_banner',$x);
		}else{
			redirect('admin/login');
		}
    }
	function add_banner(){
		$this->load->view('admin/v_add_banner');
	}
	function get_edit(){
		$kode=$this->uri->segment(4);
        $x['data']=$this->m_banner->get_banner_by_kode($kode);
		$this->load->view('admin/v_edit_banner',$x);
    }    

	function simpan_banner(){
        $config['upload_path'] = './assets/images/files/'; //path folder
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
                    $config['source_image']='./assets/images/files/'.$gbr['file_name'];
                    $config['create_thumb']= FALSE;
                    $config['maintain_ratio']= FALSE;
                    $config['quality']= '60%';
                    $config['width']= 500;
                    $config['height']= 400;
                    $config['new_image']= './assets/images/files/'.$gbr['file_name'];
                    $this->load->library('image_lib', $config);
                    $this->image_lib->resize();

                    $gambar=$gbr['file_name'];
                    $banner=strip_tags($this->input->post('xnama_banner'));
                    $kode=$this->session->userdata('idadmin');
                    $user=$this->m_pengguna->get_pengguna_login($kode);
                    $p=$user->row_array();
                    $user_id=$p['pengguna_id'];
                    $user_nama=$p['pengguna_nama'];
                    $this->m_banner->simpan_banner($banner,$user_id,$user_nama,$gambar);
                    echo $this->session->set_flashdata('msg','success');
                    redirect('admin/banner');
            }else{
                echo $this->session->set_flashdata('msg','warning');
                redirect('admin/banner');
            }
             
        }else{
            redirect('admin/banner');
        }
        
}

	function update_banner(){				
        $config['upload_path'] = './assets/images/files/'; //path folder
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
                    $config['source_image']='./assets/images/files/'.$gbr['file_name'];
                    $config['create_thumb']= FALSE;
                    $config['maintain_ratio']= FALSE;
                    $config['quality']= '60%';
                    $config['width']= 500;
                    $config['height']= 400;
                    $config['new_image']= './assets/images/files/'.$gbr['file_name'];
                    $this->load->library('image_lib', $config);
                    $this->image_lib->resize();

                    $gambar=$gbr['file_name'];
                    $banner_id=$this->input->post('kode');
                    $banner_nama=strip_tags($this->input->post('xnama_banner'));
                    $images=$this->input->post('gambar');
                    $path='./assets/images/files/'.$images;
                    unlink($path);
                    $kode=$this->session->userdata('idadmin');
                    $user=$this->m_pengguna->get_pengguna_login($kode);
                    $p=$user->row_array();
                    $user_id=$p['pengguna_id'];
                    $user_nama=$p['pengguna_nama'];
                    $this->m_banner->update_banner($banner_id,$banner_nama,$user_id,$user_nama,$gambar);
                    echo $this->session->set_flashdata('msg','info');
                    redirect('admin/banner');
                
            }else{
                echo $this->session->set_flashdata('msg','warning');
                redirect('admin/banner');
            }
            
        }else{
                    $banner_id=$this->input->post('kode');
                    $banner_nama=strip_tags($this->input->post('xnama_banner'));
                    $kode=$this->session->userdata('idadmin');
                    $user=$this->m_pengguna->get_pengguna_login($kode);
                    $p=$user->row_array();
                    $user_id=$p['pengguna_id'];
                    $user_nama=$p['pengguna_nama'];
                    $this->m_banner->update_banner_tanpa_img($banner_id,$banner_nama,$user_id,$user_nama);
                    echo $this->session->set_flashdata('msg','info');
                    redirect('admin/banner');
        } 

}    

function hapus_banner(){
    $kode=$this->input->post('kode');
    $gambar=$this->input->post('gambar');
    $path='./assets/images/files/'.$gambar;
    unlink($path);
    $this->m_banner->hapus_banner($kode);
    echo $this->session->set_flashdata('msg','success-hapus');
    redirect('admin/banner');
}
	
}