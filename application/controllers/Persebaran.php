<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Persebaran extends CI_Controller {

	function __construct() {
		parent::__construct();
		$this->load->model(['M_Lembaga']);
		if(!$this->session->userdata('role')){
			redirect('login');
		}
	}

	function index()
	{
		$data['konten'] = "v_persebaran";
        $data['judul'] = "Persebaran";
		$data['lembaga'] = $this->M_Lembaga->get()->result_array();
		$this->load->view('v_template',$data);
	}

	public function getData(){
		$id_lembaga = $this->input->post("id_lembaga");
		$wherePersebaran = $this->input->post("id_lembaga") ? ['id' => $id_lembaga, 'latitude !=' => NULL] : ['latitude !=' => NULL];

		$data = [
			
			
			'persebaran' => $this->M_Lembaga->getWhere($wherePersebaran,NULL, 'tbl_kecamatan', 'tbl_kecamatan.kode_kec = tbl_lembaga.kode_kec', 'INNER')->result_array(),
			
			
		];
		echo json_encode($data);
	}

	private function kondisi($id_lembaga, $kondisi){
		$where = $id_lembaga ? ['id_lembaga' => $id_lembaga, 'kondisi' => $kondisi] : ['kondisi' => $kondisi];
		// return $this->M_saranaPrasarana->getWhere($where)->num_rows();
		return $this->M_saranaPrasarana->getSumWhere($where);
	}
}
