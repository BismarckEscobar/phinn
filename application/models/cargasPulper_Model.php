<?php 
defined('BASEPATH') or exit('No direct script access allowed');

class cargaspulper_Model extends CI_Model {	
	function __construct() {
		parent::__construct();
		$this->load->database();
	}

	public function listaConsumos() {
		$this->db->where('IdCategoria', 1);
		$query=$this->db->get('insumos');
		if ($query->num_rows()>0) {
			return $query->result_array();
		} else {
			return false;
		}
	}

	public function guardarCargaPulper($array) {
		$result = $this->db->insert('cargas_pulper', $array);
		echo $result;
	}

	public function listarCargasP($idReporteDiario) {
		$this->db->where('idReporteDiario', $idReporteDiario);
		$query=$this->db->get('cargas_pulper');
		if ($query->num_rows()>0) {
			return $query->result_array();
		} else {
			return false;
		}
	}

	public function calcularTotalCarga($idReporteDiario) {
		$query=$this->db->query('SELECT SUM(Cantidad) as sumTotal from cargas_pulper WHERE IdReporteDiario = "'.$idReporteDiario.'"');
		if ($query->num_rows()>0) {
			return $query->result_array();
		}else {
			return false;
		}
	}

	public function actualizarRegistroCarga($idCargaPulper, $cantidad) {
		$data = array('Cantidad' => $cantidad);
	    $this->db->where('IdCargaPulper=', $idCargaPulper);
	    $result = $this->db->update('cargas_pulper', $data);
	    echo $result;
	}

	public function guardarHoraMolienda($array) {
		$result = $this->db->insert('horas_molienda', $array);
		echo $result;
	}

	public function listarHorasMolienda($idReporteDiario) {
		$this->db->where('IdReporteDiario', $idReporteDiario);
		$query=$this->db->get('horas_molienda');
		if ($query->num_rows()>0) {
			return $query->result_array();
		} else {
			return false;
		}
	}

	public function buscarHorasMolienda($idHorasMolienda) {
		$this->db->where('IdHora', $idHorasMolienda);
        $query=$this->db->get('horas_molienda');
        if($query->num_rows()>0){
            return $query->result_array();
        }else{
        	return false;	
        }   
	}

	public function actualizarHoraMolienda($idHora, $horaInicio, $horaFinal) {
		$data = array(
			'horaInicio' => $horaInicio,
			'horaFin' => $horaFinal
			);
	    $this->db->where('IdHora', $idHora);
	    $result=$this->db->update('horas_molienda', $data);
	    echo $result;
	}
}
?>