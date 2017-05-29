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

        public function Guardar($user,$name,$pass,$rol,$estado){
            $data = array(
                'Usuario' => $user,
                'Nombre' => $name,
                'Password' => md5($pass),
                'Privilegio' => $rol,
                'Estado' => $estado
            );
            $this->db->insert('usuarios', $data);
        }

        public function del($id, $estado){
            $this->db->where('IdUsuario', $id);
            $data = array('Estado' => $estado);
            $this->db->update('usuarios', $data);
        }

        public function allUser(){
            $query = $this->db->order_by("IdUsuario","asc");
            $query = $this->db->get('usuarios');
            
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