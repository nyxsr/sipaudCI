<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kelola_Siswa extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		$this->load->model(['M_Siswa', 'M_Lembaga']);
		if (!$this->session->userdata('role')) {
			redirect('login');
		}

		if ($this->session->userdata('role') == "pimpinan") {
			redirect();
		}
	}

	function index()
	{
		$data['konten'] = "kelola_siswa/v_kelola_siswa";
		$data['judul'] = "Kelola Siswa";
		$this->load->view('v_template', $data);
	}

	function tgl_indonesia($tanggal)
	{
		$arrTanggal = explode("-", $tanggal);
		$arrBulan	= ["Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "Semptember", "Oktober", "November", "Desember"];
		$bulan		= intval($arrTanggal[1] - 1);
		return $arrTanggal[2] . " " . $arrBulan[$bulan] . " " . $arrTanggal[0];
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

		$selectFilterName = $_REQUEST['columns'][10]["name"];
		$selectFilterValue = $_REQUEST['columns'][10]['search']["value"];

		if ($this->session->userdata("role") == "operator") {
			$total = $this->M_Siswa->totalRow(['id_lembaga' => $this->encryption->decrypt(base64_decode($this->session->userdata("id_lembaga")))]);
		} else {
			$total = $this->M_Siswa->totalRow();
		}
		$output = array();
		$output['draw']	 = $draw;
		$output['recordsTotal'] = $output['recordsFiltered'] = $total;
		$output['data'] = array();

		if ($search != "") {
			$query = $this->M_Siswa->datatable($length, $start, $search, "tbl_siswa.nama", $columnName, $columnSortOrder, $selectFilterName, $selectFilterValue);
			$output['recordsTotal'] = $output['recordsFiltered'] = $query->num_rows();
		} else {
			$query = $this->M_Siswa->datatable($length, $start, $search, "tbl_siswa.nama", $columnName, $columnSortOrder, $selectFilterName, $selectFilterValue);
		}

		$nomor_urut = $start + 1;
		foreach ($query->result_array() as $dt) {
			$keluar = new DateTime($dt['tanggal_keluar']);
			$sekarang = new DateTime("now");
			$diff = $keluar > $sekarang;

			$output['data'][] = array(
				$nomor_urut,
				$dt['nama'],
				!empty($dt['NISN']) ? $dt['NISN'] : '-',
				!empty($dt['jenis_kelamin']) ? $dt['jenis_kelamin'] : '-',
				!empty($dt['tempat_lahir']) || !empty($dt['tanggal_lahir']) ? ["tempat" => $dt['tempat_lahir'], "tanggal" => $this->tgl_indonesia($dt['tanggal_lahir'])] : '-',
				!empty($dt['alamat']) ? $dt['alamat'] : '-',
				!empty($dt['nama_ortu']) ? $dt['nama_ortu'] : '-',
				!empty($dt['no_telp_ortu']) ? $dt['no_telp_ortu'] : '-',
				!empty($dt['pekerjaan_ortu']) ? $dt['pekerjaan_ortu'] : '-',
				!empty($dt['usia_adik']) ? $dt['usia_adik'] : '-',
				!empty($dt['nama_lembaga']) ? $dt['nama_lembaga'] : '-',
				!empty($dt['tanggal_keluar']) ? ($diff ? "<span class='badge badge-success'>Aktif</span>" : "<span class='badge badge-secondary'>Tidak Aktif</span>") : "<span class='badge badge-success'>Aktif</span>",
				'<div class="row">
					<div class="col-md-6 text-center">
						<a href="javascript:void(0);" class="text-success modalButton"  data-toggle="modal" data-target="#modal" data-type="edit" data-id="' . base64_encode($this->encryption->encrypt($dt['id_siswa'])) . '"><i class="fa fas fa-pencil"></i></a>
					</div>
					<div class="col-md-6 text-center">
						<a href="javascript:void(0);" onclick="hapus(this.id);" class="text-danger" id="' . base64_encode($this->encryption->encrypt($dt['id_siswa'])) . '"><i class="fa fas fa-trash"></i></a>
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
		$this->load->view('kelola_siswa/modalAdd', $data);
	}

	public function getLembaga()
	{
		echo json_encode($this->M_Lembaga->get()->result_array());
	}

	public function add()
	{
		$nama 				= $this->input->post("nama");
		$NISN 				= $this->input->post("NISN");
		$jenisKelamin 		= $this->input->post("jenisKelamin");
		$nama_ortu 			= $this->input->post("nama_ortu");
		$no_telp_ortu		= $this->input->post("no_telp_ortu");
		$pekerjaan_ortu		= $this->input->post("pekerjaan_ortu");
		$usia_adik			= $this->input->post("usia_adik");
		$nama_lembaga 		= $this->input->post("nama_lembaga");
		$alamat 			= $this->input->post("alamat");
		$tempat_lahir 		= $this->input->post("tempat_lahir");
		$tanggal_lahir 		= $this->input->post("tanggal_lahir");
		$tanggal_masuk 		= $this->input->post("tanggal_masuk");
		$tanggal_keluar 	= $this->input->post("tanggal_keluar") ? $this->input->post("tanggal_keluar") : NULL;

		$data 				= array(
			'nama'				=> $nama,
			'NISN'				=> $NISN,
			'jenis_kelamin'		=> $jenisKelamin,
			'nama_ortu'			=> $nama_ortu,
			'no_telp_ortu'		=> $no_telp_ortu,
			'pekerjaan_ortu'	=> $pekerjaan_ortu,
			'usia_adik'			=> $usia_adik,
			'alamat'			=> $alamat,
			'tempat_lahir'		=> $tempat_lahir,
			'tanggal_lahir'		=> $tanggal_lahir,
			'tanggal_masuk'		=> $tanggal_masuk,
			'tanggal_keluar'	=> $tanggal_keluar,
			'id_lembaga'		=> $nama_lembaga,
		);

		$query				= $this->M_Siswa->insert($data);

		echo json_encode($query);
	}

	public function modalEdit()
	{
		$id = $this->input->post("id");
		$data['data'] = $this->M_Siswa->getWhere(["id_siswa" => $this->encryption->decrypt(base64_decode($id))])->row_array();
		$data['dataLembaga'] = $this->M_Lembaga->get()->result_array();
		$this->load->view('kelola_siswa/modalEdit', $data);
	}


	function edit()
	{
		$id					= $this->encryption->decrypt(base64_decode($this->input->post("id")));

		$nama 				= $this->input->post("nama");
		$NISN				= $this->input->post("NISN");
		$jenisKelamin 		= $this->input->post("jenisKelamin");
		$nama_ortu 			= $this->input->post("nama_ortu");
		$no_telp_ortu		= $this->input->post("no_telp_ortu");
		$pekerjaan_ortu		= $this->input->post("pekerjaan_ortu");
		$usia_adik			= $this->input->post("usia_adik");
		$nama_lembaga 		= $this->input->post("nama_lembaga");
		$alamat 			= $this->input->post("alamat");
		$tempat_lahir 		= $this->input->post("tempat_lahir");
		$tanggal_lahir 		= $this->input->post("tanggal_lahir");
		$tanggal_masuk 		= $this->input->post("tanggal_masuk");
		$tanggal_keluar 	= $this->input->post("tanggal_keluar") ? $this->input->post("tanggal_keluar") : NULL;

		$params				= array(
			"id_siswa" => $id
		);

		$dataArray			= array(
			'nama'				=> $nama,
			'NISN'				=> $NISN,
			'jenis_kelamin'		=> $jenisKelamin,
			'nama_ortu'			=> $nama_ortu,
			'no_telp_ortu'		=> $no_telp_ortu,
			'pekerjaan_ortu'	=> $pekerjaan_ortu,
			'usia_adik'			=> $usia_adik,
			'alamat'			=> $alamat,
			'tempat_lahir'		=> $tempat_lahir,
			'tanggal_lahir'		=> $tanggal_lahir,
			'tanggal_masuk'		=> $tanggal_masuk,
			'tanggal_keluar'	=> $tanggal_keluar,
			'id_lembaga'		=> $nama_lembaga,
		);


		$query 				= $this->M_Siswa->update($dataArray, $params);
		echo json_encode($query);
	}

	public function delete()
	{
		$id				= $this->encryption->decrypt(base64_decode($this->input->post("id")));
		$data				= array('id_siswa' => $id);
		$query				= $this->M_Siswa->delete($data);
		echo json_encode($query);
	}
}
