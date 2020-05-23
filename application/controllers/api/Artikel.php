<?php
class Artikel extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_pengguna');
	}

	function index($id){
        header('Content-Type: json');
        $hsl=$this->db->query("SELECT * FROM artikel WHERE artikel_kategori_id='$id'");
        if($hsl->num_rows()>0){
            $response=$hsl->result_array();
            echo json_encode($response);
        }
        else
        {
            echo json_encode('status: 404');
        }
    }
    
	function id($id){
        header('Content-Type: json');
        $hsl=$this->db->query("SELECT artikel_judul,artikel_gambar,artikel_kategori_id,artikel_isi,DATE_FORMAT(artikel_tanggal,'%d/%m/%Y') AS artikel_tanggal FROM artikel WHERE artikel_id='$id'");
        if($hsl->num_rows()>0){
            $response=$hsl->result_array();
            echo json_encode($response);
        }
        else
        {
            echo json_encode('status: 404');
        }
    }    
}