<?php if (!defined('BASEPATH')) exit('No direct script access allowed');


class M_Kecamatan extends CI_Model {
    function get(){
        return $this->db->get("tbl_kecamatan");
    }

    function getWhereKecIdDesId($kode_kec, $kode_desa){
        return $this->db->get_where("tbl_lembaga", array("kode_kec" => $kode_kec, "kode_desa" => $kode_desa));
    }  

    function getWhere($where = NULL,$orderBy = NULL, $join = NULL, $joinParams = NULL, $typeJoin = NULL){
        $this->db->select("*");
        $this->db->from("tbl_kecamatan");
        if(!empty($join)){
            $this->db->join($join, $joinParams, $typeJoin);
        }

        if(!empty($where)){
            $this->db->where($where);
        }

        if(!empty($orderBy)){
            $this->db->order_by($orderBy);
        }

        return $this->db->get();
    }
}