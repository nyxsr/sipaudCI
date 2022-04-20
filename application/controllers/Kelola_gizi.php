	<?php
	defined('BASEPATH') or exit('No direct script access allowed');

	class Kelola_gizi extends CI_Controller
	{

		function __construct()
		{
			parent::__construct();
			$this->load->model(['M_Gizi', 'M_Lembaga', 'M_Siswa']);
			if (!$this->session->userdata('role')) {
				redirect('login');
			}

			if ($this->session->userdata('role') == "pimpinan") {
				redirect();
			}
		}

		public function index()
		{
			$data['konten'] = "Kelola_gizi/v_kelola_gizi";
			$data['judul'] = "Kelola Gizi Anak";
			$this->load->view('v_template', $data);
		}

		public function grafik()
		{
			$data['konten'] = "Kelola_gizi/v_grafik";
			$data['judul'] = "Grafik Perkembangan";
			$this->load->view('v_template', $data);
		}
		public function modalTambah()
		{
			$data['data'] = $this->M_Siswa->get()->result_array();
			$this->load->view('Kelola_gizi/modalAdd', $data);
		}

		function datatable()
		{
			date_default_timezone_set('Asia/Jakarta');

			$draw = $_REQUEST['draw'];
			$length = $_REQUEST['length'];
			$start = $_REQUEST['start'];
			$search = $_REQUEST['search']["value"];
			$columnIndex = $_REQUEST['order'][0]['column']; // Column index
			$columnName = $_REQUEST['columns'][$columnIndex]['name']; // Column name
			$columnSortOrder = $_REQUEST['order'][0]['dir']; // asc or desc
			$selectFilterName = $_REQUEST['columns'][1]["name"];
			$selectFilterValue = $_REQUEST['columns'][1]['search']["value"];
			$total = $this->M_Gizi->totalRow();
			$output = array();
			$output['draw']	 = $draw;
			$output['recordsTotal'] = $output['recordsFiltered'] = $total;
			$output['data'] = array();

			if ($search != "") {
				$query = $this->M_Gizi->datatable($length, $start, $search, "tbl_siswa.nama", $columnName, $columnSortOrder, $selectFilterName, $selectFilterValue);
				$output['recordsTotal'] = $output['recordsFiltered'] = $query->num_rows();
			} else {
				$query = $this->M_Gizi->datatable($length, $start, $search, "tbl_siswa.nama", $columnName, $columnSortOrder, $selectFilterName, $selectFilterValue);
			}

			$nomor_urut = $start + 1;
			foreach ($query->result_array() as $dt) {
				$output['data'][] = array(
					$nomor_urut,
					!empty($dt['nama']) ? $dt['nama'] : '-',
					!empty($dt['nama_lembaga']) ? $dt['nama_lembaga'] : '-',
					!empty($dt['tinggi_badan']) ? $dt['tinggi_badan'] : '-',
					!empty($dt['berat_badan']) ? $dt['berat_badan'] : '-',
					!empty($dt['lingkar_kepala']) ? $dt['lingkar_kepala'] : '-',
					'<div class="row">
					<div class="col-md-6 text-center">
						<a href="javascript:void(0);" class="text-success modalButton"  data-toggle="modal" data-target="#modal" data-type="edit" data-id="' . base64_encode($this->encryption->encrypt($dt['id_siswa'])) . '"><i class="fa fas fa-pencil"></i></a>
					</div>
					<div class="col-md-6 text-center">
						<a href="javascript:void(0);" onclick="hapus(this.id);" class="text-danger" id="' . base64_encode($this->encryption->encrypt($dt['id_gizi'])) . '"><i class="fa fas fa-trash"></i></a>
					</div>
				</div>',
				);
				$nomor_urut++;
			}

			echo json_encode($output);
		}

		public function getLembaga()
		{
			echo json_encode($this->M_Gizi->get()->result_array());
		}

		public function add()
		{
			$nama 				= $this->input->post("nama");
			$nama_lembaga		= $this->input->post("nama_lembaga");
			$tinggi_badan		= $this->input->post("tinggi_badan");
			$berat_badan		= $this->input->post("berat_badan");
			$lingkar_kepala		= $this->input->post("lingkar_kepala");

			$data 				= array(
				'nama'						=> $nama,
				'nama_lembaga'				=> $nama_lembaga,
				'tinggi_badan'				=> $tinggi_badan,
				'berat_badan'				=> $berat_badan,
				'lingkar_kepala'			=> $lingkar_kepala,

			);

			$query				= $this->M_Gizi->insert($data);

			echo json_encode($query);
		}

		public function modalEdit()
		{
			$id = $this->input->post("id_gizi");
			$data['data'] = $this->M_Gizi->getWhere(["id_gizi" => $this->encryption->decrypt(base64_decode($id))])->row_array();
			$data['dataLembaga'] = $this->M_Lembaga->get()->result_array();
			$data['dataSiswa'] = $this->M_Siswa->get()->result_array();
			$this->load->view('Kelola_gizi/modalEdit', $data);
		}


		function edit()
		{
			$id			= $this->encryption->decrypt(base64_decode($this->input->post("id")));

			$id_gizi			= $this->input->post("id_gizi");
			$nama_siswa 		= $this->input->post("nama_siswa");
			$nama_lembaga		= $this->input->post("nama_lembaga");
			$tinggi_badan		= $this->input->post("tinggi_badan");
			$berat_badan		= $this->input->post("berat_badan");
			$lingkar_kepala		= $this->input->post("lingkar_kepala");

			$params				= array(
				"id_gizi" => $id
			);

			$dataArray			= array(
				'id_gizi'					=> $id_gizi,
				'nama_siswa'				=> $nama_siswa,
				'nama_lembaga'				=> $nama_lembaga,
				'tinggi_badan'				=> $tinggi_badan,
				'berat_badan'				=> $berat_badan,
				'lingkar_kepala'			=> $lingkar_kepala,
			);


			$query 				= $this->M_Gizi->update($dataArray, $params);
			echo json_encode($query);
		}

		public function delete()
		{
			$id					= $this->encryption->decrypt(base64_decode($this->input->post("id")));
			$data				= array('id_gizi' => $id);
			$query				= $this->M_Gizi->delete($data);
			echo json_encode($query);
		}
	}
