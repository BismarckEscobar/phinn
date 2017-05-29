<?php 
defined('BASEPATH') or exit('No direct script access allowed');

class reporte_Controller extends CI_Controller {
	public function __construct() {
		parent:: __construct();
		$this->load->library('session');
		$this->load->helper('url');
		$user = $this->session->userdata('logged');
			if (!isset($user)) { 
			redirect(base_url().'index.php','refresh');
		} 
	}

	public function index() {
		$data['listaReport'] = $this->reporte_Model->listaReportes();
        $this->load->view('header');
        $this->load->view('dashboardclean');
        $this->load->view('Reportes/reporte', $data);
		$this->load->view('footer');
	}

	public function guardarReporte() {
		$fechaInicio = date('Y-m-d', strtotime($this->input->post('fechaInicio', TRUE)));
		$fechaFinal = date('Y-m-d', strtotime($this->input->post('fechaFinal', TRUE)));
		$array = array(
			'NoOrden' => $this->input->post('numOrden', TRUE),
			'Tipo' => $this->input->post('tipoReporte', TRUE),
			'Usuario' => $this->session->userdata('IdUser'),
			'FechaInicio' => $fechaInicio,
			'FechaFin' => $fechaFinal,
			'Estado' => 1
		);
			$this->reporte_Model->guardarRep($array);
			redirect('index');
	}

	public function cambiaStatusRpt($idReport, $status){
	$this->reporte_Model->cambiaStatusRpt1($idReport, $status);
	}

	public function validaNumRpt($id) {
		$result = "";
		$bool = $this->reporte_Model->validaNumeroRpt($id);
		if ($bool =="") {
			$result = "No hay nada";
		} else { $result = "hay algo";}
		echo $result;
	}
}

?>