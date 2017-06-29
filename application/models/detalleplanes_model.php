<?php 
defined('BASEPATH') or exit('No direct script access allowed');
class detalleplanes_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    
        public function BuscarIdPlan($id)
    {
        $this->db->where('IdPlan= ',$id);
        $query = $this->db->get("planes");
         if ($query->num_rows()>0) {
            return $query->result_array();
        } else {
         return false;
        }
    }

    public function ListarInsumos()
    {
        $query = $this->db->get("insumos");
         if ($query->num_rows()>0) {
            return $query->result_array();
        } else {
         return false;
        }
    }

     public function ListarTanques()
    {
        $query = $this->db->get("tanques");
         if ($query->num_rows()>0) {
            return $query->result_array();
        } else {
         return false;
        }
    }
}
?>