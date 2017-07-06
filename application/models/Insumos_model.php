<?php 
defined('BASEPATH') or exit('No direct script access allowed');
class Insumos_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    public function ListarInsumos()
    {
        $query = $this->db->get('insumos');
        if ($query->num_rows()>0) {
            return $query->result_array();
        } else {
            return false;
        }
        
    }

    public function cargarcat()
    {
        $query = $this->db->get('categoria');
        if ($query->num_rows()>0) {
            return $query->result_array();
        } else {
            return false;
        }
        
    }

    public function GuardarIns($Desc,$IdCat,$UniMed,$Tipo)
    {
        $datos = array(
            "Descripcion" => $Desc,
            "IdCategoria" => $IdCat,
            "UnidadMedida" => $UniMed,
            "Tipo" => $Tipo
        );
         $duplicado = $this->db->get_where('insumos',array('Descripcion' => $Desc,'IdCategoria'=>$IdCat));
        if($duplicado->num_rows()>0){
            echo "Ya existe un registro";
        }else{
        $this->db->insert("insumos",$datos);
        }
    }

    public function EliminarIns($Id)
    {
        $this->db->where("IdInsumo",$Id);
        $this->db->delete("insumos");
    }
}
?>