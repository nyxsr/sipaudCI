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
}