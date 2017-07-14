<?php  
defined('BASEPATH') or exit('No direct script access allowed');

class controlPiso_Model extends CI_Model {
	
	public function __construct() {
		$this->load->database();
	}

	public function detalleControlPiso($consecutivo) {
		$this->db->select('*');
		$this->db->where('Consecutivo', $consecutivo);
		$this->db->from('control_piso_detalle');
		$this->db->join('control_piso', 'control_piso.idControlPiso = control_piso_detalle.idControlPiso');
		$query = $this->db->get();
		if ($query->num_rows()>0) {
			return $query->result_array();	
		}else {
			return false;
		}		
	}

	public function visualizarConsumoElec($consecutivo) {
		$this->db->where('consecutivo', $consecutivo);
		$query=$this->db->get('consumoElectrico');
		if ($query->num_rows()>0) {
			return $query->result_array();
		} else {
			return false;
		}
	}

    public function mostrarDetallePasta($consecutivo) {
		$data=array();
		$query = $this->db->query("call infoPasta(2, '".$consecutivo."')");
		if ($query->num_rows()>0) {
			foreach ($query->result_array() as $key) {
				if ($key['Tanque']==1) {
					$tanque = 'Tanque 1';
				}elseif ($key['Tanque']==2) {
					$tanque = 'Tanque 2';
				}elseif ($key['Tanque']==3) {
					$tanque = 'Tanque 3';
				}elseif ($key['Tanque']==4) {
					$tanque = 'Tanque 4';
				}elseif ($key['Tanque']==5) {
					$tanque = 'Tanque 5';
				}elseif ($key['Tanque']==6) {
					$tanque = 'Tanque 6';
				}
				$array = array(
					'Tanque' => $tanque,
					'pasta' => $key['Noche']
				);
				$data[] = $array;
			}
			$query->free_result();
			$query->next_result();
			return $data;
		}else {
			$query->free_result();	
			$query->next_result();
			$query = $this->db->query("call infoPasta(1, '".$consecutivo."')");
			foreach ($query->result_array() as $key) {
				if ($key['Tanque']==1) {
					$tanque = 'Tanque 1';
				}elseif ($key['Tanque']==2) {
					$tanque = 'Tanque 2';
				}elseif ($key['Tanque']==3) {
					$tanque = 'Tanque 3';
				}elseif ($key['Tanque']==4) {
					$tanque = 'Tanque 4';
				}elseif ($key['Tanque']==5) {
					$tanque = 'Tanque 5';
				}elseif ($key['Tanque']==6) {
					$tanque = 'Tanque 6';
				}
				$array = array(
					'Tanque' => $tanque,
					'pasta' => $key['Dia']
				);
				$data[] = $array;
			}
			$query->free_result();
			$query->next_result();
			return $data;
		}
	}

	public function detalleOrdTrabajo($consecutivo) {
		$query=$this->db->query("CALL controlPisoInfo('".$consecutivo."')");
		$data=array();
		if ($query->num_rows()>0) {
			foreach ($query->result_array() as $key) {
			$fechaInicio = date("Y/m/d", strtotime($key['FechaInicio']));
			$fechaFinal = date("Y/m/d", strtotime($key['FechaFinal']));
			$horaInicio = date('g:i A', strtotime($key['horaInicio']));
			$horaFinal = date('g:i A', strtotime($key['horaFinal']));
			list($maquina1, $maquina2) = explode('-', $key['maquina']);
			if ($maquina1==1 && $maquina2==2) {
				$maquina1Status = 1;
				$maquina2Status = 1;
			}elseif ($maquina1==1 && $maquina2==0) {
				$maquina1Status = 1;
				$maquina2Status = 0;
			}elseif ($maquina1==0 && $maquina2==2) {
				$maquina1Status = 0;
				$maquina2Status = 1;
			}elseif ($maquina1==0 && $maquina2==0) {
				$maquina1Status = 0;
				$maquina2Status = 0;
			}
				$data = array(
					'idControlPiso' => $key['idControlPiso'],
					'NoOrder' => $key['NoOrder'],
					'Consecutivo' => $key['Consecutivo'],
					'FechaInicio' => $fechaInicio,
					'FechaFinal' => $fechaFinal,
					'TipoPapel' => $key['TipoPapel'],
					'grupo' => $key['grupo'],
					'maquina1' => $maquina1Status,
					'maquina2' => $maquina2Status,
					'horaInicio' => $horaInicio,
					'horaFinal' => $horaFinal
				);
			}			
			$query->free_result();
			$query->next_result();
			return $data;
		} else {
			$query->free_result();
			$query->next_result();
			$this->db->where('Consecutivo', $consecutivo);
	        $query=$this->db->get('reporte_diario');
	        if (count($query->result_array())==2) {
	        	foreach ($query->result_array() as $key) {
	        		if ($key['Turno']==1) {
						$fechaInicio= date("Y/m/d", strtotime($key['FechaInicio']));									
						$horaInicio="06:00am";
					}elseif($key['Turno']==2) {
						$fechaFinal= date("Y/m/d", strtotime($key['FechaFinal']));
						$horaFin="06:00am";
					}
	        	}
        	}elseif (count($query->result_array())<2) {
        		foreach ($query->result_array() as $key) {
        			if ($key['Turno']==1) {
						$fechaInicio= date("Y/m/d", strtotime($key['FechaInicio']));
						$fechaFinal= date("Y/m/d", strtotime($key['FechaFinal']));
						$horaInicio="06:00am";$horaFin="06:00pm";
					}elseif($key['Turno']==2) {
						$fechaInicio= date("Y/m/d", strtotime($key['FechaInicio']));
						$fechaFinal= date("Y/m/d", strtotime($key['FechaFinal']));
						$horaInicio="06:00pm";$horaFin="06:00am";
					}
        		}
        	}
        	foreach ($query->result_array() as $key) {
            	$data = array(
            		'IdReporteDiario' => $key['IdReporteDiario'],
					'NoOrder' => $key['NoOrder'],
					'Consecutivo' => $key['Consecutivo'],
					'FechaInicio' => $fechaInicio,
					'FechaFinal' => $fechaFinal,
					'TipoPapel' => $key['TipoPapel'],
					'grupo' => '',
					'maquina1' => 0,
					'maquina2' => 0,
					'horaInicio' => $horaInicio,
					'horaFinal' => $horaFin
				);
        	}
			$query->free_result();
			return $data;
			$query->next_result();
		}
	}

	public function listaInsumos() {
		$this->db->distinct();
		$this->db->select('Tipo');
		$query=$this->db->get('insumos');
		if ($query->num_rows()>0) {
			return $query->result_array();
		} else {
			return false;
		}
	}

	public function filtrandoTiposFibra($tipo) {
		$this->db->where('Tipo', $tipo);
		$query=$this->db->get('insumos');
		if ($query->num_rows()>0) {
			return $query->result_array();
		} else {
			return false;
		}
	}

	public function detalleInsumoById($idInsumo,$consecutivo) {
		$this->db->where('control_piso_detalle.IdInsumo', $idInsumo);
		$this->db->where('control_piso.Consecutivo', $consecutivo);
		$this->db->from('control_piso_detalle');
		$this->db->join('control_piso', 'control_piso.idControlPiso = control_piso_detalle.idControlPiso');
		$query = $this->db->get();
		if ($query->num_rows()>0) {
			return 1;	
		}else {
			$this->db->where('IdInsumo', $idInsumo);
			$query1=$this->db->get('insumos');
			if ($query1->num_rows()>0) {
				return $query1->result_array();
			} else {
				return false;
			}
		}
	}

	public function validaExiste($consecutivo) {
		$this->db->where('consecutivo', $consecutivo);
		$query=$this->db->get('control_piso');
		if ($query->num_rows()>0) {
			echo "TRUE";
		} else {
			echo "FALSE";
		}
	}

	public function guardandoDetalleControlPiso($consecutivo, $detalle, $encabezado) {
		$band=false;$result=false;$idControlPiso="";
		$this->db->where('consecutivo', $consecutivo);
		$query=$this->db->get('control_piso');

		for ($i=0; $i < count($encabezado) ; $i++) {
			$index1 = explode(",",$encabezado[$i]);
			$result = $this->db->query("call encabezadoControlPiso(".$index1[0].",'".$index1[1]."','".date("Y/m/d", strtotime($index1[2]))."','".date("Y/m/d", strtotime($index1[3]))."','".date("Y/m/d", strtotime($index1[4]))."','".$index1[5]."','".$index1[6]."','".$index1[7]."','".date("H:i:s", strtotime($index1[8]))."','".date("H:i:s", strtotime($index1[9]))."')");
		}
		if ($result) {

		    $query = $this->db->query('SELECT cp.idControlPiso as idControlPiso from control_piso as cp WHERE consecutivo = "'.$consecutivo.'"');
		    if ($query->num_rows()>0) {
		    	$idControlPiso = $query->result_array()[0]['idControlPiso'];
		    }
			for ($i=0; $i < count($detalle); $i++) {	
				$index2 = explode(",",$detalle[$i]);
				$result = $this->db->query("call detalleControlPiso(".$index2[0].",'".$index2[1]."','".$index2[2]."','".$index2[3]."','".$index2[4]."',".$index2[5].",".$index2[6].",".$index2[7].",".$idControlPiso.")");
			}
		}
		if ($result) {
			echo 1;
		}else{
			echo 0;
		}
	}

	public function guardandoRegistroElectrico($registroElectrico) {
		for ($i=0; $i < count($registroElectrico); $i++) { 
			$index = explode(",",$registroElectrico[$i]);
			$horaInicio = date('H:i:s', strtotime($index[2]));
			$horaFinal = date('H:i:s', strtotime($index[3]));
			$result = $this->db->query("call consumoElectrico('".$index[0]."','".$index[1]."','".$horaInicio."','".$horaFinal."',".$index[4].",".$index[5].",'".$index[6]."')");
		}
		if ($result) {
			echo 1;
		}
	}

	public function consumoElectrico($consecutivo) {
		$this->db->where('consecutivo', $consecutivo);
		$query = $this->db->get('consumoelectrico');
		if ($query->num_rows()>0) {
			return $query->result_array();
		}else {
			return false;
		}
	}
}
?>