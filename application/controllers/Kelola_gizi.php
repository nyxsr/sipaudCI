	<?php
	defined('BASEPATH') or exit('No direct script access allowed');

	class Kelola_gizi extends CI_Controller
	{

		// waiting for implementation, if the 'client' want to make the table only gave the latest data in every name.
		// SELECT g.id_gizi, g.id_siswa, g.id_lembaga, g.tinggi_badan, g.berat_badan, g.lingkar_kepala, g.bmi, g.tanggal_input FROM `tbl_gizi` g INNER JOIN (SELECT id_siswa, max(tanggal_input) as MaxDate FROM tbl_gizi GROUP BY id_siswa) gm ON g.id_siswa = gm.id_siswa AND g.tanggal_input = gm.MaxDate;

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
			$id = $this->input->post('id');
			$charts = $this->M_Gizi->getDataGizi(["tbl_gizi.id_siswa" => $this->encryption->decrypt(base64_decode($id))])->result();
			$data['nama']		= null;
			$tinggi_badan		= [0];
			$berat_badan		= [0];
			$lingkar_kepala	= [0];
			foreach ($charts as $chart) {
				$data['nama']	= $chart->nama;
				array_push($tinggi_badan, intval($chart->tinggi_badan));
				array_push($berat_badan, intval($chart->berat_badan));
				array_push($lingkar_kepala, intval($chart->lingkar_kepala));
			}

			$data['tinggi_badan']		= json_encode($tinggi_badan);
			$data['berat_badan']		= json_encode($berat_badan);
			$data['lingkar_kepala']	= json_encode($lingkar_kepala);
			$this->load->view('Kelola_gizi/modalGrafik', $data);
		}
		public function modalTambah()
		{
			$id_lembaga =  $this->encryption->decrypt(base64_decode($this->session->userdata("id_lembaga")));
			$data['siswa'] = $this->M_Siswa->getLembagabySiswa(['tbl_lembaga.id' => $id_lembaga])->result_array();
			$this->load->view('Kelola_gizi/modalAdd', $data);
		}

		public function modalBMI()
		{
			$this->load->view('Kelola_gizi/modalBMI');
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
				$query = $this->M_Gizi->datatable($length, $start, $search, "s.nama", $columnName, $columnSortOrder, $selectFilterName, $selectFilterValue);
				$output['recordsTotal'] = $output['recordsFiltered'] = $query->num_rows();
			} else {
				$query = $this->M_Gizi->datatable($length, $start, $search, "s.nama", $columnName, $columnSortOrder, $selectFilterName, $selectFilterValue);
			}
			$nomor_urut = $start + 1;
			foreach ($query->result_array() as $dt) {

				if ($dt['bmi'] >= 30) {
					$statusBMI = "Obesitas";
					$color = "red";
					$textColor = "white";
					$tooltip = "anak memiliki BMI >= 30";
				} elseif ($dt['bmi'] <= 18.5) {
					$statusBMI = "Kurus";
					$color = "red";
					$textColor = "white";
					$tooltip = "anak memiliki BMI <= 18.5";
				} elseif ($dt['bmi'] >= 25) {
					$statusBMI = "Pra-Obesitas";
					$color = "yellow";
					$textColor = "black";
					$tooltip = "anak memiliki BMI <= 18.5";
				} else {
					$statusBMI = "Normal";
					$color = "green";
					$textColor = "white";
					$tooltip = "anak memiliki BMI antara 18.5 sampai 24.9";
				}

				$isiBMI = '<a href="javascript:void(0);" class="modalButton"  data-toggle="modal" data-target="#modal" data-type="BMI"><span class="badge" style="background-color:' . $color . ';color:' . $textColor . '" data-mdb-toggle="tooltip" title="Dikarenakan ' . $tooltip . '">' . $statusBMI . '</span></a>';

				$output['data'][] = array(
					$nomor_urut,
					!empty($dt['nama']) ? '<a href="javascript:void(0);" class="modalButton"  data-toggle="modal" data-target="#modal" data-type="grafik"  data-id="' . base64_encode($this->encryption->encrypt($dt['id_siswa'])) . '">' . $dt['nama'] . '</a>' : '-',
					!empty($dt['nama_lembaga']) ? $dt['nama_lembaga'] : '-',
					!empty($dt['tinggi_badan']) ? $dt['tinggi_badan'] . " cm" : '-',
					!empty($dt['berat_badan']) ? $dt['berat_badan'] . " kg" : '-',
					!empty($dt['lingkar_kepala']) ? $dt['lingkar_kepala'] . " cm" : '-',
					!empty($dt['tanggal_input']) ? date("d-M-Y", strtotime($dt['tanggal_input'])) : '-',
					!empty($dt['bmi']) ? $isiBMI : '-',
					'<div class="row">
						<div class="col-md-6 text-center">
							<a href="javascript:void(0);" class="text-success modalButton"  data-toggle="modal" data-target="#modal" data-type="edit" data-id="' . base64_encode($this->encryption->encrypt($dt['id_gizi'])) . '"><i class="fa fas fa-pencil" style="font-size:20px"></i></a>
						</div>
						<div class="col-md-6 text-center">
							<a href="javascript:void(0);" onclick="hapus(this.id);" class="text-danger" id="' . base64_encode($this->encryption->encrypt($dt['id_gizi'])) . '"><i class="fa fas fa-trash" style="font-size:20px"></i></a>
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

			$id_siswa 			= $this->input->post("id_siswa");
			$id_lembaga			= $this->M_Siswa->getWhere(["id_siswa" => $id_siswa])->row()->id_lembaga;
			$tinggi_badan		= $this->input->post("tinggi_badan");
			$berat_badan		= $this->input->post("berat_badan");
			$lingkar_kepala		= $this->input->post("lingkar_kepala");
			$tanggal_input		= $this->input->post("tanggal_input");
			$bmi				= $berat_badan / (($tinggi_badan / 10) * ($tinggi_badan / 10)) * 100;

			$data 				= array(
				'id_siswa'					=> $id_siswa,
				'id_lembaga'				=> $id_lembaga,
				'tinggi_badan'				=> $tinggi_badan,
				'berat_badan'				=> $berat_badan,
				'lingkar_kepala'			=> $lingkar_kepala,
				'tanggal_input'				=> $tanggal_input,
				'bmi'						=> $bmi,

			);

			$query	= $this->M_Gizi->insert($data);

			echo json_encode($query);
		}

		public function modalEdit()
		{
			$data['siswa'] = $this->M_Siswa->getLembagabySiswa()->result_array();
			$id = $this->input->post("id");
			$data['data'] = $this->M_Gizi->getWhere(["id_gizi" => $this->encryption->decrypt(base64_decode($id))])->row_array();
			$this->load->view('Kelola_gizi/modalEdit', $data);
		}


		function edit()
		{
			$id_gizi			= $this->encryption->decrypt(base64_decode($this->input->post("id_gizi")));
			$id_siswa 			= $this->input->post("id_siswa");
			$tinggi_badan		= $this->input->post("tinggi_badan");
			$berat_badan		= $this->input->post("berat_badan");
			$lingkar_kepala		= $this->input->post("lingkar_kepala");
			$tanggal_input		= $this->input->post("tanggal_input");
			$bmi				= $berat_badan / (($tinggi_badan / 10) * ($tinggi_badan / 10)) * 100;

			$params				= array(
				"id_gizi" => $id_gizi
			);

			$dataArray			= array(
				'id_siswa'					=> $id_siswa,
				'tinggi_badan'				=> $tinggi_badan,
				'berat_badan'				=> $berat_badan,
				'lingkar_kepala'			=> $lingkar_kepala,
				'tanggal_input'				=> $tanggal_input,
				'bmi'						=> $bmi,
			);


			$query 				= $this->M_Gizi->update($dataArray, $params);
			echo json_encode($query);
		}

		public function delete()
		{
			$id_gizi			= $this->encryption->decrypt(base64_decode($this->input->post("id_gizi")));
			$data				= array('id_gizi' => $id_gizi);
			$query				= $this->M_Gizi->delete($data);
			echo json_encode($query);
		}
	}
