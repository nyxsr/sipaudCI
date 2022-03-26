<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Cetak extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('M_Appointment');
    }
    
    function index(){
        // $this->load->view('cetak');
        $output = $this->M_Appointment->cetak();
        echo json_encode($output);      
    }

    function laporan(){
        $output = $this->M_Appointment->cetak_laporan();
        echo json_encode($output); 
    }
}

?>