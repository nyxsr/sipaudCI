<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		$this->load->model(['M_Login', 'M_Lembaga']);
	}

	function index()
	{
		$this->cekUser();

		$data['konten'] = "v_login";
		$data['judul'] = "Login Page";
		$this->load->view('v_template_login', $data);
	}

	function cekUser()
	{
		if ($this->session->userdata('role')) {
			redirect();
		}
	}

	function proses()
	{
		$this->cekUser();

		$user = $this->M_Login->login();
		$output = "";
		if ($user != FALSE) {
			if ($user["role"] == "operator") {
				$where = ["id_user" => $user["id"]];

				$getIdLembaga = $this->M_Lembaga->getWhere($where)->row_array();

				$this->session->set_userdata(["id_lembaga" => base64_encode($this->encryption->encrypt($getIdLembaga['id']))]);
				$this->session->set_userdata(["nama_lembaga" => $getIdLembaga['nama_lembaga']]);
				$user = TRUE;
			} else if ($user["role"] == "admin" || $user["role"] == "pimpinan") {
				$user = TRUE;
			}
		}

		if ($user === TRUE) {
			$output = "ada";
		} else {
			$output = "tidak_ada";
		}


		echo json_encode($output);
	}

	function cek_username()
	{
		$this->cekUser();

		$output = $this->M_Login->cek();
		echo json_encode($output);
	}

	function logout()
	{
		$this->session->sess_destroy();
		redirect(base_url());
	}
}
