<?php 
defined('BASEPATH') or exit('No direct script access allowed');

class reporte_Model extends CI_Model{
	function __construct(){
		parent::__construct();
		$this->load->database();
	}

	public function guardarRep($data) {
		$result = $this->db->insert('reportes', $data);
		return $result;
	}

	public function listaReportes() {
	$query=$this->db->get('view_reporte');
	if ($query->num_rows()>0) {
		return $query->result_array();
	} else {
		return false;
	}
}
    public function cambiaStatusRpt1($id, $status){
    $this->db->where('IdReporte', $id);
    $data = array('Estado' => $status);
    $this->db->update('reportes', $data);
	}

	public function validaNumeroRpt($numeroRt) {
		$valor=false;
		$this->db->where('NoOrden', $numeroRt);
		$query=$this->db->get('reportes');
		if ($query->num_rows()>0) {
			$valor=true;
		} else {
			$valor=false;
		}
		return $valor;
	}

}
?>