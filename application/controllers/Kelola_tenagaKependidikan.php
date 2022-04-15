<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kelola_tenagaKependidikan extends CI_Controller {

	function __construct() {
		parent::__construct();
		$this->load->model(['M_tenagaKependidikan','M_Lembaga']);
		if(!$this->session->userdata('role')){
			redirect('login');
		}

		if($this->session->userdata('role') == "pimpinan"){
			redirect();
		}
	}

	function index()
	{
		$data['konten'] = "kelola_tenagaKependidikan/v_kelola_tenagaKependidikan";
        $data['judul'] = "Kelola Tenaga Kependidikan";
		$this->load->view('v_template',$data);
	}

	function tgl_indonesia($tanggal){
		$arrTanggal = explode("-",$tanggal);
		$arrBulan	= ["Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","Semptember","Oktober","November","Desember"];
		$bulan		= intval($arrTanggal[1]-1);
		return $arrTanggal[2] . " " . $arrBulan[$bulan] . " " . $arrTanggal[0];

	}

	function datatable(){
		$draw = $_REQUEST['draw'];
		$length = $_REQUEST['length'];
		$start = $_REQUEST['start'];
		$search = $_REQUEST['search']["value"];
		$columnIndex = $_REQUEST['order'][0]['column']; // Column index
		$columnName = $_REQUEST['columns'][$columnIndex]['name']; // Column name
		$columnSortOrder = $_REQUEST['order'][0]['dir']; // asc or desc

		$selectFilterName = $_REQUEST['columns'][8]["name"];
		$selectFilterValue = $_REQUEST['columns'][8]['search']["value"];

		if($this->session->userdata("role") == "operator"){
			$total = $this->M_tenagaKependidikan->totalRow(['id_lembaga' => $this->encryption->decrypt(base64_decode($this->session->userdata("id_lembaga")))]);
		}else{
			$total = $this->M_tenagaKependidikan->totalRow();
		}
		$output = array();
		$output['draw']	 = $draw;
		$output['recordsTotal'] = $output['recordsFiltered']=$total;
		$output['data'] = array();

		if($search!=""){
			$query = $this->M_tenagaKependidikan->datatable($length,$start,$search,"tbl_tenagakependidikan.nama",$columnName,$columnSortOrder,$selectFilterName,$selectFilterValue);
			$output['recordsTotal'] = $output['recordsFiltered'] = $query->num_rows();
		} else {
			$query = $this->M_tenagaKependidikan->datatable($length,$start,$search,"tbl_tenagakependidikan.nama",$columnName,$columnSortOrder,$selectFilterName,$selectFilterValue);
		}

		$nomor_urut=$start+1;
		foreach ($query->result_array() as $dt) {

			$output['data'][]=array(
				$nomor_urut,
				$dt['nip'],
				$dt['nama'],
				!empty($dt['alamat']) ? $dt['alamat'] : '-',
				!empty($dt['no_telp']) ? $dt['no_telp'] : '-',
				!empty($dt['pendidikan']) ? $dt['pendidikan'] : '-',
				// !empty($dt['tempat_lahir']) || !empty($dt['tanggal_lahir']) ? $dt['tempat_lahir'].", ".$dt['tanggal_lahir'] : '-',
				!empty($dt['tempat_lahir']) || !empty($dt['tanggal_lahir']) ? ["tempat"=>$dt['tempat_lahir'],"tanggal"=>$this->tgl_indonesia($dt['tanggal_lahir'])] : '-',
				!empty($dt['jenis_kelamin']) ? $dt['jenis_kelamin'] : '-',
				!empty($dt['nama_lembaga']) ? $dt['nama_lembaga'] : '-',
				'<div class="row">
					<div class="col-md-6 text-center">
						<a href="javascript:void(0);" class="text-success modalButton"  data-toggle="modal" data-target="#modal" data-type="edit" data-id="'.base64_encode($this->encryption->encrypt($dt['id_tenagaKependidikan'])).'"><i class="fa fas fa-pencil"></i></a>
					</div>
					<div class="col-md-6 text-center">
						<a href="javascript:void(0);" onclick="hapus(this.id);" class="text-danger" id="'.base64_encode($this->encryption->encrypt($dt['id_tenagaKependidikan'])).'"><i class="fa fas fa-trash"></i></a>
					</div>
				</div>',
			);
			$nomor_urut++;
		}

		echo json_encode($output);
	}

	public function modalTambah(){
		$data['data'] = $this->M_Lembaga->get()->result_array();
		$this->load->view('kelola_tenagaKependidikan/modalAdd',$data);
	}
	public function print(){
		$data['judul'] = "Print";
		$data['data'] = $this->M_tenagaKependidikan->get('tbl_tenagakependidikan')->result();
		$this->load->view('kelola_tenagaKependidikan/print',$data);
	}

	public function getLembaga(){
		echo json_encode($this->M_Lembaga->get()->result_array());
	}

	public function add(){
		$nuptk 				= $this->input->post("nuptk");
		$nip 				= $this->input->post("nip");
		$nama 				= $this->input->post("nama");
		$jenisKelamin 		= $this->input->post("jenisKelamin");
		$no_telp 			= $this->input->post("no_telp");
		$nama_lembaga 		= $this->input->post("nama_lembaga");
		$alamat 			= $this->input->post("alamat");
		$tempat_lahir 		= $this->input->post("tempat_lahir");
		$tanggal_lahir 		= $this->input->post("tanggal_lahir");
		$pendidikan 		= $this->input->post("pendidikan");
		
		$diklatdasar 		= $this->input->post("diklatdasar") ? $this->input->post("diklatdasar") : NULL;
		$diklatlanjut 		= $this->input->post("diklatlanjut") ? $this->input->post("diklatlanjut") : NULL;
		$diklatmahir 		= $this->input->post("diklatmahir") ? $this->input->post("diklatmahir") : NULL;

		$diklatlainnya 		= $this->input->post("diklatlainnya");
		$tahundiklatlainnya = $this->input->post("tahundiklatlainnya");

		$arrDiklatLainnya 		= "";

		if(!empty($diklatlainnya)){
			if(count($diklatlainnya) > 0){
				for ($i=0; $i < count($diklatlainnya); $i++) { 
					if($i == 0){
						$arrDiklatLainnya 		.= $diklatlainnya[$i].";".$tahundiklatlainnya[$i];
					}else{
						$arrDiklatLainnya 		.= ",".$diklatlainnya[$i].";".$tahundiklatlainnya[$i];
					}
				}
			}		
		}else{
			$arrDiklatLainnya = NULL;
		}

		$data 				= array(
								'nuptk'				=> $nuptk, 
								'nip'				=> $nip, 
								'nama'				=> $nama,
								'jenis_kelamin'		=> $jenisKelamin,
								'no_telp'			=> $no_telp,
								'alamat'			=> $alamat,
								'tempat_lahir'		=> $tempat_lahir,
								'tanggal_lahir'		=> $tanggal_lahir,
								'pendidikan'		=> $pendidikan,
								'id_lembaga'		=> $nama_lembaga,
								'diklatdasar'		=> $diklatdasar,
								'diklatlanjut'		=> $diklatlanjut,
								'diklatmahir'		=> $diklatmahir,
								'diklatlainnya'		=> $arrDiklatLainnya,
							);
							
		$query				= $this->M_tenagaKependidikan->insert($data);

		echo json_encode($query);
	}

	public function modalEdit(){
		$id = $this->input->post("id");
		$data['data'] = $this->M_tenagaKependidikan->getWhere(["id_tenagaKependidikan"=>$this->encryption->decrypt(base64_decode($id))])->row_array();
		$data['dataLembaga'] = $this->M_Lembaga->get()->result_array();
		$this->load->view('kelola_tenagaKependidikan/modalEdit',$data);
	}
	

	function edit(){
		$id					= $this->encryption->decrypt(base64_decode($this->input->post("id")));
		$image				= $this->input->post("nama_foto") == "image_placeholder.jpg" ? "" : $this->input->post("nama_foto");

		$nuptk 				= $this->input->post("nuptk");
		$nip 				= $this->input->post("nip");
		$nama 				= $this->input->post("nama");
		$jenisKelamin 		= $this->input->post("jenisKelamin");
		$no_telp 			= $this->input->post("no_telp");
		$nama_lembaga 		= $this->input->post("nama_lembaga");
		$alamat 			= $this->input->post("alamat");
		$tempat_lahir 		= $this->input->post("tempat_lahir");
		$tanggal_lahir 		= $this->input->post("tanggal_lahir");
		$pendidikan 		= $this->input->post("pendidikan");

		$diklatdasar 		= $this->input->post("diklatdasar") ? $this->input->post("diklatdasar") : NULL;
		$diklatlanjut 		= $this->input->post("diklatlanjut") ? $this->input->post("diklatlanjut") : NULL;
		$diklatmahir 		= $this->input->post("diklatmahir") ? $this->input->post("diklatmahir") : NULL;

		$diklatlainnya 		= $this->input->post("diklatlainnya");
		$tahundiklatlainnya = $this->input->post("tahundiklatlainnya");

		$arrDiklatLainnya 		= "";

		if(!empty($diklatlainnya)){
			if(count($diklatlainnya) > 0){
				for ($i=0; $i < count($diklatlainnya); $i++) { 
					if($i == 0){
						$arrDiklatLainnya 		.= $diklatlainnya[$i].";".$tahundiklatlainnya[$i];
					}else{
						$arrDiklatLainnya 		.= ",".$diklatlainnya[$i].";".$tahundiklatlainnya[$i];
					}
				}
			}		
		}else{
			$arrDiklatLainnya = NULL;
		}

		$params				= array(
								"id_tenagaKependidikan" => $id
							);

		$dataArray			= array(
								'nuptk'				=> $nuptk, 
								'nip'				=> $nip, 
								'nama'				=> $nama,
								'jenis_kelamin'		=> $jenisKelamin,
								'no_telp'			=> $no_telp,
								'alamat'			=> $alamat,
								'tempat_lahir'		=> $tempat_lahir,
								'tanggal_lahir'		=> $tanggal_lahir,
								'pendidikan'		=> $pendidikan,
								'id_lembaga'		=> $nama_lembaga,
								'diklatdasar'		=> $diklatdasar,
								'diklatlanjut'		=> $diklatlanjut,
								'diklatmahir'		=> $diklatmahir,
								'diklatlainnya'		=> $arrDiklatLainnya,
							);


		$query 				= $this->M_tenagaKependidikan->update($dataArray, $params);
		echo json_encode($query);
	}

	public function delete(){
		$id				= $this->encryption->decrypt(base64_decode($this->input->post("id")));

		$data				= array('id_tenagaKependidikan'=>$id);
		$query				= $this->M_tenagaKependidikan->delete($data);
		echo json_encode($query);
	}
	
	public function cek_nip(){
		
		$id = $this->encryption->decrypt(base64_decode($this->input->post('id')));
		$nip = $this->input->post('nip');
		$where = ["nip"=>$nip];
		if(!empty($id)){
			$where["id_tenagaKependidikan !="] = $id;
		}
		$output = $this->M_tenagaKependidikan->totalRow($where);
		if($output > 0){
			$output = false;
		}else{
			$output = true;
		}
        echo json_encode($output);
    }

	public function cek_nuptk(){
		$id = $this->encryption->decrypt(base64_decode($this->input->post('id')));
		$nuptk = $this->input->post('nuptk');
		$where = ["nuptk"=>$nuptk];
		if(!empty($id)){
			$where["id_tenagaKependidikan !="] = $id;
		}
		$output = $this->M_tenagaKependidikan->totalRow($where);
		if($output > 0){
			$output = false;
		}else{
			$output = true;
		}
        echo json_encode($output);
    }

}
