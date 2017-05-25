<?php

    class Users_model extends CI_Model{
        function __construct(){
            parent::__construct();
            $this->load->database();
        }

        public function login($name, $pass){            
            if($name != FALSE && $pass != FALSE){
                $this->db->where('Usuario', $name);
                $this->db->where('Password', MD5($pass));
                $this->db->where('Estado', 1);
                $query = $this->db->get('Usuarios');

                if($query->num_rows() == 1){
                    return $query->result_array();
                }
                return 0;
            }
        }

        public function Guardar($user,$name,$pass,$rol){
            $data = array(
                'User' => $user,
                'Name' => str_replace("%C3%B1","ñ", str_replace("%20"," ",str_replace("%C3%91","Ñ", str_replace("%20"," ",$name)))),
                'Pass' => $pass,
                'Access' => $rol,
                'Date_Creat' => date('Y-m-d')
            );
            
            $this->db->insert('user', $data);
        }

        public function del($id, $status){
            $this->db->where('IdUser', $id);
            $data = array('Active' => $status);

            $this->db->update('user', $data);
        }

        public function allUser(){        
            $query = $this->db->get('user');        
            
            if($query->num_rows() <> 0){            
                return $query->result_array();
            }
            return 0;
        }

        public function InsertLog($usuario){
            $datos = array('IdUser' => $usuario, 
                    'Accion' => "INGRESO AL SISTEMA EXITOSO",
                    'Fecha' => date('Y-m-d H:i:s')
                    );
            $this->db->insert('log',$datos);
        }
    }