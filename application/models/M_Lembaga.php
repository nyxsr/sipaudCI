<?php if (!defined('BASEPATH')) exit('No direct script access allowed');


class M_Lembaga extends CI_Model
{
	function get()
	{
		return $this->db->get("tbl_lembaga");
	}

	function getExceptPrasarana($except = NULL)
	{
		$this->db->select("tbl_lembaga.*, tbl_prasarana.id_prasarana");
		$this->db->from("tbl_lembaga");
		$this->db->join("tbl_prasarana", "tbl_lembaga.id = tbl_prasarana.id_lembaga", "left");
		$this->db->where("tbl_prasarana.id_prasarana IS NULL");
		if (!empty($except)) {
			$this->db->or_where("tbl_prasarana.id_prasarana", $except);
		}
		return $this->db->get();
	}

	function getExceptSarana($except = NULL)
	{
		$this->db->select("tbl_lembaga.*, tbl_sarana.id_sarana");
		$this->db->from("tbl_lembaga");
		$this->db->join("tbl_sarana", "tbl_lembaga.id = tbl_sarana.id_lembaga", "left");
		$this->db->where("tbl_sarana.id_sarana IS NULL");
		if (!empty($except)) {
			$this->db->or_where("tbl_sarana.id_sarana", $except);
		}
		return $this->db->get();
	}

	function getWhere($where = NULL, $orderBy = NULL, $join = NULL, $joinParams = NULL, $typeJoin = NULL)
	{
		$this->db->select("*");
		$this->db->from("tbl_lembaga");
		if (!empty($join)) {
			$this->db->join($join, $joinParams, $typeJoin);
		}

		if (!empty($where)) {
			$this->db->where($where);
		}

		if (!empty($orderBy)) {
			$this->db->order_by($orderBy);
		}

		return $this->db->get();
	}

	function getWhereKecIdDesId($kode_kec, $kode_desa, $id_lembaga)
	{
		$this->db->select("*");
		$this->db->from("tbl_lembaga");
		$this->db->join("tbl_kecamatan", "tbl_lembaga.kode_kec 	= tbl_kecamatan.kode_kec", 'LEFT');
		$this->db->join("tbl_desa", "tbl_lembaga.kode_desa = tbl_desa.kode_desa AND tbl_lembaga.kode_kec = tbl_desa.kode_kec", "LEFT");
		$this->db->join("tbl_siswa", "tbl_siswa.id_lembaga = tbl_lembaga.id");
		$this->db->where("tbl_lembaga.kode_kec", $kode_kec);
		$this->db->where("tbl_lembaga.kode_desa", $kode_desa);
		$this->db->where("tbl_siswa.id_lembaga", $id_lembaga);

		return $this->db->get();
	}


	function getLembaga($where)
	{
		$this->db->select("*");
		$this->db->from("tbl_lembaga");
		$this->db->join("tbl_kecamatan", "tbl_lembaga.kode_kec 	= tbl_kecamatan.kode_kec", 'LEFT');
		$this->db->join("tbl_desa", "tbl_lembaga.kode_desa = tbl_desa.kode_desa AND tbl_lembaga.kode_kec = tbl_desa.kode_kec", "LEFT");
		$this->db->where($where);

		return $this->db->get();
	}

	function insert($data)
	{
		return $this->db->insert("tbl_lembaga", $data);
	}

	function update($data, $params)
	{
		$this->db->where($params);
		return $this->db->update('tbl_lembaga', $data);;
	}

	function delete($params)
	{
		return $this->db->delete("tbl_lembaga", $params);
	}

	function totalRow($where = NULL)
	{
		$this->db->from("tbl_lembaga");
		if (!empty($where)) {
			$this->db->where($where);
		}
		return $this->db->count_all_results();
	}

	function datatable($limit, $start, $search, $paramsSearch, $columnSortName, $typeSort)
	{
		$this->db->select("tbl_lembaga.*, tbl_users.username, tbl_kecamatan.kecamatan, tbl_desa.desa");
		$this->db->from("tbl_lembaga");
		$this->db->join("tbl_users", "tbl_lembaga.id_user = tbl_users.id");
		$this->db->join("tbl_kecamatan", "tbl_lembaga.kode_kec = tbl_kecamatan.kode_kec", "LEFT");
		$this->db->join("tbl_desa", "tbl_lembaga.kode_desa = tbl_desa.kode_desa AND tbl_lembaga.kode_kec = tbl_desa.kode_kec", "LEFT");

		if (!empty($search)) {
			$this->db->like($paramsSearch, $search);
		}

		if (!empty($columnSortName) && !empty($typeSort)) {
			$this->db->order_by($columnSortName, $typeSort);
		}

		$this->db->limit($limit, $start);
		return $this->db->get();
	}
}
