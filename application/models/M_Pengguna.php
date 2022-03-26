<?php if (!defined('BASEPATH')) exit('No direct script access allowed');


class M_Pengguna extends CI_Model {
    function get(){
        return $this->db->get("tbl_users");
    }

    function getWhere($where = NULL,$orderBy = NULL){
		$this->db->select("tbl_users.*, tbl_lembaga.nama_lembaga, tbl_lembaga.id as id_lembaga");
        $this->db->from("tbl_users");
        $this->db->join("tbl_lembaga","tbl_lembaga.id_user = tbl_users.id","LEFT");
        if(!empty($where)){
            $this->db->where($where);
        }

        if(!empty($orderBy)){
            $this->db->order_by($orderBy);
        }

        return $this->db->get();
    }

    function insert($data){
        return $this->db->insert("tbl_users",$data);
    }

    function update($data,$params){
        $this->db->where($params);
        return $this->db->update('tbl_users', $data);;
    }

    function delete($params){
        return $this->db->delete("tbl_users",$params);
    }

    function totalRow($where = NULL){
        $this->db->from("tbl_users");
        if(!empty($where)){
            $this->db->where($where);
        }
        return $this->db->count_all_results();
	}
    
	function datatable($limit,$start,$search,$paramsSearch,$columnSortName,$typeSort){
		$this->db->select("*");
		$this->db->from("tbl_users");

		if(!empty($search)){
			$this->db->like($paramsSearch,$search);
		}
        
		if(!empty($columnSortName) && !empty($typeSort)){
		    $this->db->order_by($columnSortName,$typeSort);
        }

		$this->db->limit($limit,$start);
		return $this->db->get();
	}
}