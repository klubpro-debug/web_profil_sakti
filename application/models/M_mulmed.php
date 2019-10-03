<?php 
class M_mulmed extends CI_Model{

	function get_all_mulmed(){
		$hsl=$this->db->query("SELECT * FROM tbl_k_mulmed");
		return $hsl;
	}

	function simpan_mulmed($nama,$desk,$photo){
		$hsl=$this->db->query("INSERT INTO tbl_k_mulmed (k_mulmed_nama,k_mulmed_deskripsi,k_mulmed_photo) VALUES ('$nama','$desk','$photo')");
		return $hsl;
	}
	function simpan_mulmed_tanpa_img($nama,$desk){
		$hsl=$this->db->query("INSERT INTO tbl_k_mulmed (k_mulmed_nama,k_mulmed_deskripsi) VALUES ('$nama','$desk')");
		return $hsl;
	}

	function update_mulmed($kode,$nama,$desk,$photo){
		$hsl=$this->db->query("UPDATE tbl_k_mulmed SET k_mulmed_nama='$nama',k_mulmed_deskripsi='$desk',k_mulmed_photo='$photo' WHERE k_mulmed_id='$kode'");
		return $hsl;
	}
	function update_mulmed_tanpa_img($kode,$nama,$desk){
		$hsl=$this->db->query("UPDATE tbl_k_mulmed SET k_mulmed_nama='$nama',k_mulmed_deskripsi='$desk' WHERE k_mulmed_id='$kode'");
		return $hsl;
	}
	function hapus_mulmed($kode){
		$hsl=$this->db->query("DELETE FROM tbl_k_mulmed WHERE k_mulmed_id='$kode'");
		return $hsl;
	}

	//front-end
	function mulmed(){
		$hsl=$this->db->query("SELECT * FROM tbl_k_mulmed");
		return $hsl;
	}
	function mulmed_perpage($offset,$limit){
		$hsl=$this->db->query("SELECT * FROM tbl_k_mulmed limit $offset,$limit");
		return $hsl;
	}

}