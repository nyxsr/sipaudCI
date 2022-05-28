<?php if (!defined('BASEPATH')) exit('No direct script access allowed');


class M_Gizi extends CI_Model
{
	function get()
	{
		return $this->db->get("tbl_gizi");
	}

	function getDataGizi($where = NULL)
	{
		$this->db->select("*");
		$this->db->from("tbl_gizi");
		$this->db->join("tbl_siswa", "tbl_gizi.id_siswa = tbl_siswa.id_siswa");
		if (!empty($where)) {
			$this->db->where($where);
		}

		return $this->db->get();
	}

	function getWhere($where = NULL, $orderBy = NULL)
	{
		$this->db->select("*");
		$this->db->from("tbl_gizi");
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
		// $this->db->select("*");
		// $this->db->from("tbl_gizi");
		// $this->db->join("SELECT tbl_siswa.nama, tbl_lembaga.nama_lembaga , tbl_gizi.tinggi_badan, tbl_gizi.berat_badan, tbl_gizi.lingkar_kepala FROM `tbl_gizi` JOIN tbl_siswa ON tbl_siswa.id_siswa = tbl_gizi.id_siswa JOIN tbl_lembaga ON tbl_lembaga.id = tbl_gizi.id_lembaga");

		$this->db->select("tbl_siswa.nama, tbl_lembaga.nama_lembaga , tbl_gizi.tinggi_badan, tbl_gizi.berat_badan, tbl_gizi.lingkar_kepala");
		$this->db->from("tbl_gizi");
		$this->db->join("tbl_siswa", "tbl_siswa.id_siswa = tbl_gizi.id_siswa");
		$this->db->join("tbl_lembaga", "tbl_lembaga.id = tbl_gizi.id_lembaga");

		if (!empty($where)) {
			$this->db->where($where);
		}

		if (!empty($orderBy)) {
			$this->db->order_by($orderBy);
		}

		// $this->db->group_by('tbl_siswa.id_siswa');

		return $this->db->get();
	}

	// function getAgeWhere($age, $where)
	// {
	// 	$this->db->select("COUNT(*) as total");
	// 	$this->db->from("tbl_gizi");
	// 	$this->db->join("tbl_lembaga", "tbl_lembaga.id = tbl_siswa.id_lembaga");
	// 	$this->db->join("tbl_kecamatan", "tbl_kecamatan.kode_kec = tbl_lembaga.kode_kec", "LEFT");
	// 	$this->db->join("tbl_desa", "tbl_lembaga.kode_desa = tbl_desa.kode_desa AND tbl_lembaga.kode_kec = tbl_desa.kode_kec", "LEFT");

	// 	if (!empty($where)) {
	// 		$this->db->where($where);
	// 	}
	// 	$this->db->where("DATE_FORMAT(NOW(), '%Y') - DATE_FORMAT(tanggal_lahir, '%Y') - (DATE_FORMAT(NOW(), '00-%m-%d') < DATE_FORMAT(tanggal_lahir, '00-%m-%d')) $age");

	// 	return $this->db->get()->row()->total;
	// }

	function insert($data)
	{
		return $this->db->insert("tbl_gizi", $data);
	}

	function update($data, $params)
	{
		$this->db->where($params);
		return $this->db->update('tbl_gizi', $data);;
	}

	function delete($params)
	{
		return $this->db->delete("tbl_gizi", $params);
	}

	function totalRow($where = NULL)
	{
		$this->db->from("tbl_gizi");
		if (!empty($where)) {
			$this->db->where($where);
		}
		return $this->db->count_all_results();
	}

	function datatable($limit, $start, $search, $paramsSearch, $columnSortName, $typeSort, $selectFilterName, $selectFilterValue)
	{
		// SELECT g.id_gizi, g.id_siswa, g.id_lembaga, g.tinggi_badan, g.berat_badan, g.lingkar_kepala, g.bmi, g.tanggal_input, lemb.nama_lembaga, s.nama FROM `tbl_gizi` g INNER JOIN (SELECT id_siswa, max(tanggal_input) as MaxDate FROM tbl_gizi GROUP BY id_siswa) gm ON g.id_siswa = gm.id_siswa AND g.tanggal_input = gm.MaxDate JOIN tbl_lembaga lemb ON g.id_lembaga = lemb.id JOIN tbl_siswa s ON s.id_siswa = g.id_siswa;
		$this->db->select("g.id_gizi, g.id_siswa, g.id_lembaga, g.tinggi_badan, g.berat_badan, g.lingkar_kepala, g.bmi, g.tanggal_input, lemb.nama_lembaga, s.nama");
		$this->db->from("tbl_gizi g");
		$this->db->join("(SELECT id_siswa, max(tanggal_input) as MaxDate FROM tbl_gizi GROUP BY id_siswa) gm", "g.id_siswa = gm.id_siswa AND g.tanggal_input = gm.MaxDate");
		$this->db->join("tbl_lembaga lemb", "g.id_lembaga = lemb.id");
		$this->db->join("tbl_siswa s", "s.id_siswa = g.id_siswa");

		// $this->db->select("tbl_siswa.nama, tbl_lembaga.nama_lembaga , tbl_gizi.*");

		// $this->db->from("tbl_gizi");
		// $this->db->join("tbl_siswa", "tbl_siswa.id_siswa = tbl_gizi.id_siswa");
		// $this->db->join("tbl_lembaga", "tbl_lembaga.id = tbl_siswa.id_lembaga");

		if (!empty($selectFilterName) && !empty($selectFilterValue)) {
			$this->db->where($selectFilterName, $selectFilterValue);
		}

		if ($this->session->userdata("role") == "operator") {
			$this->db->where("s.id_lembaga", $this->encryption->decrypt(base64_decode($this->session->userdata("id_lembaga"))));
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
