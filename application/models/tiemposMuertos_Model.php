<?php 
defined('BASEPATH') or exit('No direct script access allowed');

class tiemposMuertos_Model extends CI_Model{
	function __construct() {
		parent:: __construct();
		$this->load->database();
	}

	public function guardarTiempoMuerto($data) {
	$result = $this->db->insert('tiempos_muertos', $data);
	return $result;
	}
}
?>