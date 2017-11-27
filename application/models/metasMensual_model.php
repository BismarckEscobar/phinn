<?php
class metasMensual_model extends CI_Model{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    public function getBolsones()
    {
        $json= array();
        $i=0;
        $this->db->where("Estado",1);
        $query = $this->db->get("bolsones");
        if ($query->num_rows()>0) {     
            foreach ($query->result_array() as $key) {
                $json["data"][$i]["Descripcion"] = $key["Descripcion"];
                $json["data"][$i]["Peso"] = $key["Peso"];
                $i++;
            }
        }
        echo json_encode($json);
    }

    public function getMetas()
    {
        $query = $this->db->get("metas");
        if($query->num_rows()>0){
            return $query->result_array();
        }
        return 0;
    }

    public function ultimoNoUnificado()
    {
        $temp = "";
        $verifica = false;
        $this->db->select('Valor');
        $this->db->limit(1);
        $this->db->order_by("Valor", "desc");
        $idCampania = $this->db->get('llaves');

        if ($idCampania->num_rows() > 0) {
            $temp = $idCampania->result_array()[0]['Valor'];

            $temp = $temp + 1;

            while ($verifica == false) {
                switch ($temp) {
                    case strlen($temp) <= 1:
                        $temp = 'MT-' . '000' . $temp;
                        break;
                    case strlen($temp) <= 2:
                        $temp = 'MT-' . '00' . $temp;
                        break;
                    case strlen($temp) <= 3:
                        $temp = 'MT-' . '0' . $temp;
                        break;
                    case strlen($temp) <= 4:
                        $temp = 'MT-' . $temp;
                        break;
                }
                $verifica = true;
                return $temp;
            }
        } else {
            return false;
        }
    }

    public function incrementarLlave()
    {
        $this->db->select('Valor');
        $this->db->limit(1);
        $this->db->order_by("Valor", "desc");
        $llave = $this->db->get('llaves');

        if ($llave->num_rows() > 0) {
            $temp = $llave->result_array()[0]['Valor'];

            $temp = $temp + 1;

            $data = array(
                'Concepto' => 'Metas',
                'Valor' => $temp
            );

            $this->db->insert('llaves', $data);
        }
    }

    public function guardaMetas( $cons, $eco1, $eco2, $cholin1, $cholin2, $generico1, $generico2, $cholinhd1, $bolson, $cholinhd2)
    {
        $validate = $this->db->get_where("metas", array(date("Y-m",strtotime("FechaMeta")) == date("Y-m")));
        if ($validate->num_rows()>0) {
            echo "Ya existe";
        }
        else{
            echo "No existe";
            $data = array("Estado" => 0);
            $qu = $this->db->update("metas", $data);

            if ($qu) {
                $data = array(
                    "Consecutivo" => $cons,
                    "FechaMeta" => date("Y-m-d"),
                    "Eco24/1" => $eco1,
                    "Eco6/4" => $eco2,
                    "Cholin_8/6" => $cholin1,
                    "Cholin_900" => $cholin2,
                    "Generico_Eco_1000" => $generico1,
                    "Generico_Eco_900" => $generico2,
                    "Cholin_HD_32/1" => $cholinhd1,
                    "BolsonServilleta" => $bolson,
                    "Cholin_HD_Gen32/1" => $cholinhd2,
                    "Estado" => 1
                );
                    $this->db->insert("metas", $data);
                    $this->incrementarLlave();
            }
        }
    }

    public function actualizaMetas($id, $eco1, $eco2, $cholin1, $cholin2, $generico1, $generico2, $cholinhd1, $bolson, $cholinhd2)
    {
        $this->db->where("IdMeta",$id);
        $data = array(
            "IdMeta" => $id,
            "Eco24/1" => $eco1,
            "Eco6/4" => $eco2,
            "Cholin_8/6" => $cholin1,
            "Cholin_900" => $cholin2,
            "Generico_Eco_1000" => $generico1,
            "Generico_Eco_900" => $generico2,
            "Cholin_HD_32/1" => $cholinhd1,
            "BolsonServilleta" => $bolson,
            "Cholin_HD_Gen32/1" => $cholinhd2
        );
        $this->db->update("metas", $data);
    }

    public function eliminaMeta($id)
    {
        $this->db->where("IdMeta",$id);
        $this->db->delete("metas");
    }

    public function validar(){
        $validate = $this->db->get_where("metas", array(date("Y-m", strtotime("FechaMeta")) == date("Y-m")));
        if ($validate->num_rows() > 0) {
            return "Ya existe";
        } else {
            return "No existe";
        }
    }

}