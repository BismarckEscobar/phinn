<?php 
defined('BASEPATH') or exit('No direct script access allowed');
class Mantenimiento_controller extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        		$this->load->library('session');
		//$this->seguridad->estactivo($this->session->userdata('logged'));	
		$user = $this->session->userdata('logged');

           if (!isset($user)) {
               redirect(base_url().'index.php','refresh');
           }
    }

    public function index()
    {
        $this->load->view('header');
        $this->load->view('dashboardclean');
		$this->load->view('Mantenimiento/menu_mantenimiento');
		$this->load->view('footer');
    }
}
?>