<?php if (!defined('BASEPATH')) exit('No direct script access allowed');


class M_Desa extends CI_Model {
    function get(){
        return $this->db->get("tbl_desa");
    }   

    function getWhereKecId($id){
        return $this->db->get_where("tbl_desa", array("kode_kec" => $id));
    }     

    function getWhere($where = NULL,$orderBy = NULL, $join = NULL, $joinParams = NULL, $typeJoin = NULL){
        $this->db->select("*");
        $this->db->from("tbl_desa");
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