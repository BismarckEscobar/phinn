<?php 
defined('BASEPATH') or exit('No direct script access allowed');
class Maquinas_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    public function ListarMaq()
    {
        $query = $this->db->get('maquinas');
        if ($query->num_rows() > 0) {
            return $query->result_array();
        } else {
            return false;
        }
        
    }

    public function GuardarMaq($maq,$comentario)
    {
        $data = array(
            'maquina' => $maq,
            'comentario' => $comentario
        );
        $this->db->insert('maquinas',$data);
    }

    public function EliminarMaq($ID)
    {
        $this->db->where('idMaquina',$ID);
        $this->db->delete('maquinas');
    }
}
?>