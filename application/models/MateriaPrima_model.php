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
}
?>