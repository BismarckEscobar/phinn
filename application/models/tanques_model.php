<?php 
defined('BASEPATH') or exit('No direct script access allowed');
class tanques_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    public function ListarTanque()
        {
            $query = $this->db->get('tanques');
            if ($query->num_rows()>0) {
                return $query->result_array();
            } else {
                return false;
            }
            
        }

    public function Guardartanque($tanque)
    {
        $data = array("Tanque" => $tanque);
        $duplicado = $this->db->get_where('tanques',array('Tanque' => $tanque));
        if($duplicado->num_rows()>0){
            echo "Ya existe un registro";
        }else{
           $this->db->insert('tanques',$data);
        }
    }

    public function Eliminar($id)
    {
        $this->db->where('IdTanque',$id);
        $this->db->delete('tanques');
    }
}
?>