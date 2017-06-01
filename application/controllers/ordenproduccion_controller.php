<?php
class Ordenproduccion_controller extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
        $user = $this->session->userdata('logged');

        if (!isset($user)) {
            redirect(base_url().'index.php','refresh');
        }
    }

    public function index()
    {
        $data['coordinadores'] = $this->Ordenproduccion_model->ListarCoord();
        $data['listaReport'] = $this->Ordenproduccion_model->listaReportes();
        $this->load->view('header');
        $this->load->view('dashboardclean');
        $this->load->view('Supervisor/orden_produccion', $data);
        $this->load->view('footer');
    }

    public function GuardarRD()
    {
        $FechaInic = $this->input->get_post("Fechainicio");
        $FechaFin = $this->input->get_post("Fechafin");
        $coor = $this->input->get_post("coordinador");
        $grupo = $this->input->get_post("grupo");
        $tipopapel = $this->input->get_post("papel");
        $this->Ordenproduccion_model->Guardar($turno, $FechaInic, $FechaFin ,$coor ,$grupo ,$tipopapel);
        redirect("OrdenProduccion");
        //echo $FechaInic ,$FechaFin ,$coor, $grupo  , $tipopapel;
    }
}