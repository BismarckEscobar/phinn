<?php 
defined('BASEPATH') or exit('No direct script access allowed');

class reporteDiario_Controller extends CI_Controller
{
	
	public function __construct() {
		parent:: __construct();
	}
	public function index($idReporteDiario) {
		$data['consecutivo'] = $this->Ordenproduccion_model->buscarRtpDiario($idReporteDiario);
		$data['cabeceraRpt'] = $this->reporteDiario_Model->caberaReporte($idReporteDiario);
		$data['idReporteDiario'] = $idReporteDiario;		
		$this->load->view('Reportes/reporteOrdTrabDiario', $data);
	}

	public function cambiaEstadoRptD($idRptDiario, $estado) {
        $this->reporteDiario_Model->cambiarEstadoReporteD($idRptDiario, $estado);
    }

	public function eliminarRegRptDiario($id)
	{
		$this->reporteDiario_Model->eliminarRptDiario($id);
	}
}
?>