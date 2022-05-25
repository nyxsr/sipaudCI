<?php if (!defined('BASEPATH')) exit('No direct script access allowed');


class M_Siswa extends CI_Model
{
	function get()
	{
		return $this->db->get("tbl_siswa");
	}

	function getLembagabySiswa()
	{
		$this->db->select("nama_lembaga, tbl_siswa.*");
		$this->db->from("tbl_siswa");
		$this->db->join("tbl_lembaga", "tbl_siswa.id_lembaga = tbl_lembaga.id");
		$this->db->order_by("nama_lembaga", "asc");

		return $this->db->get();
	}

	function getWhere($where = NULL, $orderBy = NULL)
	{
		$this->db->select("*");
		$this->db->from("tbl_siswa");
		if (!empty($where)) {
			$this->db->where($where);
		}

		if (!empty($orderBy)) {
			$this->db->order_by($orderBy);
		}

		return $this->db->get();
	}

	function getWhereStatistic($where = NULL, $orderBy = NULL)
	{
		$this->db->select("*");
		$this->db->from("tbl_siswa");

		$this->db->join("tbl_lembaga", "tbl_lembaga.id = tbl_siswa.id_lembaga");
		$this->db->join("tbl_kecamatan", "tbl_kecamatan.kode_kec = tbl_lembaga.kode_kec", "LEFT");
		$this->db->join("tbl_desa", "tbl_lembaga.kode_desa = tbl_desa.kode_desa AND tbl_lembaga.kode_kec = tbl_desa.kode_kec", "LEFT");


		if (!empty($where)) {
			$this->db->where($where);
		}

		if (!empty($orderBy)) {
			$this->db->order_by($orderBy);
		}

		// $this->db->group_by('tbl_siswa.id_siswa');

		return $this->db->get();
	}

	function getAgeWhere($age, $where)
	{
		$this->db->select("COUNT(*) as total");
		$this->db->from("tbl_siswa");
		$this->db->join("tbl_lembaga", "tbl_lembaga.id = tbl_siswa.id_lembaga");
		$this->db->join("tbl_kecamatan", "tbl_kecamatan.kode_kec = tbl_lembaga.kode_kec", "LEFT");
		$this->db->join("tbl_desa", "tbl_lembaga.kode_desa = tbl_desa.kode_desa AND tbl_lembaga.kode_kec = tbl_desa.kode_kec", "LEFT");

		if (!empty($where)) {
			$this->db->where($where);
		}
		$this->db->where("DATE_FORMAT(NOW(), '%Y') - DATE_FORMAT(tanggal_lahir, '%Y') - (DATE_FORMAT(NOW(), '00-%m-%d') < DATE_FORMAT(tanggal_lahir, '00-%m-%d')) $age");

		return $this->db->get()->row()->total;
	}

	function insert($data)
	{
		return $this->db->insert("tbl_siswa", $data);
	}

	function update($data, $params)
	{
		$this->db->where($params);
		return $this->db->update('tbl_siswa', $data);;
	}

	function delete($params)
	{
		return $this->db->delete("tbl_siswa", $params);
	}

	function totalRow($where = NULL)
	{
		$this->db->from("tbl_siswa");
		if (!empty($where)) {
			$this->db->where($where);
		}
		return $this->db->count_all_results();
	}

	function datatable($limit, $start, $search, $paramsSearch, $columnSortName, $typeSort, $selectFilterName, $selectFilterValue)
	{
		$this->db->select("tbl_siswa.*, tbl_lembaga.nama_lembaga, concat(tbl_siswa.tempat_lahir,' ',tbl_siswa.tanggal_lahir) as ttl");
		$this->db->from("tbl_siswa");
		$this->db->join("tbl_lembaga", "tbl_siswa.id_lembaga = tbl_lembaga.id");

		if (!empty($selectFilterName) && !empty($selectFilterValue)) {
			$this->db->where($selectFilterName, $selectFilterValue);
		}

		if ($this->session->userdata("role") == "operator") {
			$this->db->where("tbl_siswa.id_lembaga", $this->encryption->decrypt(base64_decode($this->session->userdata("id_lembaga"))));
		}

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
