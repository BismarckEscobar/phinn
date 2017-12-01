<?php 
defined('BASEPATH') or exit('No direct script access allowed');

class produccionDiaria_Model extends CI_Model {
	function __construct() {
		parent::__construct();
		$this->load->database();
	}

	public function listandoProdDxM($meta) {
		$i=0;
		$json = array();
		$query=$this->db->query("CALL sp_produccionDiaria('".$meta."')");
		
		$this->db->order_by("fecha", "asc");
		$query1=$this->db->get('tmp_produccion');
		if ($query1->num_rows()>0) {
            foreach ($query1->result_array() as $key) {
	            $json['data'][$i]['fecha'] = $key['fecha'];
	            $json['data'][$i]['1'] = $key['1'];
	            $json['data'][$i]['2'] = $key['2'];
	            $json['data'][$i]['3'] = $key['3'];
	            $json['data'][$i]['4'] = $key['4'];
	            $json['data'][$i]['5'] = $key['5'];
	            $json['data'][$i]['6'] = $key['6'];
	            $json['data'][$i]['7'] = $key['7'];
	            $json['data'][$i]['8'] = $key['8'];
	            $json['data'][$i]['9'] = $key['9'];
	            $json['data'][$i]['TBD'] = $key['TBD'];
	            $json['data'][$i]['TNS'] = $key['TNS'];
	            $json['data'][$i]['OPC'] = "	
                <div class='nav'>
                    <a class='dropdown-button btn-floating' href='#' data-activates='dropdown-".$i."'><i class='small material-icons'>list</i></a>
                    <ul id='dropdown-".$i."' class='dropdown-content ul-dr'>
						<li><a href='#!' onclick='editandoProduccion(".'"'.$key['fecha'].'"'.", 1)'>Editar</a></li>
						<li class='divider'></li>
						<li><a onclick='deleteProduccion(".'"'.$key['fecha'].'"'.", 2)' href='#' style='color:red'>Eliminar</a></li>
                    </ul>
                </div>";
	            $i++; 
            }
		}
		echo json_encode($json);
	}

	public function listarMetas() {
		setlocale(LC_TIME, 'spanish');
        
        $this->db->select('Consecutivo');
        $this->db->select('FechaMeta');
        $this->db->order_by("Estado", "desc");
        $query_meta = $this->db->get('metas');
        
        foreach ($query_meta->result_array() as $key) {
        	$inicio = strftime("%B - %Y", strtotime($key['FechaMeta']));
            $temp[] = array(
                'value' => $key['Consecutivo'],
                'desc' =>  $inicio
            );                
        }
        return $temp;
	}

	public function soloMetas($meta) {
		$this->db->where('Consecutivo', $meta);
		$this->db->select('Eco24/1');
		$this->db->select('Eco6/4');
		$this->db->select('Cholin_8/6');
		$this->db->select('Cholin_900');
		$this->db->select('Generico_Eco_1000');
		$this->db->select('Generico_Eco_900');
		$this->db->select('Cholin_HD_32/1');
		$this->db->select('BolsonServilleta');
		$this->db->select('Cholin_HD_Gen32/1');
		$query = $this->db->get('metas');

		if ($query->num_rows()>0) {
			return $query->result_array();
		}else {
			return false;
		}
	}

	public function soloPesos() {
		$this->db->select('Peso');
		$query = $this->db->get('Articulos');
		if ($query->num_rows()>0) {
			return $query->result_array();
		}else {
			return false;
		}
	}

	public function guardarProduccionDiaria($fecha,$val1,$val2,$val3,$val4,$val5,$val6,$val7,$val8,$val9,$tipo) {
		$this->db->select('Consecutivo');
		$this->db->where('Estado', true);
		$cons = $this->db->get('metas');

		$this->db->where('fecha', $fecha);
		$query = $this->db->get('produccion_diaria');

		if ($query->num_rows()>0 && $tipo=='u') {
			$this->db->where('fecha', $fecha);
			$this->db->update('produccion_diaria', array(
				'fecha' => $fecha,
				'val1' => $val1,
				'val2' => $val2,
				'val3' => $val3,
				'val4' => $val4,
				'val5' => $val5,
				'val6' => $val6,
				'val7' => $val7,
				'val8' => $val8,
				'val9' => $val9,
				'IdMeta' => $cons->result_array()[0]['Consecutivo']
			));
		}elseif ($query->num_rows()>0 && $tipo=='i') {
			echo 2;
		}else {
			$this->db->insert('produccion_diaria', array(
				'fecha' => $fecha,
				'val1' => $val1,
				'val2' => $val2,
				'val3' => $val3,
				'val4' => $val4,
				'val5' => $val5,
				'val6' => $val6,
				'val7' => $val7,
				'val8' => $val8,
				'val9' => $val9,
				'IdMeta' => $cons->result_array()[0]['Consecutivo']
			));
			echo ($this->db->affected_rows() > 0) ? 1 : 0;
		}        
	}

	public function gestionandoProduccionDiaria($fecha, $tipo) {
		if ($tipo == 1) {
			$this->db->where('fecha', $fecha);
			$result = $this->db->get('tmp_produccion');
			if ($result->num_rows()>0) {
				echo json_encode($result->result_array());
			}else {
				echo false;
			}
		}elseif ($tipo == 2) {
			$this->db->where('fecha', $fecha);
			$query=$this->db->delete('produccion_diaria');
			if ($query==1) {
				echo true;
			}else {echo false;}
		}
	}

	public function soloFecha($meta) {
		setlocale(LC_TIME, 'spanish');
		$this->db->where('Consecutivo', $meta);
		$this->db->select('FechaMeta');
		$query = $this->db->get('metas');
		if ($query->num_rows()>0) {
			return strftime("%B %Y", strtotime($query->result_array()[0]['FechaMeta']));
		}else {
			return false;
		}
	}

	public function generandoDataRpt($meta) {
		$dataRpt=array(); $i=0; $ii=0; $ult=0; $cont=0;
		$query_sp_prod=$this->db->query("CALL sp_produccionDiaria('".$meta."')");

		$query_rpt_pro=$this->db->query("CALL sp_controlProduccionMensual('".$meta."')");
		
		$query_rpt_pro->next_result();

		$this->db->order_by("fecha", "asc");
		$query_tmp=$this->db->get('tmp_produccion');
		if ($query_tmp->num_rows()>0) {
			foreach ($query_tmp->result_array() as $key) {
				$temp = date('w', strtotime($key['fecha']));
				if ($temp==1) {
                    $row[]=$query_rpt_pro->row_array($ii);                    
                    foreach ($row as $key1) {
						$dataRpt[$i]['v1'] = 'Total semana';
						$dataRpt[$i]['v2'] = $key1['v1'];
						$dataRpt[$i]['v3'] = $key1['v2'];
						$dataRpt[$i]['v4'] = $key1['v3'];
						$dataRpt[$i]['v5'] = $key1['v4'];
						$dataRpt[$i]['v6'] = $key1['v5'];
						$dataRpt[$i]['v7'] = $key1['v6'];
						$dataRpt[$i]['v8'] = $key1['v7'];
						$dataRpt[$i]['v9'] = $key1['v8'];
						$dataRpt[$i]['v10'] = $key1['v9'];
						$dataRpt[$i]['v11'] = '';
						$dataRpt[$i]['v12'] = '';
                    }$i++;

                    foreach ($row as $key2) {
						$dataRpt[$i]['v1'] = 'Promedio';
						$dataRpt[$i]['v2'] = $key2['v1']/$cont;
						$dataRpt[$i]['v3'] = $key2['v2']/$cont;
						$dataRpt[$i]['v4'] = $key2['v3']/$cont;
						$dataRpt[$i]['v5'] = $key2['v4']/$cont;
						$dataRpt[$i]['v6'] = $key2['v5']/$cont;
						$dataRpt[$i]['v7'] = $key2['v6']/$cont;
						$dataRpt[$i]['v8'] = $key2['v7']/$cont;
						$dataRpt[$i]['v9'] = $key2['v8']/$cont;
						$dataRpt[$i]['v10'] = $key2['v9']/$cont;
						$dataRpt[$i]['v11'] = '';
						$dataRpt[$i]['v12'] = '';
                    }$i++; $ii++; $cont=1;
				}else {
					$cont++;
				}
				$dataRpt[$i]['v1'] = date('d/m/Y', strtotime($key['fecha']));
				$dataRpt[$i]['v2'] = $key['1'];
				$dataRpt[$i]['v3'] = $key['2'];
				$dataRpt[$i]['v4'] = $key['3'];
				$dataRpt[$i]['v5'] = $key['4'];
				$dataRpt[$i]['v6'] = $key['5'];
				$dataRpt[$i]['v7'] = $key['6'];
				$dataRpt[$i]['v8'] = $key['7'];
				$dataRpt[$i]['v9'] = $key['8'];
				$dataRpt[$i]['v10'] = $key['9'];
				$dataRpt[$i]['v11'] = $key['TBD'];
				$dataRpt[$i]['v12'] = $key['TNS'];
				$i++;
				$ult++;
			}
			if ($ult == count($query_tmp->result_array())) {
                $row[]=$query_rpt_pro->row_array($ii);                    
                foreach ($row as $key1) {
					$dataRpt[$i]['v1'] = 'Total semana';
					$dataRpt[$i]['v2'] = $key1['v1'];
					$dataRpt[$i]['v2'] = $key1['v1'];
					$dataRpt[$i]['v3'] = $key1['v2'];
					$dataRpt[$i]['v4'] = $key1['v3'];
					$dataRpt[$i]['v5'] = $key1['v4'];
					$dataRpt[$i]['v6'] = $key1['v5'];
					$dataRpt[$i]['v7'] = $key1['v6'];
					$dataRpt[$i]['v8'] = $key1['v7'];
					$dataRpt[$i]['v9'] = $key1['v8'];
					$dataRpt[$i]['v10'] = $key1['v9'];
					$dataRpt[$i]['v11'] = '';
					$dataRpt[$i]['v12'] = '';					
				}
				$i++;
                foreach ($row as $key2) {
					$dataRpt[$i]['v1'] = 'Promedio';
					$dataRpt[$i]['v2'] = $key2['v1']/$cont;
					$dataRpt[$i]['v3'] = $key2['v2']/$cont;
					$dataRpt[$i]['v4'] = $key2['v3']/$cont;
					$dataRpt[$i]['v5'] = $key2['v4']/$cont;
					$dataRpt[$i]['v6'] = $key2['v5']/$cont;
					$dataRpt[$i]['v7'] = $key2['v6']/$cont;
					$dataRpt[$i]['v8'] = $key2['v7']/$cont;
					$dataRpt[$i]['v9'] = $key2['v8']/$cont;
					$dataRpt[$i]['v10'] = $key2['v9']/$cont;
					$dataRpt[$i]['v11'] = '';
					$dataRpt[$i]['v12'] = '';
                }
			}
		}
		return $dataRpt;
	}
}
?>