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
       	$data = array('Estado' => (int)$estado);
	    $this->db->where('IdReporteDiario =', $idRtpD);
	    $query=$this->db->update('reporte_diario', $data);
	    echo $query;
    }

    public function eliminarRptDiario($idReporteDiario){
    	$this->db->where('IdReporteDiario=', $idReporteDiario);
		$query=$this->db->get('cargas_pulper');
		if ($query->num_rows()>0) {
			echo "TRUE";
		} else {
			$this->db->where('IdReporteDiario=', $idReporteDiario);
			$query=$this->db->get('horas_molienda');
			if ($query->num_rows()>0) {
				echo "TRUE";
			}else {
				$this->db->where('IdReporteDiario=', $idReporteDiario);
				$query=$this->db->get('pasta');
				if ($query->num_rows()>0) {
					echo "TRUE";
				}else {
					$this->db->where('IdReporteDiario=', $idReporteDiario);
					$query=$this->db->get('produccion');
					if ($query->num_rows()>0) {
						echo "TRUE";
					}else {
						$this->db->where('IdReporteDiario=', $idReporteDiario);
						$query=$this->db->get('tiempos_muertos');
						if ($query->num_rows()>0) {
							echo "TRUE";
						}else {
							$this->db->where('IdReporteDiario=', $idReporteDiario);
							$query=$this->db->delete('reporte_diario'); 
							if ($query==1) {
								echo "FALSE";
							}else{
								echo "ERROR";
							}
						}
					}
				}
			}
		}
    }
}

?>