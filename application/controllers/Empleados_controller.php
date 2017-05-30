<?php
	class Empleados_controller extends CI_Controller{
		public function __construct(){
			parent::__construct();
			$this->load->library('session');
			$user = $this->session->userdata('logged');
			
			if (!isset($user)) { 
				redirect(base_url().'index.php','refresh');
			} 
		}

		public function index(){
			$data['TBW'] = $this->Empleados_model->allempleados();
			$data['Cargo'] = $this->Empleados_model->allCargo();
			$this->load->view('header');
			$this->load->view('dashboardclean');
			$this->load->view('empleados',$data);
			$this->load->view('footer');
		}
        		
		public function Eliminar($cod, $status){
			$this->Works->del($cod, $status);
		}

		public function GuardarEm(){

		}

		public function Calendario($cod){
			$query = $this->Works->Calendario($cod);
			
			echo json_encode($query);
		}

		public function GCalendario($cod,$title,$start){
			$this->Works->GCalendario($cod,$title,$start);
		}

		public function UCalendario($Id,$IdE,$Punto,$Fecha){
			$this->Works->UCalendario($Id,$IdE,$Punto,$Fecha);
		}

		public function FEvento($Id,$Fecha){
			echo $this->Works->FEvento($Id,$Fecha);
		}
	}