<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		$this->load->model(['M_Lembaga', 'M_tenagaPendidik', 'M_tenagaKependidikan', 'M_Sarana', 'M_Siswa', 'M_Prasarana','M_Desa','M_Kecamatan']);
		if (!$this->session->userdata('role')) {
			redirect('login');
		}
	}

	function index()
	{
		$data['konten'] = "v_dashboard";
		$data['judul'] = "Dashboard";
		$data['lembaga'] = $this->M_Lembaga->get()->result_array();
		$data['kecamatan'] = $this->M_Kecamatan->get()->result_array();
		$data['desa'] = $this->M_Desa->get()->result_array();
		$this->load->view('v_template', $data);
		
	}

	function getDesa(){
		$kode_kec 			= $this->input->post('kode_kec');
		$data['desa']		= $this->M_Desa->getWhereKecId($kode_kec)->result();
		echo json_encode($data);
	}

	function getLembaga(){
		$kode_kec 			= $this->input->post('kode_kec');
		$kode_desa 			= $this->input->post('kode_desa');
		$data['lembaga']	= $this->M_Lembaga->getWhereKecIdDesId($kode_kec, $kode_desa)->result();
		echo json_encode($data);
	}

	public function getData()
	{
		$id_lembaga			= $this->input->post("id_lembaga");
		$kode_kec			= $this->input->post("kode_kec");
		$kode_desa 			= $this->input->post("kode_desa");
		// $filterWhere		= [
		// 						'id_lembaga' => $id_lembaga,
		// 						'kode_kec' => $kode_kec,
		// 						'kode_desa' => $kode_desa,
		// 					]
		
		$filterWhere		= [];
		$filterLembaga		= [];
		if($id_lembaga){
			$filterWhere['tbl_lembaga.id']	= $id_lembaga;
			$filterLembaga['id']		= $id_lembaga;
		} 
		if($kode_desa){
			$filterWhere['tbl_lembaga.kode_desa']	= $kode_desa;
			$filterLembaga['kode_desa']	= $kode_desa;
		}
		if($kode_kec){
			$filterWhere['tbl_lembaga.kode_kec']	= $kode_kec;
			$filterLembaga['kode_kec']	= $kode_kec;
		} 
		

		// $where 				= $this->input->post("id_lembaga") ? $filterWhere : "";
		// $whereLembaga 		= $this->input->post("id_lembaga") ? $filterLembaga : "";
		// $wherePersebaran 	= $this->input->post("id_lembaga") ? ['id' => $id_lembaga, 'latitude !=' => NULL] : ['latitude !=' => NULL];

		// $whereDiklatDasar 	= $this->input->post("id_lembaga") ? array_merge($filterWhere,['diklatdasar !=' => NULL]) : ['diklatdasar !=' => NULL];
		// $whereDiklatLanjut 	= $this->input->post("id_lembaga") ? array_merge($filterWhere, ['diklatlanjut !=' => NULL]) : ['diklatlanjut !=' => NULL];
		// $whereDiklatMahir 	= $this->input->post("id_lembaga") ? array_merge($filterWhere, ['diklatmahir !=' => NULL]) : ['diklatmahir !=' => NULL];


		$data = [
			'totalTenagaPendidik' => $this->M_tenagaPendidik->getWhereStatistic($filterWhere)->num_rows(),
			'totalTenagaKependidikan' => $this->M_tenagaKependidikan->getWhereStatistic($filterWhere)->num_rows(),
			// 'totalSaranaPrasarana' => $this->M_saranaPrasarana->getWhere($filterWhere)->num_rows(),
			// 'totalSarana' => $this->M_Sarana->getSumWhere($filterWhere),
			'totalSiswa' => $this->M_Siswa->getWhereStatistic($filterWhere)->num_rows(),
			'akreditasi' => $this->M_Lembaga->getWhere($filterLembaga)->num_rows() > 0 ? $this->M_Lembaga->getWhere($filterLembaga)->row()->status_akreditasi : 'A',

			'totalDiklatDasar' => $this->M_tenagaPendidik->getWhereStatistic(array_merge($filterWhere ? $filterWhere : [],['diklatdasar !=' => NULL]))->num_rows(),
			'totalDiklatLanjut' => $this->M_tenagaPendidik->getWhereStatistic(array_merge($filterWhere ? $filterWhere : [], ['diklatlanjut !=' => NULL]))->num_rows(),
			'totalDiklatMahir' => $this->M_tenagaPendidik->getWhereStatistic(array_merge($filterWhere ? $filterWhere : [], ['diklatmahir !=' => NULL]))->num_rows(),

			'totalUsiaSiswa' => [
				$this->M_Siswa->getAgeWhere('=2', $filterWhere),
				$this->M_Siswa->getAgeWhere('=3', $filterWhere),
				$this->M_Siswa->getAgeWhere('=4', $filterWhere),
				$this->M_Siswa->getAgeWhere('=5', $filterWhere),
				$this->M_Siswa->getAgeWhere('>5', $filterWhere)
			],

			'totalPrasarana' => [
				[
					$this->M_Prasarana->data_grafik('RK_Baik', $filterWhere),
					$this->M_Prasarana->data_grafik('RG_Baik', $filterWhere),
					$this->M_Prasarana->data_grafik('TS_Baik', $filterWhere),
					$this->M_Prasarana->data_grafik('RG_Baik', $filterWhere)
				],
				[
					$this->M_Prasarana->data_grafik('RK_Rusak', $filterWhere),
					$this->M_Prasarana->data_grafik('RG_Rusak', $filterWhere),
					$this->M_Prasarana->data_grafik('TS_Rusak', $filterWhere),
					$this->M_Prasarana->data_grafik('RG_Rusak', $filterWhere)
				]
			
		]
			
			
 
			// 'totalLayakPakai' => $this->kondisi($id_lembaga, "Layak Pakai"),
			// 'totalRusak' => $this->kondisi($id_lembaga, "Rusak"),
		];
		echo json_encode($data);
	}

	function getFilter(){
		$data['lembaga'] = $this->M_Lembaga->getWhere()->result_array();
		$data['kecamatan'] = $this->M_Kecamatan->getWhere()->result_array();
		$data['desa'] = $this->M_Desa->getWhere()->result_array();

		echo json_encode($data);
	}

	function getFilterKecamatan(){
		$where = ['kode_kec' => $this->input->post('kode_kec')];

		$data['lembaga'] = $this->M_Lembaga->getWhere($where)->result_array();
		$data['desa'] = $this->M_Desa->getWhere($where)->result_array();

		echo json_encode($data);
	}

	// private function kondisi($id_lembaga, $kondisi){
	// 	$where = $id_lembaga ? ['id_lembaga' => $id_lembaga, 'kondisi' => $kondisi] : ['kondisi' => $kondisi];
	// 	// return $this->M_saranaPrasarana->getWhere($where)->num_rows();
	// 	return $this->M_Sarana->getSumWhere($where);
	// }


}
