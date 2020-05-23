<?php
class Home extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_tulisan');
		$this->load->model('m_artikel');
		$this->load->model('m_pengunjung');
		$this->load->model('m_kategori');
		$this->m_pengunjung->count_visitor();
	}
	function index(){
			$x['terbaru']=$this->db->query("SELECT * FROM artikel ORDER BY artikel_tanggal DESC LIMIT 5");
			$x['category']=$this->db->get('kategori');
			$this->load->view('depan/v_home',$x);
	}

}
