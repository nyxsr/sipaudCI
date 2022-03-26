<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kelola_Sarana extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		$this->load->model(['M_Sarana', 'M_Lembaga']);
		if (!$this->session->userdata('role')) {
			redirect('login');
		}

		if ($this->session->userdata('role') == "pimpinan") {
			redirect();
		}
	}

	function index()
	{
		$data['konten'] = "kelola_sarana/v_kelola_sarana";
		$data['judul'] = "Kelola Sarana";
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

		$selectFilterName = $_REQUEST['columns'][9]["name"];
		$selectFilterValue = $_REQUEST['columns'][9]['search']["value"];

		if ($this->session->userdata("role") == "operator") {
			$total = $this->M_Sarana->totalRow(['id_lembaga' => $this->encryption->decrypt(base64_decode($this->session->userdata("id_lembaga")))]);
		} else {
			$total = $this->M_Sarana->totalRow();
		}
		$output = array();
		$output['draw']	 = $draw;
		$output['recordsTotal'] = $output['recordsFiltered'] = $total;
		$output['data'] = array();

		if ($search != "") {
			$query = $this->M_Sarana->datatable($length, $start, $search, "tbl_sarana.nama", $columnName, $columnSortOrder, $selectFilterName, $selectFilterValue);
			$output['recordsTotal'] = $output['recordsFiltered'] = $query->num_rows();
		} else {
			$query = $this->M_Sarana->datatable($length, $start, $search, "tbl_sarana.nama", $columnName, $columnSortOrder, $selectFilterName, $selectFilterValue);
		}

		$nomor_urut = $start + 1;
		foreach ($query->result_array() as $dt) {

			$output['data'][] = array(
				$nomor_urut,
				!empty($dt['APEL_perosotan']) ? 'Tersedia' : 'Tidak Tersedia',
				!empty($dt['APEL_jungkitan']) ? 'Tersedia' : 'Tidak Tersedia',
				!empty($dt['APEL_ayunan']) ? 'Tersedia' : 'Tidak Tersedia',
				!empty($dt['APEL_bola_dunia']) ? 'Tersedia' : 'Tidak Tersedia',
				!empty($dt['APED_sensori_motor']) ? 'Tersedia' : 'Tidak Tersedia',
				!empty($dt['APED_pembangunan']) ? 'Tersedia' : 'Tidak Tersedia',
				!empty($dt['APED_bermain_peran']) ? 'Tersedia' : 'Tidak Tersedia',
				!empty($dt['APED_imtaq']) ? 'Tersedia' : 'Tidak Tersedia',
				!empty($dt['nama_lembaga']) ? $dt['nama_lembaga'] : '-',
				'<div class="row">
					<div class="col-md-6 text-center">
						<a href="javascript:void(0);" class="text-success modalButton"  data-toggle="modal" data-target="#modal" data-type="edit" data-id="' . base64_encode($this->encryption->encrypt($dt['id_sarana'])) . '"><i class="fa fas fa-pencil"></i></a>
					</div>
					<div class="col-md-6 text-center">
						<a href="javascript:void(0);" onclick="hapus(this.id);" class="text-danger" id="' . base64_encode($this->encryption->encrypt($dt['id_sarana'])) . '"><i class="fa fas fa-trash"></i></a>
					</div>
				</div>',
			);
			$nomor_urut++;
		}

		echo json_encode($output);
	}

	public function modalTambah()
	{
		$data['data'] = $this->M_Lembaga->getExceptSarana()->result_array();
		$this->load->view('kelola_sarana/modalAdd', $data);
	}

	public function getLembaga()
	{
		echo json_encode($this->M_Lembaga->get()->result_array());
	}

	public function add()
	{
		$id_lembaga			= $this->input->post("id_lembaga");
		$APEL_perosotan		= $this->input->post("APEL_perosotan");
		$APEL_jungkitan		= $this->input->post("APEL_jungkitan");
		$APEL_ayunan		= $this->input->post("APEL_ayunan");
		$APEL_bola_dunia	= $this->input->post("APEL_bola_dunia");
		$APED_sensori_motor	= $this->input->post("APED_sensori_motor");
		$APED_pembangunan	= $this->input->post("APED_pembangunan");
		$APED_bermain_peran	= $this->input->post("APED_bermain_peran");
		$APED_imtaq 		= $this->input->post("APED_imtaq");

		$data 				= array(
			'id_lembaga'			=> $id_lembaga,
			'APEL_perosotan'		=> $APEL_perosotan,
			'APEL_jungkitan'		=> $APEL_jungkitan,
			'APEL_ayunan'			=> $APEL_ayunan,
			'APEL_bola_dunia'		=> $APEL_bola_dunia,
			'APED_sensori_motor'	=> $APED_sensori_motor,
			'APED_pembangunan'		=> $APED_pembangunan,
			'APED_bermain_peran'	=> $APED_bermain_peran,
			'APED_imtaq'			=> $APED_imtaq,

		);

		$query				= $this->M_Sarana->insert($data);

		echo json_encode($query);
	}

	public function modalEdit()
	{
		$id = $this->input->post("id");
		$data['data'] = $this->M_Sarana->getWhere(["id_sarana" => $this->encryption->decrypt(base64_decode($id))])->row_array();
		$data['dataLembaga'] = $this->M_Lembaga->getExceptSarana($this->encryption->decrypt(base64_decode($id)))->result_array();
		$this->load->view('kelola_sarana/modalEdit', $data);
	}


	function edit()
	{
		$id					= $this->encryption->decrypt(base64_decode($this->input->post("id")));

		$id_lembaga			= $this->input->post("id_lembaga");
		$APEL_perosotan		= $this->input->post("APEL_perosotan");
		$APEL_jungkitan		= $this->input->post("APEL_jungkitan");
		$APEL_ayunan		= $this->input->post("APEL_ayunan");
		$APEL_bola_dunia 	= $this->input->post("APEL_bola_dunia");
		$APED_sensori_motor	= $this->input->post("APED_sensori_motor");
		$APED_pembangunan 	= $this->input->post("APED_pembangunan");
		$APED_bermain_peran	= $this->input->post("APED_bermain_peran");
		$APED_imtaq		    = $this->input->post("APED_imtaq");

		$params				= array(
			"id_sarana" => $id
		);

		$dataArray			= array(
			'id_lembaga'			=> $id_lembaga,
			'APEL_perosotan'		=> $APEL_perosotan,
			'APEL_jungkitan'		=> $APEL_jungkitan,
			'APEL_ayunan'			=> $APEL_ayunan,
			'APEL_bola_dunia'		=> $APEL_bola_dunia,
			'APED_sensori_motor'	=> $APED_sensori_motor,
			'APED_pembangunan'		=> $APED_pembangunan,
			'APED_bermain_peran'	=> $APED_bermain_peran,
			'APED_imtaq'			=> $APED_imtaq,

		);


		$query 				= $this->M_Sarana->update($dataArray, $params);
		echo json_encode($query);
	}

	public function delete()
	{
		$id				= $this->encryption->decrypt(base64_decode($this->input->post("id")));

		$data				= array('id_sarana' => $id);
		$query				= $this->M_Sarana->delete($data);
		echo json_encode($query);
	}
}
