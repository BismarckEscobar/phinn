<?php 
defined('BASEPATH') or exit('No direct script access allowed');
class planes_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    public function GuardarPlan($Fecha,$Com,$Estado)
    {
        $data = array('Estado' => 0 );
        $qu = $this->db->update('planes',$data);

        if($qu){
        $data = array(
            "Fecha" => $Fecha,
        "Comentario" => $Com,
        "Estado" => $Estado
        );
        $this->db->insert("planes",$data);
        }
    }

    public function ActualizarPlan($Estado)
    {
        $estado = 0;
        $data = array('Estado' =>$estado);
        $this->db->where('Estado',$Estado);
        $this->db->update('planes',$data);
    }

    public function ListarPlan()
    {
        $this->db->order_by('Estado','desc');
        $query = $this->db->get('planes');
        if ($query->num_rows()>0) {
            return $query->result_array();
        } else {
         return false;
        }
        
    }
}
?>