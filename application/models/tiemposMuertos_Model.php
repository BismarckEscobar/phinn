<?php 
defined('BASEPATH') or exit('No direct script access allowed');

class tiemposMuertos_Model extends CI_Model{
	function __construct() {
		parent:: __construct();
		$this->load->database();
	}

	public function guardarTiempoMuerto($data) {
	$result = $this->db->insert('tiempos_muertos', $data);
	echo $result;
	}

	public function listarTM($IdReporteDiario) {
		$this->db->where('IdReporteDiario =', $IdReporteDiario);
		$query=$this->db->get('tiempos_muertos');
		if ($query->num_rows()>0) {
			return $query->result_array();
		} else {
			return false;
		}
	}

	public function buscarDetalleTMt($idUnico) {
		$this->db->where('IdTiempoMuerto', $idUnico);
        $query=$this->db->get('tiempos_muertos');
        if($query->num_rows()>0){
            return $query->result_array();
        }else{
        	return 0;	
        }        
	}
}
?>