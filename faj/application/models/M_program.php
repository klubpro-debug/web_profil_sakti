<?php 
class M_program extends CI_Model{

	function get_all_program(){
		$hsl=$this->db->query("SELECT * FROM tbl_k_program");
		return $hsl;
	}

	function simpan_program($nama,$desk,$photo){
		$hsl=$this->db->query("INSERT INTO tbl_k_program (k_program_nama,k_program_deskripsi,k_program_photo) VALUES ('$nama','$desk','$photo')");
		return $hsl;
	}
	function simpan_program_tanpa_img($nama,$desk){
		$hsl=$this->db->query("INSERT INTO tbl_k_program (k_program_nama,k_program_deskripsi) VALUES ('$nama','$desk')");
		return $hsl;
	}

	function update_program($kode,$nama,$desk,$photo){
		$hsl=$this->db->query("UPDATE tbl_k_program SET k_program_nama='$nama',k_program_deskripsi='$desk',k_program_photo='$photo' WHERE k_program_id='$kode'");
		return $hsl;
	}
	function update_program_tanpa_img($kode,$nama,$desk){
		$hsl=$this->db->query("UPDATE tbl_k_program SET k_program_nama='$nama',k_program_deskripsi='$desk' WHERE k_program_id='$kode'");
		return $hsl;
	}
	function hapus_program($kode){
		$hsl=$this->db->query("DELETE FROM tbl_k_program WHERE k_program_id='$kode'");
		return $hsl;
	}

	//front-end
	function program(){
		$hsl=$this->db->query("SELECT * FROM tbl_k_program");
		return $hsl;
	}
	function program_perpage($offset,$limit){
		$hsl=$this->db->query("SELECT * FROM tbl_k_program limit $offset,$limit");
		return $hsl;
	}

}