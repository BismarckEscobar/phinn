<main class="mdl-layout__content mdl-color--grey-100">
    <div class="row">
        <div class="col s12">
            <div class="card">
                <div class="card-content">
                    <center><span class="card-title purple-text accent-4" style="font-family: robotoblack;">DETALLE DE PLAN DE TRABAJO</span></center>
                    <div class="row">
                        <center>
                            <?php 
                                    if(!($planes)){                                   
                                        } else {
                                            foreach ($planes as $key) {
                                                switch ($key['Estado']) {
                                                    case 1:
                                                        $key['Estado'] = "ACTIVO";
                                                        break;
                                                        case 0:
                                                            $key['Estado'] = "INACTIVO";
                                                        break;
                                                }
                                                echo "
                                            <div class='col s4'>
                                                <span class='card-title purple-text darken-4' id='ordP'>".$key['IdPlan']."</span><br/>
                                                <label class='labelValidacion'>ID PLAN</label>
                                            </div>
                                            <div class='col s4'>
                                                <span class='card-title purple-text darken-4' id='ordC'>".$key['Fecha']."</span><br/>
                                                <label class='labelValidacion'>FECHA</label>
                                            </div>";
                                            if($key['Estado']== "ACTIVO")
                                            {
                                                echo "
                                            <div class='col s4'>
                                                <span class='card-title purple-text darken-4' id='ordT'>".$key['Estado']."</span> <i class='material-icons green-text'>lock_open</i><br/>
                                                <label class='labelValidacion'>ESTADO</label>
                                            </div>";
                                            }
                                            else{
                                                echo"
                                            <div class='col s4'>
                                                <span class='card-title purple-text darken-4' id='ordT'>".$key['Estado']."</span> <i class='material-icons'>lock</i><br/>
                                                <label class='labelValidacion'>ESTADO</label>
                                            </div>";
                                            }
                                          }
                                        }
                                ?>
                        </center>
                    </div>
                </div>
            </div>
        </div>
    </div>

 <div class="row">
        <div class="col s12">
            <div class="card">
                <div class="card-content">
                
                    <center><span class="card-title purple-text accent-4" style="font-family: robotoblack;"></span></center>
                    

                    <div class="fixed-action-btn">
                        <a id="btnAddDetPlan" class="tooltipped btn-floating btn-large amber darken-4" data-position="left" data-tooltip="AGREGAR DETALLE">
                        <i class="large material-icons">add</i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>


<div id="DetPlanModal" class="modal1" style="height:2000px; width:80%;">
    <div class="modal-content">
        <div class="right row">
            <div class="col s1 m1 l1">
                <a href="#!" class="BtnClose modal-action modal-close noHover">
                    <i class="material-icons">highlight_off</i>
                </a>
            </div>
        </div>
        <div class="row noMargen center">
            <div class="noMargen col s12 m12 l12">
                <h6 class="center" style="font-family:'robotoblack'; color:#831F82;font-size:30px; margin-bottom:30px;">AGREGAR DETALLE PLAN</h6>
            </div>
        </div>
        <div class="row">
         <form action="" method="post">
                <div class="col s6 m6 s6">
                <table id="chkInsumo" class="striped responsive-table">
                    <thead>
                      <tr class="tblcabecera">
                       <th>INSUMOS</th>
                      </tr>
                    </thead>
                    <tbody>
                    <?php 
                        foreach($insumos as $key)
                        {
                            echo'<tr>
                          <td> <p>
                            <input type="checkbox" name="insumos" id="'.$key['IdInsumo'].'" value="'.$key['IdInsumo'].'"/>
                            <label class="purple-text" for="'.$key['IdInsumo'].'">'.$key['Descripcion'].'</label>
                            </p></td>
                        </tr>';
                        }
                    ?>
                    </tbody>
                </table>
                </div>
                <div class="col s6 m6 s6">
                    <table id="chkTanques" class="striped responsive-table">
                        <thead>
                          <tr class="tblcabecera">
                            <th>TANQUES</th>
                          </tr>
                        </thead>
                        <tbody>
                            <?php
                              foreach($tanques as $key){
                                echo'
                                    <tr>
                                        <td>
                                        <p>
                                            <input type="checkbox" name="tanques" id="'.$key['Tanque'].'" value="'.$key['IdTanque'].'"/>
                                            <label class="purple-text" for="'.$key['Tanque'].'">'.$key['Tanque'].'</label>
                                        </p>
                                        </td>
                                    </tr>
                                ';
                              }
                            ?>
                        </tbody>
                    </table>
                </div>
                <br><br>
                <div class="row">
                    <div class="center">
                        <a href="#" class="btn waves-effect waves-light purple darken-2" >GUARDAR</a>
                        <a href="#" class="btn waves-effect waves-light purple darken-2 modal-action modal-close noHover">CERRAR <i class="material-icons">close</i></a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>