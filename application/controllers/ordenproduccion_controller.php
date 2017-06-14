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
        $data['lista'] = $this->Ordenproduccion_model->Listar();
        $this->load->view('header');
        $this->load->view('dashboardclean');
        $this->load->view('Supervisor/orden_produccion', $data);
        $this->load->view('footer');
    }

    public function GuardarRD()
    {
        $cons = $this->input->get_post("cons");
        $NoOrd = $this->input->get_post("noOrden1");
        $turno = $this->input->get_post("turno");
        $FechaInic = $this->input->get_post("Fechainicio");
        $FechaFin = $this->input->get_post("Fechafin");
        $coor = $this->input->get_post("coordinador");
        $grupo = $this->input->get_post("grupo");
        $tipopapel = $this->input->get_post("papel");
        $this->Ordenproduccion_model->Guardar($cons, $NoOrd, $turno, $FechaInic, $FechaFin ,$coor ,$grupo ,$tipopapel);
        redirect("OrdenProduccion");
        //echo $cons, $NoOrd, $turno, $FechaInic, $FechaFin ,$coor ,$grupo ,$tipopapel;
    }

    public function buscarUltConsc($dias, $numOrden) {
        $this->Ordenproduccion_model->buscarUltC($dias, $numOrden);
    }

    public function agregaDetalleOrdT1($idReporteD) {
        $data['tiemposM'] = $this->tiemposMuertos_Model->listarTM($idReporteD);
        $data['consecutivo'] = $this->Ordenproduccion_model->buscarRtpDiario($idReporteD);
        //$data['consecutivo'] = array('NoOrden' => $Norden, 'consecutivo' => $consecutivo, 'turno' => $turno);
        $data['listaMaq'] = $this->Ordenproduccion_model->listarMaquinas();
        $this->load->view('header');
        $this->load->view('dashboardclean');
        $this->load->view('Supervisor/detalle_orden_trabajo', $data);
        $this->load->view('footer');
    }

    public function agregaDetalleOrdT($idReporteD) {
        //$data['consecutivo'] = array('NoOrden' => $Norden, 'consecutivo' => $consecutivo, 'turno' => $turno);
        $data['consecutivo'] = $this->Ordenproduccion_model->buscarRtpDiario($idReporteD);
        $this->load->view('header');
        $this->load->view('dashboardclean');
        $this->load->view('Supervisor/menu_orden_trabajo', $data);
        $this->load->view('footer');
    }
}