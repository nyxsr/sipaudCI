<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kelola_prasarana extends CI_Controller {

	function __construct() {
		parent::__construct();
		$this->load->model(['M_Prasarana','M_Lembaga']);
		if(!$this->session->userdata('role')){
			redirect('login');
		}

		if($this->session->userdata('role') == "pimpinan"){
			redirect();
		}
	}

	 function index()
	{
		$data['konten'] = "kelola_prasarana/v_kelola_prasarana";
        $data['judul'] = "Kelola Prasarana";
		$this->load->view('v_template',$data);
	}
	function datatable(){
		$draw = $_REQUEST['draw'];
		$length = $_REQUEST['length'];
		$start = $_REQUEST['start'];
		$search = $_REQUEST['search']["value"];
		$columnIndex = $_REQUEST['order'][0]['column']; // Column index
		$columnName = $_REQUEST['columns'][$columnIndex]['name']; // Column name
		$columnSortOrder = $_REQUEST['order'][0]['dir']; // asc or desc

		$selectFilterName = $_REQUEST['columns'][12]["name"];
		$selectFilterValue = $_REQUEST['columns'][12]['search']["value"];

		if($this->session->userdata("role") == "operator"){
			$total = $this->M_Prasarana->totalRow(['id_lembaga' => $this->encryption->decrypt(base64_decode($this->session->userdata("id_lembaga")))]);
		}else{
			$total = $this->M_Prasarana->totalRow();
		}
		$output = array();
		$output['draw']	 = $draw;
		$output['recordsTotal'] = $output['recordsFiltered']=$total;
		$output['data'] = array();
 
		if($search!=""){
			$query = $this->M_Prasarana->datatable($length,$start,$search,"tbl_prasarana.nama",$columnName,$columnSortOrder,$selectFilterName,$selectFilterValue);
			$output['recordsTotal'] = $output['recordsFiltered'] = $query->num_rows();
		} else {
			$query = $this->M_Prasarana->datatable($length,$start,$search,"tbl_prasarana.nama",$columnName,$columnSortOrder,$selectFilterName,$selectFilterValue);
		}

		$nomor_urut=$start+1;
		foreach ($query->result_array() as $dt) {

			$output['data'][]=array(
				$nomor_urut,
				!empty($dt['Ruang_Kepala_Sekolah']) ? $dt['Ruang_Kepala_Sekolah'] : '-',
				!empty($dt['Internet']) ? $dt['Internet'] : '-',
				!empty($dt['Listrik']) ? $dt['Listrik'] : '-',				
				!empty($dt['RK_Baik']) ? $dt['RK_Baik'] : '-',
				!empty($dt['RK_Rusak']) ? $dt['RK_Rusak'] : '-',
				!empty($dt['RG_Baik']) ? $dt['RG_Baik'] : '-',
				!empty($dt['RG_Rusak']) ? $dt['RG_Rusak'] : '-',
				!empty($dt['TS_Baik']) ? $dt['TS_Baik'] : '-',
				!empty($dt['TS_Rusak']) ? $dt['TS_Rusak'] : '-',
				!empty($dt['TG_Baik']) ? $dt['TG_Baik'] : '-',
				!empty($dt['TG_Rusak']) ? $dt['TG_Rusak'] : '-',
				!empty($dt['nama_lembaga']) ? $dt['nama_lembaga'] : '-',
				'<div class="row">
					<div class="col-md-6 text-center">
						<a href="javascript:void(0);" class="text-success modalButton"  data-toggle="modal" data-target="#modal" data-type="edit" data-id="'.base64_encode($this->encryption->encrypt($dt['id_prasarana'])).'"><i class="fa fas fa-pencil"></i></a>
					</div>
					<div class="col-md-6 text-center">
						<a href="javascript:void(0);" onclick="hapus(this.id);" class="text-danger" id="'.base64_encode($this->encryption->encrypt($dt['id_prasarana'])).'"><i class="fa fas fa-trash"></i></a>
					</div>
				</div>',
			);
			$nomor_urut++;
		}

		echo json_encode($output);
	}

	public function modalTambah(){
		$data['data'] = $this->M_Lembaga->getExceptPrasarana()->result_array();
		$this->load->view('kelola_prasarana/modalAdd',$data);
	}

	public function getLembaga(){
		echo json_encode($this->M_Lembaga->get()->result_array());
	}

	public function add(){
		$Ruang_Kepala_Sekolah 	= $this->input->post("Ruang_Kepala_Sekolah");
		$Internet 				= $this->input->post("Internet");
		$Listrik 				= $this->input->post("Listrik");
		$RK_Baik				= $this->input->post("RK_Baik");
		$RK_Rusak 				= $this->input->post("RK_Rusak");
		$RG_Baik				= $this->input->post("RG_Baik");
		$RG_Rusak 				= $this->input->post("RG_Rusak");
		$TS_Baik				= $this->input->post("TS_Baik");
		$TS_Rusak				= $this->input->post("TS_Rusak");
		$TG_Baik				= $this->input->post("TG_Baik");
		$TG_Rusak 				= $this->input->post("TG_Rusak");
		$nama_lembaga			= $this->input->post("nama_lembaga");

		$data 					= array(
								'Ruang_Kepala_Sekolah'	=> $Ruang_Kepala_Sekolah,
								'Internet'				=> $Internet,
								'Listrik'				=> $Listrik,
								'RK_Baik'				=> $RK_Baik,
								'RK_Rusak'				=> $RK_Rusak,
								'RG_Baik'				=> $RG_Baik,
								'RG_Rusak'				=> $RG_Rusak,
								'TS_Baik'				=> $TS_Baik,
								'TS_Rusak'				=> $TS_Rusak,
								'TG_Baik'				=> $TG_Baik,
								'TG_Rusak'				=> $TG_Rusak,
								'id_lembaga'			=> $nama_lembaga,
							);
							
		$query				= $this->M_Prasarana->insert($data);

		echo json_encode($query);
	}

	public function modalEdit(){
		$id = $this->input->post("id");
		$data['data'] = $this->M_Prasarana->getWhere(["id_prasarana"=>$this->encryption->decrypt(base64_decode($id))])->row_array();

		$data['dataLembaga'] = $this->M_Lembaga->getExceptPrasarana($this->encryption->decrypt(base64_decode($id)))->result_array();
		// $data['dataLembaga'] = $this->M_Lembaga->get()->result_array();
		$this->load->view('kelola_prasarana/modalEdit',$data);
	}
	

	function edit(){
		$id						= $this->encryption->decrypt(base64_decode($this->input->post("id")));

		$Ruang_Kepala_Sekolah	= $this->input->post("Ruang_Kepala_Sekolah");
		$Internet 				= $this->input->post("Internet");
		$Listrik 				= $this->input->post("Listrik");
		$RK_Baik				= $this->input->post("RK_Baik");
		$RK_Rusak				= $this->input->post("RK_Rusak");
		$RG_Baik				= $this->input->post("RG_Baik");
		$RG_Rusak				= $this->input->post("RG_Rusak");
		$TS_Baik				= $this->input->post("TS_Baik");
		$TS_Rusak				= $this->input->post("TS_Rusak");
		$TG_Baik				= $this->input->post("TG_Baik");
		$TG_Rusak				= $this->input->post("TG_Rusak");
		$nama_lembaga			= $this->input->post("nama_lembaga");

		$params				= array(
								"id_prasarana" => $id
							);

		$dataArray			= array(
								'Ruang_Kepala_Sekolah'	=> $Ruang_Kepala_Sekolah,
								'Internet'				=> $Internet,
								'Listrik'				=> $Listrik,
								'RK_Baik'				=> $RK_Baik,
								'RK_Rusak'				=> $RK_Rusak,
								'RG_Baik'				=> $RG_Baik,
								'RG_Rusak'				=> $RG_Rusak,
								'TS_Baik'				=> $TS_Baik,
								'TS_Rusak'				=> $TS_Rusak,
								'TG_Baik'				=> $TG_Baik,
								'TG_Rusak'				=> $TG_Rusak,
								'id_lembaga'			=> $nama_lembaga,
							);


		$query 				= $this->M_Prasarana->update($dataArray, $params);
		echo json_encode($query);
	}

	public function delete(){
		$id				= $this->encryption->decrypt(base64_decode($this->input->post("id")));

		$data				= array('id_prasarana'=>$id);
		$query				= $this->M_Prasarana->delete($data);
		echo json_encode($query);
	}
}