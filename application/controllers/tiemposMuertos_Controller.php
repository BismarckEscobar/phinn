<?php 
defined('BASEPATH') or exit('No direct script access allowed');

class tiemposMuertos_Controller extends CI_Controller {
	public function __construct() {
		parent:: __construct();
		$this->load->helper('url');
	}

public function index() {
	$this->load->view('header');
	$this->load->view('dashboardclean');
	$this->load->view('TiemposMuertos/tiemposMuertos');
	$this->load->view('footer');
}

public function guardarTiempoM() {
	$horaInicio = date("H:i:s", strtotime($this->input->post('timepickerI', TRUE)));
	$horaFinal = date("H:i:s", strtotime($this->input->post('timepickerF', TRUE)));
	$array = array(
		'NoOrden' => $this->input->post('numOrden', TRUE),
		'HoraInicio' => $horaInicio,
		'HoraFin' => $horaFinal,
		'Maquina' => 1,
		'Descripcion' => $this->input->post('comentario', TRUE)
	);
		$this->tiemposMuertos_Model->guardarTiempoMuerto($array);
		redirect('tiemposmuertos');
}
}?>