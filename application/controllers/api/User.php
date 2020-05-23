<?php
class User extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_pengguna');
	}

	function index(){
        $hsl=$this->db->query("SELECT pengguna.* FROM pengguna");
        if($hsl->num_rows()>0){
            $a=$hsl->row_array();
            $b=$a['pengguna_username'];
        }
		echo json_encode($hsl->result_array);
    }
    
	function id($id){
        $hsl=$this->db->query("SELECT pengguna.* FROM pengguna WHERE pengguna_id='$id'");
        if($hsl->num_rows()>0){
            $a=$hsl->row_array();
            $b=$a['pengguna_username'];
        }
		echo json_encode($hsl->result_array);
    }    
}