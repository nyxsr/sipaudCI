<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kelola_Bantuan extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		$this->load->model(['M_Bantuan', 'M_Lembaga']);
		if (!$this->session->userdata('role')) {
			redirect('login');
		}

		if ($this->session->userdata('role') == "pimpinan") {
			redirect();
		}
	}

	function index()
	{
		$data['konten'] = "kelola_bantuan/v_kelola_bantuan";
		$data['judul'] = "Kelola Bantuan";
		$this->load->view('v_template', $data);
	}
	function datatable()
	{
		$draw = $_REQUEST['draw'];
		$length = $_REQUEST['length'];
		$start = $_REQUEST['start'];
		$search = $_REQUEST['search']["value"];
		$columnIndex = $_REQUEST['order'][0]['column']; // Column index
		$columnName = $_REQUEST['columns'][$columnIndex]['name']; // Column name
		$columnSortOrder = $_REQUEST['order'][0]['dir']; // asc or desc

		$selectFilterName = $_REQUEST['columns'][6]["name"];
		$selectFilterValue = $_REQUEST['columns'][6]['search']["value"];

		if ($this->session->userdata("role") == "operator") {
			$total = $this->M_Bantuan->totalRow(['id_lembaga' => $this->encryption->decrypt(base64_decode($this->session->userdata("id_lembaga")))]);
		} else {
			$total = $this->M_Bantuan->totalRow();
		}
		$output = array();
		$output['draw']	 = $draw;
		$output['recordsTotal'] = $output['recordsFiltered'] = $total;
		$output['data'] = array();

		if ($search != "") {
			$query = $this->M_Bantuan->datatable($length, $start, $search, "tbl_bantuan.nama", $columnName, $columnSortOrder, $selectFilterName, $selectFilterValue);
			$output['recordsTotal'] = $output['recordsFiltered'] = $query->num_rows();
		} else {
			$query = $this->M_Bantuan->datatable($length, $start, $search, "tbl_bantuan.nama", $columnName, $columnSortOrder, $selectFilterName, $selectFilterValue);
		}

		$nomor_urut = $start + 1;
		foreach ($query->result_array() as $dt) {

			$output['data'][] = array(
				$nomor_urut,
				$dt['tahun'],
				!empty($dt['jenis_bantuan']) ? $dt['jenis_bantuan'] : '-',
				!empty($dt['jumlah']) ? $dt['jumlah'] : '-',
				!empty($dt['sumber_bantuan']) ? $dt['sumber_bantuan'] : '-',
				!empty($dt['keterangan_bantuan']) ? $dt['keterangan_bantuan'] : '-',
				!empty($dt['nama_lembaga']) ? $dt['nama_lembaga'] : '-',
				'<div class="row">
					<div class="col-md-6 text-center">
						<a href="javascript:void(0);" class="text-success modalButton"  data-toggle="modal" data-target="#modal" data-type="edit" data-id="' . base64_encode($this->encryption->encrypt($dt['id_bantuan'])) . '"><i class="fa fas fa-pencil"></i></a>
					</div>
					<div class="col-md-6 text-center">
						<a href="javascript:void(0);" onclick="hapus(this.id);" class="text-danger" id="' . base64_encode($this->encryption->encrypt($dt['id_bantuan'])) . '"><i class="fa fas fa-trash"></i></a>
					</div>
				</div>',
			);
			$nomor_urut++;
		}

		echo json_encode($output);
	}

	public function modalTambah()
	{
		$data['data'] = $this->M_Lembaga->get()->result_array();
		$this->load->view('kelola_bantuan/modalAdd', $data);
	}

	public function getLembaga()
	{
		echo json_encode($this->M_Lembaga->get()->result_array());
	}

	public function add()
	{
		$tahun 				= $this->input->post("tahun");
		$jenis_bantuan 		= $this->input->post("jenis_bantuan");
		$jumlah 			= $this->input->post("jumlah");
		$sumber_bantuan		= $this->input->post("sumber_bantuan");
		$keterangan_bantuan = $this->input->post("keterangan_bantuan");
		$nama_lembaga		= $this->input->post("nama_lembaga");

		$data 				= array(
			'tahun'				=> $tahun,
			'jenis_bantuan'		=> $jenis_bantuan,
			'jumlah'			=> $jumlah,
			'sumber_bantuan'	=> $sumber_bantuan,
			'keterangan_bantuan' => $keterangan_bantuan,
			'id_lembaga'		=> $nama_lembaga,
		);

		$query				= $this->M_Bantuan->insert($data);

		echo json_encode($query);
	}

	public function modalEdit()
	{
		$id = $this->input->post("id");
		$data['data'] = $this->M_Bantuan->getWhere(["id_bantuan" => $this->encryption->decrypt(base64_decode($id))])->row_array();
		$data['dataLembaga'] = $this->M_Lembaga->get()->result_array();
		$this->load->view('kelola_bantuan/modalEdit', $data);
	}


	function edit()
	{
		$id					= $this->encryption->decrypt(base64_decode($this->input->post("id")));

		$tahun 				= $this->input->post("tahun");
		$jenis_bantuan 		= $this->input->post("jenis_bantuan");
		$jumlah 			= $this->input->post("jumlah");
		$sumber_bantuan		= $this->input->post("sumber_bantuan");
		$keterangan_bantuan	= $this->input->post("keterangan_bantuan");
		$nama_lembaga		= $this->input->post("nama_lembaga");

		$params				= array(
			"id_bantuan" => $id
		);

		$dataArray			= array(
			'tahun'				=> $tahun,
			'jenis_bantuan'		=> $jenis_bantuan,
			'jumlah'			=> $jumlah,
			'sumber_bantuan'	=> $sumber_bantuan,
			'keterangan_bantuan' => $keterangan_bantuan,
			'id_lembaga'		=> $nama_lembaga,
		);


		$query 				= $this->M_Bantuan->update($dataArray, $params);
		echo json_encode($query);
	}

	public function delete()
	{
		$id				= $this->encryption->decrypt(base64_decode($this->input->post("id")));

		$data				= array('id_bantuan' => $id);
		$query				= $this->M_Bantuan->delete($data);
		echo json_encode($query);
	}
}
