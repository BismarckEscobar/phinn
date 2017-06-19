<?php 
defined('BASEPATH') or exit('No direct script access allowed');
class Produccion_Model extends CI_Model
{
     function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

   public function buscarRtpDiario($idRtpD) {
        $this->db->where('IdReporteDiario =',$idRtpD);
        $query=$this->db->get('reporte_diario');
        if ($query->num_rows()>0) {
            return $query->result_array();
        } else {
            return false;
        }
    }

    public function Operario()
    {
          $query = $this->db->where('Privilegio',5);
        $query = $this->db->where("Estado",1);
        $query = $this->db->get('usuarios');
        if ($query->num_rows()>0) {
            return $query->result_array();
        } else {
            return false;
        }
    }

    public function Guardar($IdRepD, $noOrden, $Oper,$Maq, $HoraIn, $HoraFin, $Velocidad,$peso, $Diam, $pesobase)
    {
        $data = array(
            "IdReporteDiario" => $IdRepD,
            "NoOrden" => $noOrden,
            "Operador" => $Oper,
            "Maquina" => $Maq,
            "HoraInicio" => $HoraIn,
            "HoraFin" => $HoraFin,
            "VelocMaquina" => $Velocidad,
            "Peso" => $peso,
            "Diametro" => $Diam,
            "PesoBase" => $pesobase
        );
        $consulta = $this->db->insert("produccion",$data);
        if($consulta){
            $this->actualizarProduccionTotal($IdRepD);
        }
    }

    public function actualizarProduccionTotal($IdRepD){
        $consulta = $this->db->query("SELECT SUM(Peso) AS TOTAL FROM produccion WHERE IdReporteDiario = '".$IdRepD."' GROUP BY IdReporteDiario");
        $total = $consulta->result_array()[0]['TOTAL'];

        $datos = array('ProduccionTotal' => $total);
        $this->db->where('IdReporteDiario',$IdRepD);
        $this->db->update('reporte_diario',$datos);
    }

    public function ListarProd($IdReporteDiario)
    {
        $this->db->where("IdReporteDiario =",$IdReporteDiario);
        $query = $this->db->get("view_produccion");
        if ($query->num_rows()>0) {
            return $query->result_array();
        }else{
            return false;
        }
    }

    public function EliminarProd($idProd)
    {
        $this->db->where('IdProduccion',$idProd);
        $this->db->delete("produccion");
    }
}
?>