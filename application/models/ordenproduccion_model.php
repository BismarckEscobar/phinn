<?php
class Ordenproduccion_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    public function listaReportes() {
        $query = $this->db->where('Estado',1);
        $query=$this->db->get('view_orden_produccion');
        if ($query->num_rows()>0) {
            return $query->result_array();
        } else {
            return false;
        }
    }

    public function ListarCoord() {
        $query = $this->db->where('Privilegio',4);
        $query = $this->db->where("Estado",1);
        $query = $this->db->get('usuarios');
        if ($query->num_rows()>0) {
            return $query->result_array();
        } else {
            return false;
        }
    }

    public function Guardar($Cons,$NoOrd,$Turno,$FechaIn, $FechaFin, $Coord, $Grup, $Tipo) {
        $duplicado = $this->db->get_where('reporte_diario',array('Consecutivo' => $Cons, 'Turno' => $Turno));
        if ($duplicado->num_rows() > 0) {
            echo "El registro ya existe";
        }
        else{
        $data = array(
            "Consecutivo" => $Cons,
            "NoOrder" => $NoOrd,
            "Turno" => $Turno,
            "FechaInicio" => $FechaIn,
            "FechaFinal" => $FechaFin,
            "Coordinador" => $Coord,
            "Grupo" => $Grup,
            "TipoPapel" => $Tipo
        );
        $this->db->insert("reporte_diario",$data);
        }
    }

    public function Listar1() {
        $query = $this->db->select("reporte_diario.Consecutivo,reporte_diario.NoOrder,
        reporte_diario.Turno,reporte_diario.FechaInicio,reporte_diario.FechaFinal,reporte_diario.Coordinador,
        usuarios.Nombre, usuarios.IdUsuario,reporte_diario.Grupo,reporte_diario.TipoPapel")
        ->from("reporte_diario")
        ->join("usuarios", "reporte_diario.Coordinador = usuarios.IdUsuario");
        $query = $this->db->order_by("reporte_diario.Consecutivo","asc");
        $query = $this->db->get();
        if ($query->num_rows()>0) {
            return $query->result_array();
        }else{
            return false;
        }
    }

    public function Listar() {
        $query=$this->db->get('view_reporteDiario');
        if ($query->num_rows()>0) {
            return $query->result_array();
        } else {
            return false;
        }
    }
    public function buscarUltC($dias, $numOrden) {
        for ($i=1; $i <= $dias; $i++) { 
            $cons = $i.'-'.$numOrden;

            $this->db->where('Consecutivo =', $cons);
            $query=$this->db->get('reporte_diario');
            if ($query->num_rows()<=1) {
                echo $cons;
                break;
            } else {
                if ($query->num_rows()==1) {
                    break;
                }
            }
        }
    }
    public function listarMaquinas() {
        $query=$this->db->get('maquinas');
        if ($query->num_rows()>0) {
            return $query->result_array();
        } else {
            return false;
        }
    }

    public function buscarRtpDiario($idRtpD) {
        $this->db->select("reporte_diario.IdReporteDiario,reporte_diario.Consecutivo,reporte_diario.NoOrder,
        turnos.Turno,reporte_diario.FechaInicio,reporte_diario.FechaFinal,reporte_diario.Coordinador,
        reporte_diario.Grupo,reporte_diario.TipoPapel")
        ->from("reporte_diario")
        ->join("turnos", "reporte_diario.Turno = turnos.IdTurno")
        ->where('reporte_diario.IdReporteDiario =',$idRtpD);
        $query=$this->db->get();
        if ($query->num_rows()>0) {
            return $query->result_array();
        } else {
            return false;
        }
    }

    public function Valfec($fechaini,$turno,$Conse)
    {
        $valor = false;
        $this->db->where("Consecutivo",$Conse);
        $this->db->where('FechaInicio',$fechaini);
        $this->db->where('Turno',$turno);
        $query = $this->db->get('view_reporteDiario');
        if ($query->num_rows()>0) {
            $valor = true;
        }
        else{
            $valor = false;
        }
        echo $valor;
    }

    public function ListarTurno()
    {
        $query = $this->db->get("turnos");
        if ($query->num_rows()>0) {
            return $query->result_array();
        } else {
            return false;
        }
        
    }
}