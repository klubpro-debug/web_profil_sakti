<?php
class M_login extends CI_Model{
    function cekadmin($u, $p){
        $hasil=$this->db->query("SELECT * FROM pengguna WHERE pengguna_username='$u' AND pengguna_password='$p'");
        return $hasil;
    }

}
