<?php
class M_artikel extends CI_Model{

	function get_all_artikel(){
		$hsl=$this->db->query("SELECT artikel.*,DATE_FORMAT(artikel_tanggal,'%d/%m/%Y') AS tanggal FROM artikel ORDER BY artikel_id DESC");
		return $hsl;
	}
	function simpan_artikel($judul,$isi,$kategori_id,$kategori_nama,$imgslider,$user_id,$user_nama,$gambar,$slug){
		$hsl=$this->db->query("insert into artikel(artikel_judul,artikel_isi,artikel_kategori_id,artikel_kategori_nama,artikel_img_slider,artikel_pengguna_id,artikel_author,artikel_gambar,artikel_slug) values ('$judul','$isi','$kategori_id','$kategori_nama','$imgslider','$user_id','$user_nama','$gambar','$slug')");
		return $hsl;
	}
	function get_artikel_by_kode($kode){
		$hsl=$this->db->query("SELECT artikel.*,DATE_FORMAT(artikel_tanggal,'%d/%m/%Y') AS tanggal FROM artikel where artikel_id='$kode'");
		return $hsl;
	}
	function update_artikel($artikel_id,$judul,$isi,$kategori_id,$kategori_nama,$imgslider,$user_id,$user_nama,$gambar,$slug){
		$hsl=$this->db->query("update artikel set artikel_judul='$judul',artikel_isi='$isi',artikel_kategori_id='$kategori_id',artikel_kategori_nama='$kategori_nama',artikel_img_slider='$imgslider',artikel_pengguna_id='$user_id',artikel_author='$user_nama',artikel_gambar='$gambar',artikel_slug='$slug' where artikel_id='$artikel_id'");
		return $hsl;
	}
	function update_artikel_tanpa_img($artikel_id,$judul,$isi,$kategori_id,$kategori_nama,$imgslider,$user_id,$user_nama,$slug){
		$hsl=$this->db->query("update artikel set artikel_judul='$judul',artikel_isi='$isi',artikel_kategori_id='$kategori_id',artikel_kategori_nama='$kategori_nama',artikel_img_slider='$imgslider',artikel_pengguna_id='$user_id',artikel_author='$user_nama',artikel_slug='$slug' where artikel_id='$artikel_id'");
		return $hsl;
	}
	function hapus_artikel($kode){
		$hsl=$this->db->query("delete from artikel where artikel_id='$kode'");
		return $hsl;
	}

	//Front-End
	function get_berita_slider(){
		$hsl=$this->db->query("SELECT artikel.*,DATE_FORMAT(artikel_tanggal,'%d/%m/%Y') AS tanggal FROM artikel where artikel_img_slider='1' ORDER BY artikel_id DESC");
		return $hsl;
	}
	function get_berita_home(){
		$hsl=$this->db->query("SELECT artikel.*,DATE_FORMAT(artikel_tanggal,'%d/%m/%Y') AS tanggal FROM artikel ORDER BY artikel_id DESC limit 4");
		return $hsl;
	}

	function berita_perpage($offset,$limit){
		$hsl=$this->db->query("SELECT artikel.*,DATE_FORMAT(artikel_tanggal,'%d/%m/%Y') AS tanggal FROM artikel ORDER BY artikel_id DESC limit $offset,$limit");
		return $hsl;
	}

	function berita(){
		$hsl=$this->db->query("SELECT artikel.*,DATE_FORMAT(artikel_tanggal,'%d/%m/%Y') AS tanggal FROM artikel ORDER BY artikel_id DESC");
		return $hsl;
	}
	function get_berita_by_kode($kode){
		$hsl=$this->db->query("SELECT artikel.*,DATE_FORMAT(artikel_tanggal,'%d/%m/%Y') AS tanggal FROM artikel where artikel_id='$kode'");
		return $hsl;
	}

	function cari_berita($keyword){
		$hsl=$this->db->query("SELECT artikel.*,DATE_FORMAT(artikel_tanggal,'%d/%m/%Y') AS tanggal FROM artikel WHERE artikel_judul LIKE '%$keyword%' LIMIT 5");
		return $hsl;
	}

	function show_komentar_by_artikel_id($kode){
		$hsl=$this->db->query("SELECT * FROM tbl_komentar WHERE komentar_artikel_id='$kode' AND komentar_status='1' AND komentar_parent='0'");
		return $hsl;
	}


}
