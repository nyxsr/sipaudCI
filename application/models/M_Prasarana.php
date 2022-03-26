<?php if (!defined('BASEPATH')) exit('No direct script access allowed');


class M_Prasarana extends CI_Model {
    function get(){
        return $this->db->get("tbl_prasarana");
    }

    function getWhere($where = NULL,$orderBy = NULL){
        $this->db->select("*");
        $this->db->from("tbl_prasarana");
        if(!empty($where)){
            $this->db->where($where);
        }

        if(!empty($orderBy)){
            $this->db->order_by($orderBy);
        }

        return $this->db->get();
    }
    
    function data_grafik($column, $where){
        $this->db->select("SUM($column) as total");
        $this->db->from("tbl_prasarana");        
        $this->db->join("tbl_lembaga", "tbl_lembaga.id = tbl_prasarana.id_lembaga");
        $this->db->join("tbl_kecamatan", "tbl_kecamatan.kode_kec = tbl_lembaga.kode_kec", "LEFT");
        $this->db->join("tbl_desa","tbl_lembaga.kode_desa = tbl_desa.kode_desa AND tbl_lembaga.kode_kec = tbl_desa.kode_kec","LEFT");

        if(!empty($where)){
            $this->db->where($where);
        }
        return $this->db->get()->row()->total;
    }
    
    function insert($data){
        return $this->db->insert("tbl_prasarana",$data);
    }

    function update($data,$params){
        $this->db->where($params);
        return $this->db->update('tbl_prasarana', $data);;
    }

    function delete($params){
        return $this->db->delete("tbl_prasarana",$params);
    }

    function totalRow($where = NULL){
        $this->db->from("tbl_prasarana");
        if(!empty($where)){
            $this->db->where($where);
        }
        return $this->db->count_all_results();
    }
    
    function datatable($limit,$start,$search,$paramsSearch,$columnSortName,$typeSort,$selectFilterName,$selectFilterValue){
        $this->db->select("tbl_prasarana.*, tbl_lembaga.nama_lembaga");
        $this->db->from("tbl_prasarana");
        $this->db->join("tbl_lembaga","tbl_prasarana.id_lembaga = tbl_lembaga.id");
        $this->db->join("tbl_kecamatan","tbl_lembaga.kode_kec = tbl_kecamatan.kode_kec","LEFT");
        $this->db->join("tbl_desa","tbl_lembaga.kode_desa = tbl_desa.kode_desa AND tbl_lembaga.kode_kec = tbl_desa.kode_kec","LEFT");


        if(!empty($selectFilterName) && !empty($selectFilterValue) ){
            $this->db->where($selectFilterName,$selectFilterValue);
        }

        if($this->session->userdata("role") == "operator"){
            $this->db->where("tbl_prasarana.id_lembaga",$this->encryption->decrypt(base64_decode($this->session->userdata("id_lembaga"))));
        }

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
