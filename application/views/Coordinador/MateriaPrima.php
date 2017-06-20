<main class="mdl-layout__content mdl-color--grey-100">
    <div class="row">
        <div class="col s12">
            <div class="card">
                <div class="card-content">
                    <center><span class="card-title purple-text accent-4" style="font-family: robotoblack;">DETALLE DE ORDEN DE TRABAJO</span></center>
                    <div class="row">
                        <center>
                            <?php 
                                    if(!($consecutivo)){                                   
                                        } else {
                                            foreach ($consecutivo as $key) {
                                                echo "
                                            <div class='col s4'>
                                                <span class='card-title purple-text darken-4' id='ordP'>".$key['NoOrder']."</span><br/>
                                                <label class='labelValidacion'>N° ORDEN DE PRODUCCIÓN</label>
                                            </div>
                                            <div class='col s4'>
                                                <span class='card-title purple-text darken-4' id='ordC'>".$key['Consecutivo']."</span><br/>
                                                <label class='labelValidacion'>N° CONSECUTIVO DE TRABAJO</label>
                                            </div>
                                            <div class='col s4'>
                                                <span class='card-title purple-text darken-4' id='ordT'>".$key['Turno']."</span><br/>
                                                <label class='labelValidacion'>TURNO</label>
                                            </div>";
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
                    <center>
                        <h5 class="card-title purple-text accent-4" style="font-family: robotoblack;">MATERIA PRIMA</h5>
                    </center>
                    <div id="agregarMP">
                        <a data-tooltip='AGREGAR PASTA' data-position="right" href="#nuevaMatPrim" class="modal-trigger left-align tooltipped btn waves-effect waves-light purple">AGREGAR  <i class="material-icons">add</i></a>
                    </div>
                    <table id="tblpasta" class="striped responsive-table">
                        <thead>
                            <tr class="tblcabecera">
                                <th>TANQUES</th>
                                <th>DIA</th>
                                <th>NOCHE</th>
                                <th>CONSUMO</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                if (!($listamp)) {
                                } else {
                                    foreach ($listamp as $key) {
                                       if($key['Dia'] == "")
                                       {
                                            $key['Dia'] = "—";
                                       }elseif($key['Noche'] == "")
                                       {
                                            $key['Noche'] = "—";
                                       }
                                       switch ($key['Tanque']) {
                                           case $key['Tanque']:
                                                $key['Tanque'] = "Tanque #".$key['Tanque']."";
                                               break;
                                       }
                                       echo '
                                       <tr>                                  
                                            <td>'.$key['Tanque'].'</td>
                                            <td>'.$key['Dia'].'</td>
                                            <td>'.$key['Noche'].'</td>
                                            <td>'.$key['Consumo'].'</td>
                                       </tr>';
                                    }
                                }
                                
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    </main>


    <div id="nuevaMatPrim" class="modal1" style="height:420px;">
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
                <h6 class="center" style="font-family:'robotoblack'; color:#831F82;font-size:30px; margin-bottom:30px;">AGREGAR PASTA</h6>
            </div>
        </div>

        <div class="row">
            <form class="col s12" method="POST" name="formAgregarMatPrim" id="formAgregarMatPrim">
                    <?php 
                    if(!($consecutivo)){

                     }
                     else {
                        foreach ($consecutivo as $key) {
                           echo "<input name='idRptD' id='idRptD' type='hidden' value='". $key['IdReporteDiario']."'> ";                         
                           }
                         }
                         ?>
                         <?php foreach ($consecutivo as $key) { ?>
                         <div class="row">
                         <?php if ($key['Turno'] == "6:00am-6:00pm") {?>
                             <div class="input-field col s6 m6 s6">
                                <input id="dia" class="" name="dia" type="text">
                                <label for="dia">DIA</label>
                            </div>
                            <div class="input-field col s6 m6 s6">
                                <input disabled type="text" placeholder="Inhabilitado">
                                <label for="">NOCHE</label>
                            </div>
                         <?php } elseif ($key['Turno'] == "6:00pm-6:00am") {?>
                            <div class="input-field col s6 m6 s6">
                                <input disabled type="text" placeholder="Inhabilitado">
                                <label for="">DIA</label>
                            </div>
                            <div class="input-field col s6 m6 s6">
                                <input id="noche" class="" name="noche" type="text">
                                <label for="noche">NOCHE</label>
                            </div>
                         <?php } ?>
                        </div>
                         <?php } ?>
                <br>
                <div class="row">
                    <div class="input-field col s6 m6 s6">
                        <select name="Tanque" id="Tanque" class="chosen-select browser-default">
                            <option disabled selected>TANQUES</option>
                            <option value="1">Tanque #1</option>
                            <option value="2">Tanque #2</option>
                            <option value="3">Tanque #3</option>
                            <option value="4">Tanque #4</option>
                            <option value="5">Tanque #5</option>
                            <option value="6">Tanque #6</option>                  
                        </select>
                         <label id="lbltanque" class="lblValidacion">ELIGE UN TANQUE</label>
                    </div>
                    <div class="input-field col s6 m6 s6">
                        <input type="text" name="consumo" id="consumo">
                        <label for="consumo">CONSUMO</label>
                    </div>
                </div>
               <br>
                <div class="row">
                    <div class="center">
                        <a id="matprim" class="Btnadd btn waves-effect waves-light" onclick="Guardarmp()" href="#" style="background-color:#831F82;">AGREGAR
                            <i class="material-icons right">send</i>
                        </a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
