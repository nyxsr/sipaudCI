<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kelola_Pengguna extends CI_Controller {

	function __construct() {
		parent::__construct();
		$this->load->model(['M_Pengguna',"M_Lembaga"]);
		$this->load->library('pagination');
		if(!$this->session->userdata('role')){
			redirect('login');
		}

		if($this->session->userdata('role') != "admin"){
			redirect();
		}
	}

	public function index()
	{
		$data['konten'] = "kelola_pengguna/v_kelola_pengguna";
        $data['judul'] = "Kelola Pengguna";
		$data['data'] = $this->M_Pengguna->get()->result();
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

		$total = $this->M_Pengguna->totalRow();
		$output = array();
		$output['draw']	 = $draw;
		$output['recordsTotal'] = $output['recordsFiltered']=$total;
		$output['data'] = array();

		if($search!=""){
			$query = $this->M_Pengguna->datatable($length,$start,$search,"username",$columnName,$columnSortOrder);
			$output['recordsTotal'] = $output['recordsFiltered'] = $query->num_rows();
		} else {
			$query = $this->M_Pengguna->datatable($length,$start,$search,"username",$columnName,$columnSortOrder);
		}

		$nomor_urut=$start+1;
		foreach ($query->result_array() as $dt) {

			$output['data'][]=array(
				$nomor_urut,
				$dt['username'],
				$this->encryption->decrypt($dt['password']),
				$dt['role'],
				($dt['username'] == "admin") ? "<i>Tidak ada</i>" :
				'<div class="row">
					<div class="col-md-6 text-center">
						<a href="javascript:void(0);" class="text-success modalButton"  data-toggle="modal" data-target="#modal" data-type="edit" data-id="'.$dt['id'].'"><i class="fa fas fa-pencil"></i></a>
					</div>
					<div class="col-md-6 text-center">
						<a href="javascript:void(0);" onclick="hapus('.$dt['id'].');" class="text-danger"><i class="fa fas fa-trash"></i></a>
					</div>
				</div>',
				// nice_date($dt['tanggalDaftar'],'d/m/Y'),
			);
			$nomor_urut++;
		}

		echo json_encode($output);
	}

	public function modalTambah(){
		$this->load->view('kelola_pengguna/modalAdd');
	}

	public function modalEdit(){
		$id = $this->input->post("id");
		$data['data'] = $this->M_Pengguna->getWhere(["tbl_users.id"=>$id])->row_array();
		$this->load->view('kelola_pengguna/modalEdit',$data);
	}

	public function add(){
		$username 			= $this->input->post("username");
		$password 			= $this->encryption->encrypt($this->input->post("password"));
		$level 				= $this->input->post("level");
		$nama_lembaga 		= $this->input->post("nama_lembaga") ? $this->input->post("nama_lembaga") : NULL ;
		
		$id_users			= NULL;

		$data 				= array(
								'username'		=> $username, 
								'password'		=> $password,
								'role'			=> $level,
							);
							
		$query				= $this->M_Pengguna->insert($data);
		$id_users 			= $this->db->insert_id();

		if(!empty($nama_lembaga)){
			$data_lembaga	= array(
								'nama_lembaga'	=> $nama_lembaga,
								'id_user'		=> $id_users,
							);
			$this->M_Lembaga->insert($data_lembaga);
		}


		echo json_encode($query);
	}

	
	public function edit(){
		$username 	= $this->input->post("username");
		$password 	= $this->input->post("password");
		
		$id			= $this->encryption->decrypt($this->input->post("id"));

		if(!empty($password)){
			$data 		= array(
							'username'	=> $username, 
							'password'	=> $this->encryption->encrypt($password),
						);
		}else{
			$data 		= array(
							'username'	=> $username, 
						);
		}
		
		$params		= array(
						'id'		=> $id,
					);

		$query		= $this->M_Pengguna->update($data,$params);
		echo json_encode($query);
	}

	public function delete(){
		$id				= $this->input->post("id");
		$lembaga		= $this->M_Pengguna->getWHere(["tbl_users.id"=>$id])->row_array();
		$id_lembaga		= $lembaga['id_lembaga'];
		if($id_lembaga != NULL){
			$array_lembaga	= array('id'=>$id_lembaga);
			$this->M_Lembaga->delete($array_lembaga);
		}

		$data				= array('id'=>$id);
		$query				= $this->M_Pengguna->delete($data);
		echo json_encode($query);
	}

	public function cek_username(){
		
		$username = $this->input->post('username');
        $output = $this->M_Pengguna->totalRow(["username"=>$username]);
		if($output > 0){
			$output = false;
		}else{
			$output = true;
		}
        echo json_encode($output);
    }

}
