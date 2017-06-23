<?php 
defined('BASEPATH') or exit('No direct script access allowed');

class reporteDiario_Model extends CI_Model
{	
	function __construct() {
		parent::__construct();
		$this->load->database();
	}

	public function caberaReporte($idReporteDiario) {
		$query=$this->db->query("CALL cabeceraReporteDiario(".$idReporteDiario.")");
		if ($query->num_rows()>0) {
			return $query->result_array();
		} else {
			return false;
		}
	}

    public function cambiarEstadoReporteD($idRtpD, $estado) {
       	$data = array('Estado' => $estado);
	    $this->db->where('IdReporteDiario', $idRtpD);
	    $query=$this->db->update('reporte_diario', $data);
	    if ($query!=1) {
	    	echo "No se guardo";
	    }else {
	    	echo 'se pudo';
	    }
    }
}

?>