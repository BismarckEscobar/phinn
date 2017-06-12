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

public function guardarTiempoM($idRptD,$ordP1,$consecutivo,$turno1,$timepickerII,$timepickerFF,$maquina,$descipcion) {
	$horaInicio = date("H:i:s", strtotime($timepickerII));
	$horaFinal = date("H:i:s", strtotime($timepickerFF));
	$texto1 = str_replace("%20"," ",$descipcion);
	$cadena = urldecode($texto1);
	$array = array(
		'IdReporteDiario'=> $idRptD,
		'Consecutivo' => $consecutivo,
		'NoOrden' => $ordP1,
		'HoraInicio' => $horaInicio,
		'HoraFin' => $horaFinal,
		'Turno' => $turno1,
		'Maquina' => $maquina,
		'Descripcion' => $cadena
		);
		$this->tiemposMuertos_Model->guardarTiempoMuerto($array);
	}

	public function buscarDetalleTM($iden) {
		$identificador = $iden;$maquina="";
		$json= array();
		$list = $this->tiemposMuertos_Model->buscarDetalleTMt($identificador);
		foreach ($list as $key) {
			$horaInicio = date('g:i A', strtotime($key['HoraInicio']));
			$horaFinal = date('g:i A', strtotime($key['HoraFin']));
			$datetime1 = new DateTime($key['HoraInicio']);
			$datetime2 = new DateTime($key['HoraFin']);
			$interval = $datetime1->diff($datetime2);
			$tf = $interval->format("%H:%I");
			if ($key['Maquina']==1) {
				$maquina="Maquina 1";
			} else {$maquina="Maquina 2";}
			$dta = array(			
			'IdTiempoMuerto' => $key['IdTiempoMuerto'],
			'IdReporteDiario' => $key['IdReporteDiario'],
			'NoOrden' => $key['NoOrden'],
			'HoraInicio' => $horaInicio,
			'Turno' => $key['Turno'],
			'HoraFin' => $horaFinal,
			'Intervalos' => $tf,
			'Maquina' => $maquina,
			'Descripcion' => $key['Descripcion']
			);
			$json[] =$dta;
		}
		echo json_encode($json);
	}

}//
?>