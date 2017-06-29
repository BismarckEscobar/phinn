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
        $this->db->insert('tanques',$data);
    }
}
?>