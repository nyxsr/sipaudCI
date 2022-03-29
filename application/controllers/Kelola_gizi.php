<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kelola_gizi extends CI_Controller {
    function index()
	{
		$data['konten'] = "kelola_gizi/v_kelola_gizi";
        $data['judul'] = "Kelola Gizi Anak";
		$this->load->view('v_template',$data);
	}
	// public function modalTambah(){
	// 	$data['data'] = $this->M_Lembaga->get()->result_array();
	// 	$this->load->view('kelola_gizi/modalAdd',$data);
	// }

	public function grafik(){
		$data['konten'] = "kelola_gizi/v_grafik";
        $data['judul'] = "Grafik Perkembangan";
		$this->load->view('v_template',$data);
	}
	public function modalTambah(){
		// $data['data'] = $this->M_Lembaga->get()->result_array();
		$this->load->view('kelola_gizi/modalAdd');
	}

	// public function delete(){
	// 	$id				= $this->encryption->decrypt(base64_decode($this->input->post("id")));
	// 	$data				= array('id_gizi'=>$id);
	// 	$query				= $this->M_tenagaKependidikan->delete($data);
	// 	echo json_encode($query);
	// }
}