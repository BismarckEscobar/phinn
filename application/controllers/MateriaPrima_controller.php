<?php
class MateriaPrima_controller extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model("MateriaPrima_model");
    }

    public function index()
    {
        $this->load->view('header');
        $this->load->view('dashboardclean');
        $this->load->view('Coordinador/MateriaPrima');
        $this->load->view('footer');
    }

    public function GuardarMatPri()
    {
        $IdRptD = $this->input->get_post("idRptD");   
        $Tanque = $this->input->get_post("Tanque");  
        $dia = $this->input->get_post("dia");   
        $noche = $this->input->get_post("noche");    
        $consumo = $this->input->get_post("consumo");   
        if($dia == "")
        {
            $dia = "—";
        }
        elseif($noche == "")
        {
            $noche = "—";
        }
       $this->MateriaPrima_model->GuardaMP($IdRptD,$Tanque,$dia,$noche,$consumo);
       //echo $IdRptD .", Tanque ".$Tanque .", Dia ".$dia ."Noche:->".$noche ."Counsumo ".$consumo;
    }

        public function agregaDetalleOrdP1($idReporteD) {
        $data['consecutivo'] = $this->Ordenproduccion_model->buscarRtpDiario($idReporteD);
        $data['listamp'] = $this->MateriaPrima_model->ListarPM($idReporteD);
        $this->load->view('header');
        $this->load->view('dashboardclean');
        $this->load->view('Coordinador/MateriaPrima', $data);
        $this->load->view('footer');
    }

    public function ValidarP($tanque,$ID)
        {
            $this->MateriaPrima_model->ValidaPasta($tanque,$ID);
        }
}
?>