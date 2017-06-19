<?php 
defined('BASEPATH') or exit('No direct script access allowed');

class cargas_Pulper_Controller extends CI_Controller {
	
	public function __construct() {
		parent::__construct();
	}

	public function index($idReporteD) {
		$data['consecutivo'] = $this->Ordenproduccion_model->buscarRtpDiario($idReporteD);
		$data['tipoFibra']= $this->cargasPulper_Model->listaConsumos();
		$this->load->view('header');
		$this->load->view('dashboardclean');
		$this->load->view('Coordinador/cargasPulper',$data);
		$this->load->view('footer');
	}

	public function listarCargasPulper() {
		$json= array();
		$query=$this->cargasPulper_Model->listaConsumos();
		foreach ($query as $key) {
			$dta = array(
				'descripcion' => $key['descripcion']			
			);
			$json[] =$dta;
		}
		echo json_encode($json);
	}

	public function guardarCPulper() {
		$IdReporteDiario = $this->input->post('idReporteDiario', TRUE);
		$IdInsumo = $this->input->post('tipoFibra', TRUE);
		$Cantidad = $this->input->post('cantidad', TRUE);
		$array = array(
			'IdReporteDiario'=> $IdReporteDiario,
			'IdInsumo' => $IdInsumo,
			'Cantidad' => $Cantidad
			);
		$this->cargasPulper_Model->guardarCargaPulper($array);
	}

	public function listarCantidadCargas($idReporteDiario) {
		$json=array();
		$query=$this->cargasPulper_Model->listarCargasP($idReporteDiario);
		if ($query!=FALSE) {
		foreach ($query as $key) {
			$dta = array(
				'IdCargaPulper' => $key['IdCargaPulper'],
				'IdInsumo' => $key['IdInsumo'],
				'Cantidad' => $key['Cantidad'],
				'IdReporteDiario' => $key['IdReporteDiario']	
			);
			$json[] =$dta;
		}
		echo json_encode($json);
		}else {
			echo 'FALSE';
		}
	}

	public function actualizarCargaP($idCargaPulper, $cantidad) {
		$this->cargasPulper_Model->actualizarRegistroCarga($idCargaPulper, $cantidad);
	}

	public function agregarHorasM() {
		$IdReporteDiario = $this->input->post('idRptD', TRUE);
		$horaInicio = date("H:i:s", strtotime($this->input->post('timepickerII', TRUE)));
		$horaFinal = date("H:i:s", strtotime($this->input->post('timepickerFF', TRUE)));
		$carga = 'BATIDO';
		$array = array(
			'IdReporteDiario'=> $IdReporteDiario,
			'horaInicio' => $horaInicio,
			'horaFin' => $horaFinal,
			'carga' => $carga
			);
		$this->cargasPulper_Model->guardarHoraMolienda($array);
	}

	public function listarHorasM($idReporteDiario) {
		$json=array();
		$query=$this->cargasPulper_Model->listarHorasMolienda($idReporteDiario);
		if ($query!=FALSE) {
		foreach ($query as $key) {
			$horaInicio = date('g:i A', strtotime($key['horaInicio']));
			$horaFinal = date('g:i A', strtotime($key['horaFin']));
			$tf=$this->sumaRestaHoras($horaFinal,$horaInicio);
			$dta = array(
				'IdHora' => $key['IdHora'],
				'carga' => $key['carga'],
				'horaInicio' => $horaInicio,
				'horaFin' => $horaFinal,
				'tiempo' => $tf,
				'IdReporteDiario' => $key['IdReporteDiario']	
			);
			$json[] =$dta;
		}
		echo json_encode($json);
		}else {
			echo 'FALSE';
		}
	}

	public function sumaRestaHoras($horainicio, $horafin){
		$dif=date("H.i:s", strtotime("00:00:00") + strtotime($horainicio) - strtotime($horafin) );
		return $dif;
	}
}

?>