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

	public function guardarProduccionDiaria($fecha,$val1,$val2,$val3,$val4,$val5,$val6,$val7,$val8,$val9,$meta) {
		$this->db->select('Consecutivo');
		$this->db->where('Estado', true);
		$cons = $this->db->get('metas');

		$this->db->where('fecha', $fecha);
		$query = $this->db->get('produccion_diaria');

		if ($query->num_rows()>0) {
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
		)); }else {
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
		}	
        echo ($this->db->affected_rows() > 0) ? 1 : 0;
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
}
?>