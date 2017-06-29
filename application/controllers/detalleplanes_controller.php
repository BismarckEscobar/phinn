<?php 
defined('BASEPATH') or exit('No direct script access allowed');
class detalleplanes_controller extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('detalleplanes_model');
    }

    public function AgregaDetallePlanes($id) {
        $data['planes'] = $this->detalleplanes_model->BuscarIdPlan($id);
        $data['insumos'] = $this->detalleplanes_model->ListarInsumos();
         $data['tanques'] = $this->detalleplanes_model->ListarTanques();
        $this->load->view('header');
        $this->load->view('dashboardclean');
        $this->load->view('Mantenimiento/detalle_planes', $data);
        $this->load->view('footer');
    }

    
}
?>