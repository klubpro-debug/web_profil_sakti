<?php 
class M_advokat extends CI_Model{

	function get_all_advokat(){
		$hsl=$this->db->query("SELECT * FROM tbl_advokat");
		return $hsl;
	}

	function simpan_advokat($nip,$nama,$jenkel,$tmp_lahir,$tgl_lahir,$ahli,$photo){
		$hsl=$this->db->query("INSERT INTO tbl_advokat (advokat_nip,advokat_nama,advokat_jenkel,advokat_tmp_lahir,advokat_tgl_lahir,advokat_ahli,advokat_photo) VALUES ('$nip','$nama','$jenkel','$tmp_lahir','$tgl_lahir','$ahli','$photo')");
		return $hsl;
	}
	function simpan_advokat_tanpa_img($nip,$nama,$jenkel,$tmp_lahir,$tgl_lahir,$ahli){
		$hsl=$this->db->query("INSERT INTO tbl_advokat (advokat_nip,advokat_nama,advokat_jenkel,advokat_tmp_lahir,advokat_tgl_lahir,advokat_ahli) VALUES ('$nip','$nama','$jenkel','$tmp_lahir','$tgl_lahir','$ahli')");
		return $hsl;
	}

	function update_advokat($kode,$nip,$nama,$jenkel,$tmp_lahir,$tgl_lahir,$ahli,$photo){
		$hsl=$this->db->query("UPDATE tbl_advokat SET advokat_nip='$nip',advokat_nama='$nama',advokat_jenkel='$jenkel',advokat_tmp_lahir='$tmp_lahir',advokat_tgl_lahir='$tgl_lahir',advokat_ahli='$ahli',advokat_photo='$photo' WHERE advokat_id='$kode'");
		return $hsl;
	}
	function update_advokat_tanpa_img($kode,$nip,$nama,$jenkel,$tmp_lahir,$tgl_lahir,$ahli){
		$hsl=$this->db->query("UPDATE tbl_advokat SET advokat_nip='$nip',advokat_nama='$nama',advokat_jenkel='$jenkel',advokat_tmp_lahir='$tmp_lahir',advokat_tgl_lahir='$tgl_lahir',advokat_ahli='$ahli' WHERE advokat_id='$kode'");
		return $hsl;
	}
	function hapus_advokat($kode){
		$hsl=$this->db->query("DELETE FROM tbl_advokat WHERE advokat_id='$kode'");
		return $hsl;
	}

	//front-end
	function advokat(){
		$hsl=$this->db->query("SELECT * FROM tbl_advokat");
		return $hsl;
	}
	function advokat_perpage($offset,$limit){
		$hsl=$this->db->query("SELECT * FROM tbl_advokat limit $offset,$limit");
		return $hsl;
	}

}