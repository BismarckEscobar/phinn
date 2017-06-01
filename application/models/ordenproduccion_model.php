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

    public function ListarCoord()
    {
        $query = $this->db->where('Privilegio',4);
        $query = $this->db->where("Estado",1);
        $query = $this->db->get('usuarios');
        if ($query->num_rows()>0) {
            return $query->result_array();
        } else {
            return false;
        }
    }

        public function Guardar($FechaIn, $FechaFin, $Coord, $Grup, $Tipo)
    {
        $data = array(
            "FechaInicio" => $FechaIn,
            "FechaFinal" => $FechaFin,
            "Coordinador" => $Coord,
            "Grupo" => $Grup,
            "TipoPapel" => $Tipo
        );
        $this->db->insert("reporte_diario",$data);

    }
}