<?php 
defined('BASEPATH') or exit('No direct script access allowed');

class reporteDiario extends CI_Controller
{
	
	public function __construct() {
		parent:: __construct();
	}
	public function index() {
		$data['consecutivo'] = $this->Ordenproduccion_model->buscarRtpDiario($idReporteD);
		$this->load->view('header');
        $this->load->view('dashboardclean');
        $this->load->view('Supervisor/menu_supervisor', $data);
		$this->load->view('footer');	
	}
}
?>