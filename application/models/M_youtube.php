<?php 
class M_youtube extends CI_Model{

	function get_all_youtube(){
		$hsl=$this->db->query("SELECT * FROM tbl_k_youtube");
		return $hsl;
	}

	function simpan_youtube($nama,$desk,$photo){
		$hsl=$this->db->query("INSERT INTO tbl_k_youtube (k_youtube_nama,k_youtube_deskripsi,k_youtube_photo) VALUES ('$nama','$desk','$photo')");
		return $hsl;
	}
	function simpan_youtube_tanpa_img($nama,$desk){
		$hsl=$this->db->query("INSERT INTO tbl_k_youtube (k_youtube_nama,k_youtube_deskripsi) VALUES ('$nama','$desk')");
		return $hsl;
	}

	function update_youtube($kode,$nama,$desk,$photo){
		$hsl=$this->db->query("UPDATE tbl_k_youtube SET k_youtube_nama='$nama',k_youtube_deskripsi='$desk',k_youtube_photo='$photo' WHERE k_youtube_id='$kode'");
		return $hsl;
	}
	function update_youtube_tanpa_img($kode,$nama,$desk){
		$hsl=$this->db->query("UPDATE tbl_k_youtube SET k_youtube_nama='$nama',k_youtube_deskripsi='$desk' WHERE k_youtube_id='$kode'");
		return $hsl;
	}
	function hapus_youtube($kode){
		$hsl=$this->db->query("DELETE FROM tbl_k_youtube WHERE k_youtube_id='$kode'");
		return $hsl;
	}

	//front-end
	function youtube(){
		$hsl=$this->db->query("SELECT * FROM tbl_k_youtube");
		return $hsl;
	}
	function youtube_perpage($offset,$limit){
		$hsl=$this->db->query("SELECT * FROM tbl_k_youtube limit $offset,$limit");
		return $hsl;
	}

}