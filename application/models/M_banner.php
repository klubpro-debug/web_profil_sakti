<?php
class M_banner extends CI_Model{

	function get_all_banner(){
		$hsl=$this->db->query("SELECT banner.*,DATE_FORMAT(banner_tanggal,'%d/%m/%Y') AS tanggal FROM banner ORDER BY banner_id DESC");
		return $hsl;
	}
	function simpan_banner($banner,$user_id,$user_nama,$gambar){
		$hsl=$this->db->query("insert into banner(banner_nama,banner_pengguna_id,banner_author,banner_cover) values ('$banner','$user_id','$user_nama','$gambar')");
		return $hsl;
	}
	function get_banner_by_kode($kode){
		$hsl=$this->db->query("SELECT banner.*,DATE_FORMAT(banner_tanggal,'%d/%m/%Y') AS tanggal FROM banner where banner_id='$kode'");
		return $hsl;
	}
	function update_banner($banner_id,$banner_nama,$user_id,$user_nama,$gambar){
		$hsl=$this->db->query("update banner set banner_nama='$banner_nama',banner_pengguna_id='$user_id',banner_author='$user_nama',banner_cover='$gambar' where banner_id='$banner_id'");
		return $hsl;
	}
	function update_banner_tanpa_img($banner_id,$banner_nama,$user_id,$user_nama){
		$hsl=$this->db->query("update banner set banner_nama='$banner_nama',banner_pengguna_id='$user_id',banner_author='$user_nama' where banner_id='$banner_id'");
		return $hsl;
	}
	function hapus_banner($kode){
		$hsl=$this->db->query("delete from banner where banner_id='$kode'");
		return $hsl;
	}
	

}