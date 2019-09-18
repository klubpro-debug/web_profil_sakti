<?php 
class M_robo extends CI_Model{

	function get_all_robo(){
		$hsl=$this->db->query("SELECT * FROM tbl_k_robo");
		return $hsl;
	}

	function simpan_robo($nama,$desk,$photo){
		$hsl=$this->db->query("INSERT INTO tbl_k_robo (k_robo_nama,k_robo_deskripsi,k_robo_photo) VALUES ('$nama','$desk','$photo')");
		return $hsl;
	}
	function simpan_robo_tanpa_img($nama,$desk){
		$hsl=$this->db->query("INSERT INTO tbl_k_robo (k_robo_nama,k_robo_deskripsi) VALUES ('$nama','$desk')");
		return $hsl;
	}

	function update_robo($kode,$nama,$desk,$photo){
		$hsl=$this->db->query("UPDATE tbl_k_robo SET k_robo_nama='$nama',k_robo_deskripsi='$desk',k_robo_photo='$photo' WHERE k_robo_id='$kode'");
		return $hsl;
	}
	function update_robo_tanpa_img($kode,$nama,$desk){
		$hsl=$this->db->query("UPDATE tbl_k_robo SET k_robo_nama='$nama',k_robo_deskripsi='$desk' WHERE k_robo_id='$kode'");
		return $hsl;
	}
	function hapus_robo($kode){
		$hsl=$this->db->query("DELETE FROM tbl_k_robo WHERE k_robo_id='$kode'");
		return $hsl;
	}

	//front-end
	function robo(){
		$hsl=$this->db->query("SELECT * FROM tbl_k_robo");
		return $hsl;
	}
	function robo_perpage($offset,$limit){
		$hsl=$this->db->query("SELECT * FROM tbl_k_robo limit $offset,$limit");
		return $hsl;
	}

}