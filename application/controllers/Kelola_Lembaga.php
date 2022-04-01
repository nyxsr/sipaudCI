<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kelola_Lembaga extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		$this->load->model(['M_Lembaga', 'M_Kecamatan', 'M_Desa']);
		if (!$this->session->userdata('role')) {
			redirect('login');
		}

		if ($this->session->userdata('role') == "pimpinan") {
			redirect('/laporan');
		}
	}

	function index()
	{
		if ($this->session->userdata("role") == "operator") {
			$data['konten'] 	= "kelola_lembaga/v_profil_lembaga";
			$data['judul'] 		= "Lihat Profil Lembaga";
			$data['lembaga']	= $this->M_Lembaga->getLembaga(["id" => $this->encryption->decrypt(base64_decode($this->session->userdata("id_lembaga")))])->row();

			$this->load->view('v_template', $data);
		} else {
			$data['konten'] = "kelola_lembaga/v_kelola_lembaga";
			$data['judul'] = "Kelola Lembaga";
			$this->load->view('v_template', $data);
		}
	}

	function profil_lembaga($id)
	{
		$data['konten'] 	= "kelola_lembaga/v_profil_lembaga";
		$data['judul'] 		= "Lihat Profil Lembaga";
		$data['lembaga']	= $this->M_Lembaga->getLembaga(["id" => $this->encryption->decrypt(base64_decode($id))])->row();
		$this->load->view('v_template', $data);
	}

	function edit_profil_lembaga($id)
	{

		$data['konten'] 	= "kelola_lembaga/v_edit_profil_lembaga";
		$data['judul'] 		= "Edit Profil Lembaga";
		$data['kecamatan']	= $this->M_Kecamatan->get()->result();
		$data['desa']		= $this->M_Desa->get()->result();
		$data['lembaga']	= $this->M_Lembaga->getLembaga(["id" => $this->encryption->decrypt(base64_decode($id))])->row();


		$this->load->view('v_template', $data);
	}

	function getDesa()
	{
		$kode_kec 			= $this->input->post('kode_kec');
		$data['desa']		= $this->M_Desa->getWhereKecId($kode_kec)->result();
		echo json_encode($data);
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

		$total = $this->M_Lembaga->totalRow();
		$output = array();
		$output['draw']	 = $draw;
		$output['recordsTotal'] = $output['recordsFiltered'] = $total;
		$output['data'] = array();

		if ($search != "") {
			$query = $this->M_Lembaga->datatable($length, $start, $search, "tbl_lembaga.nama_lembaga", $columnName, $columnSortOrder);
			$output['recordsTotal'] = $output['recordsFiltered'] = $query->num_rows();
		} else {
			$query = $this->M_Lembaga->datatable($length, $start, $search, "tbl_lembaga.nama_lembaga", $columnName, $columnSortOrder);
		}

		$nomor_urut = $start + 1;
		foreach ($query->result_array() as $dt) {

			$output['data'][] = array(
				$nomor_urut,
				!empty($dt['npsn']) ? $dt['npsn'] : "-",
				$dt['nama_lembaga'],
				!empty($dt['alamat_lembaga']) && !empty($dt['kode_kec']) && !empty($dt['kode_desa']) ? 'Kec. ' . $dt['kecamatan'] . ', Desa ' . substr($dt['desa'], 0, 1) . substr(strtolower($dt['desa'] . ', '), 1, -1) . ' ' . $dt['alamat_lembaga'] : '-',
				!empty($dt['pengelompokan']) ? $dt['pengelompokan'] : '-',
				!empty($dt['tahun_berdiri']) ? $dt['tahun_berdiri'] : '-',
				!empty($dt['kepala_sekolah']) ? $dt['kepala_sekolah'] : '-',
				!empty($dt['status_akreditasi']) ? $dt['status_akreditasi'] : '-',
				$dt['username'],
				'<a href="' . base_url("Kelola_Lembaga/profil_lembaga/" . base64_encode($this->encryption->encrypt($dt["id"]))) . '"><i class="fa fas fa-eye"></i></a>',
			);
			$nomor_urut++;
		}

		echo json_encode($output);
	}



	function edit()
	{
		$id					= $this->encryption->decrypt(base64_decode($this->input->post("simpan")));
		$image				= $this->input->post("nama_foto") == "image_placeholder.jpg" ? "" : $this->input->post("nama_foto");

		$npsn 				= $this->input->post("npsn");
		$nama_lembaga 		= $this->input->post("nama_lembaga");
		$kecamatan 			= $this->input->post("kecamatan");
		$desa 				= $this->input->post("desa");
		$alamat_lembaga 	= $this->input->post("alamat_lembaga");
		$pengelompokan 		= $this->input->post("pengelompokan");
		$tahun_berdiri 		= $this->input->post("tahun_berdiri");
		$kepala_sekolah 	= $this->input->post("kepala_sekolah");
		$tahun_akreditasi 	= $this->input->post("tahun_akreditasi");
		$status_akreditasi 	= $this->input->post("status_akreditasi");
		$latitude 			= $this->input->post("latitude");
		$longitude 			= $this->input->post("longitude");

		$params				= array(
			"id" => $id
		);

		$dataArray			= array(
			"npsn"				=>	$npsn,
			"nama_lembaga"		=>	$nama_lembaga,
			"alamat_lembaga"	=>	$alamat_lembaga,
			"kode_kec"			=>	$kecamatan,
			"kode_desa"			=>	$desa,
			"pengelompokan"		=>	$pengelompokan,
			"tahun_berdiri"		=>	$tahun_berdiri,
			"kepala_sekolah"	=>	$kepala_sekolah,
			"tahun_akreditasi"	=>	$tahun_akreditasi,
			"status_akreditasi"	=>	$status_akreditasi,
			"latitude"			=>	$latitude,
			"longitude"			=>	$longitude
		);

		$config['upload_path']          = './assets/upload/';
		$config['allowed_types']        = 'gif|jpg|png|jpeg';
		$config['max_size']             = 1000;
		// $config['max_width']            = 1024;
		// $config['max_height']           = 768;
		$config['encrypt_name']          = TRUE;

		$this->load->library('upload', $config);


		if (!$this->upload->do_upload('image')) {

			if (!empty($this->upload->data('file_name'))) {
				$this->session->set_flashdata('message', 'Gagal! file tidak valid' . $this->upload->display_errors());
				redirect('Kelola_Lembaga/edit_profil_lembaga/' . $this->input->post("simpan"));
			}
		} else {
			$dataArray['foto_lembaga'] = $this->upload->data('file_name');
			unlink("./assets/upload/" . $image);
		}

		$query 				= $this->M_Lembaga->update($dataArray, $params);
		if ($query) {
			$this->session->set_flashdata('message', 'Berhasil mengubah data Lembaga!');
		} else {
			$this->session->set_flashdata('message', 'Gagal mengubah data Lembaga!');
		}


		if ($this->session->userdata("role") == "operator") {
			redirect();
		} else {
			redirect('Kelola_Lembaga/edit_profil_lembaga/' . $this->input->post("simpan"));
		}
	}
}
