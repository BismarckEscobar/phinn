<?php
class Login_controller extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
        $this->load->library('session');
	}

    public function index()
    {
        $this->load->view('header_login');
		$this->load->view('Login');
		$this->load->view('footer_login');
    }
    
    public function Salir(){        
        $this->session->sess_destroy();
        $sessiondata = array(
                'logged' => 0
        );

        $this->session->unset_userdata($sessiondata);
        $this->index();
	}
    public function Acreditar(){
    	$this->form_validation->set_rules('txtUsuario', 'Usuario', 'required');
		$this->form_validation->set_rules('txtpassword', 'Contraseña', 'required');
    	
        if ($this->form_validation->run()== FALSE) {
    		 redirect('?error=1'); 
    	}else {
    		$name = $this->input->get_post('txtUsuario');
			$pass = $this->input->get_post('txtpassword');
			
            $data['user'] = $this->Users_model->login($name, $pass);

    		if ($data['user'] == 0) {
    			redirect('?error=2');
    		} else {
                $this->Users_model->InsertLog($data['user'][0]['IdUser']);

                $sessiondata = array(
                                'IdUser' => $data['user'][0]['IdUsuario'],
                                'Usuario' => $data['user'][0]['Usuario'],
                                'Nombre' => $data['user'][0]['Nombre'],
                                'Privilegio' => $data['user'][0]['Privilegio'],
                                'logged' => 1
                                );
                $this->session->set_userdata($sessiondata);

    			redirect('dashboard'); 
    		}
    	}
    }
}
