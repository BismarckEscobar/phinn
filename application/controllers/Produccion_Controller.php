<?php 
defined('BASEPATH') or exit('No direct script access allowed');
class Produccion_Controller extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model("produccion_Model");

    }

    public function index()
    {
        $this->load->view('header');
        $this->load->view('dashboardclean');
        $this->load->view('Coordinador/Produccion');
        $this->load->view('footer');
    }


    public function GuardarProduccion()
    {
        $IdRptD = $this->input->get_post("idRptD");
        $NoOrden = $this->input->get_post("NoOrden");
        $operador = $this->input->get_post("operador");
        $maquina = $this->input->get_post("maquina");
        $HoraInic = $this->input->get_post("timepickerII");
        $HoraFin = $this->input->get_post("timepickerFF");
        $velocidad = $this->input->get_post("Velocidad");
        $peso = $this->input->get_post("peso");
        $diametro = $this->input->get_post("Diametro");
        $pesobase = $this->input->get_post("pesobase");
        $this->produccion_Model->Guardar( $IdRptD, $NoOrden, $operador,$maquina, $HoraInic, $HoraFin,$velocidad, $peso,$diametro, $pesobase);
         //echo  $IdRptD, $NoOrden, $operador,$maquina, $HoraInic, $HoraFin,$velocidad, $peso,$diametro, $pesobase;
    }

        public function agregaDetalleOrdP1($idReporteD) {
        $data['produccion'] = $this->produccion_Model->ListarProd($idReporteD);
        $data['consecutivo'] = $this->Ordenproduccion_model->buscarRtpDiario($idReporteD);
        //$data['consecutivo'] = array('NoOrden' => $Norden, 'consecutivo' => $consecutivo, 'turno' => $turno);
        $data ['Operador'] = $this->produccion_Model->Operario();
        $data['listaMaq'] = $this->Ordenproduccion_model->listarMaquinas();
        $this->load->view('header');
        $this->load->view('dashboardclean');
        $this->load->view('Coordinador/Produccion', $data);
        $this->load->view('footer');
    }

    public function Eliminar($idprod)
    {
        $this->produccion_Model->EliminarProd($idprod);
    }
}
?>