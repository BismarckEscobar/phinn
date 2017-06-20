<?php
class MateriaPrima_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    public function GuardaMP($Id,$tanque,$dia,$noche,$consumo)
    {
        $datos = array(
            "IdReporteDiario" => $Id,
            "Tanque" => $tanque,
            "Dia" => $dia,
            "Noche" => $noche,
            "Consumo" => $consumo
        );
        $this->db->insert('pasta',$datos);
    }

    public function ListarPM($IdRept)
    {
        $this->db->where("IdReporteDiario =",$IdRept);
        $query = $this->db->get('pasta');
        if ($query->num_rows() > 0) {
            return $query->result_array();
        } else {
            return false;
        }
        
    }
        public function ValidaPasta($tanque,$ID)
    {
        $valor = false;
        $this->db->where("Tanque",$tanque);
        $this->db->where('IdReporteDiario',$ID);
        $query = $this->db->get('pasta');
        if ($query->num_rows()>0) {
            $valor = true;
        }
        else{
            $valor = false;
        }
        echo $valor;
    }

    public function ListarInsumos()
    {
        $this->db->where('IdCategoria',2);
        $query = $this->db->get('insumos');
        if ($query->num_rows()>0) {
            return $query->result_array();
        } else {
            return false;
        }
        
    }

    public function GuardarMPInsumos($idrptd,$desc,$Dia,$Noche,$ptadia,$ptanoche)
    {
        $datos = array(
            "IdReporteDiario" => $idrptd,
            "Descripcion" => $desc,
            "Dia" => $Dia,
            "Noche" => $Noche,
            "Cantidad_PTA_Agua_Dia" => $ptadia,
            "Cantidad_PTA_Agua_Noche" => $ptanoche
        );
        $this->db->insert('mp_insumos',$datos);
    }

    public function ListarPMInsumos($IdRept)
    {
            $this->db->where("IdReporteDiario =",$IdRept);
        $query = $this->db->get('view_mp_insumos');
        if ($query->num_rows() > 0) {
            return $query->result_array();
        } else {
            return false;
        }
    }

    public function ValidaMPInsumo($ID,$des)
    {
        $valor = false;
        $this->db->where('IdReporteDiario',$ID);
        $this->db->where("Descripcion",$des);
        $query = $this->db->get('mp_insumos');
        if ($query->num_rows()>0) {
            $valor = true;
        }
        else{
            $valor = false;
        }
        echo $valor;
    }
     public function EliminaPasta($id)
    {
        $this->db->where("IdPasta",$id);
        $this->db->delete('pasta');
    }

    public function EliminaPMInsumo($id)
    {
        $this->db->where("IdMpInsumos",$id);
        $this->db->delete('mp_insumos');
    }
}
?>