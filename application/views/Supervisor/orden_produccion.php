<main class="mdl-layout__content mdl-color--grey-100">
    <div class="row">
        <div class="col s12">
            <div class="card">
                <div class="card-content">
                    <center><span class="card-title purple-text accent-4" style="font-family: robotoblack;">ORDEN DE PRODUCCIÓN</span></center>
                    <?php 
                    foreach($listaReport as $key) {?>
                    <div class="row">
                        <center>
                            <div class="col s4">
                                <span class="card-title purple-text accent-4" id="lblnoOrden"><?php echo $key["NoOrden"]?></span><br/>
                                <label class="labelValidacion">N° ORDEN ACTIVA</label>
                            </div>
                            <div class="col s4">
                                <span id="lblFechaInicio" class="card-title purple-text accent-4"><?php echo $key["FechaInicio"]?></span><br/>
                                <label  class="labelValidacion">FECHA DE INICIO</label>
                            </div>
                            <div class="col s4">
                                <span id="lblFechaFin" class="card-title purple-text accent-4" id="lblnoOrden"><?php echo $key["FechaFin"]?></span><br/>
                                <label class="labelValidacion">FECHA FINAL</label>
                            </div>
                        </center>
                    </div>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
    </div>
    <div class="row">
        <div class="col s12">
            <div class="card">
                <div class="card-content">
                    <div class="right row">
                        <div id="OrdeProd" class="col s12 m12">
                            <a data-tooltip='AGREGAR NUEVA ORDEN' href="#ordenprod" class="modal-trigger tooltipped">
                                <i style='font-size:50px; color:#8b008b;' class="mdi-image-add-to-photos"></i>
                            </a>
                        </div>
                    </div>
                    <center><h4 class="card-title purple-text accent-4" style="font-family: robotoblack;">ORDENES DE TRABAJOS</h4></center>
                    <table id="TblMaster" class="striped">
                        <thead>
                            <tr class="tblcabecera">
                                <th>N° ORDEN</th>
                                <th>TURNO</th>
                                <th>FECHA INICIO</th>
                                <th>FECHA FIN</th>
                                <th>COORDINADOR</th>
                                <th>GRUPO</th>
                                <th>TIPO PAPEL</th>
                            </tr>   
                        </thead>
                        <tbody>
                            <?php
                            if (($lista)) {
                            foreach ($lista as $key) {
                            switch($key["Turno"])
                                {
                                    case '6:00am-6:00pm':
                                    $key["Turno"] = "MATUTINO";
                                    break;
                                    case '6:00pm-6:00am':
                                    $key["Turno"] = "VESPERTINO";
                                    break;
                                }?>
                            <?php if ($this->session->userdata("IdUser") == $key["Coordinador"]) {?>
                            <tr>
                                <td>
                                    <a href="../index.php/menuOrdenTrabajo/<?php echo $key["IdReporteDiario"]?>"><?php echo $key["Consecutivo"]?></a>
                                </td>
                                <td><?php echo $key["Turno"]?></td>
                                <td><?php echo $key["FechaInicio"]?></td>
                                <td><?php echo $key["FechaFinal"]?></td>
                                <td><?php echo $key["Nombre"]?></td>
                                <td><?php echo $key["Grupo"]?></td>
                                <td><?php echo $key["TipoPapel"]?></td>
                            </tr> 
                            <?php }?>
                            <?php } ?>   
                            <?php } ?>              
                        </tbody>
                    </table>  
                </div>
            </div>
        </div>
    </div>
<<<<<<< HEAD
</div>


<div class="div-cont">
    <table id="TblMaster">
    <thead>
        <tr>
        <td>N° ORDEN</td>
        <td>TURNO</td>
        <td>FECHA_INICIO</td>
        <td>FECHA_FIN</td>
        <td>COORDINADOR</td>
        <td>GRUPO</td>
        <td>TIPO PAPEL</td>
        <td>Acciones</td>
        </tr>   
    </thead>
    <tbody>
     <?php foreach ($lista as $key) {
       switch($key["Turno"])
     {
        case '6:00am-6:00pm':
                $key["Turno"] = "MATUTINO";
            break;
            case '6:00pm-6:00am':
                  $key["Turno"] = "VESPERTINO";
                break;
     }?>
     <?php if ($this->session->userdata("IdUser") == $key["Coordinador"]) {?>
                <tr>
            <td><?php echo $key["Consecutivo"]." — ".$key["NoOrder"]?></td>
            <td><?php echo $key["Turno"]?></td>
            <td><?php echo $key["FechaInicio"]?></td>
            <td><?php echo $key["FechaFinal"]?></td>
            <td><?php echo $key["Nombre"]?></td>
            <td><?php echo $key["Grupo"]?></td>
            <td><?php echo $key["TipoPapel"]?></td>
            <td><a href="#"><i class="small mdi-action-note-add tooltipped" data-tooltip="Agregar informacion"></i></a></td>
        </tr> 
     <?php }?>
    <?php } ?>   
    </tbody>
</table>
</div>

 </main>
=======
</main>
>>>>>>> a3d12e180f8311a6dd050a26e9718c7fb7f0e3ba

<!--/////////////////////////////////////////////////////////////////////////////////////////
                                        MODALES
//////////////////////////////////////////////////////////////////////////////////////////-->
<!--  -->
<div id="ordenprod" class="modal">
    <div class="modal-content">
        <div class="right row">
            <div class="col s1 m1 l1">
                <a href="#!" class="BtnClose modal-action modal-close noHover">
                    <i class="small mdi-navigation-cancel"></i>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col s12">
                <center>
                    <h5><span class="pink-text">ORDEN DE TRABAJO N°: </span>
                    <span class="pink-text" id="spanNoOrdenT"><?php echo $key["NoOrden"]?></span></h5>
                    <label>( PROCESO HUMEDO )</label>    
                </center>            
            </div>
        </div>
        <div class="row">
            <form action="<?php echo base_url("index.php/GuardaOrden")?>"  method="post" name="formAddUser">
                <div class="row">
                    <?php foreach($listaReport as $key) {?>
                        <input type="hidden" name="noOrden1" value="<?php echo $key["NoOrden"]?>" id="noOrden1">
                    <?php } ?>                   
                    <input type="hidden" name="cons" id="cons">   
                    
                    <div class="input-field col s6 m6 s6">
                        <input type="date" name="Fechainicio" id="Fechainicio" class="datepicker">
                        <label id="lblFechainicio" class="labelValidacion">Fecha de inicio</label>
                    </div>
             
                    <div class="input-field col s6 m6 s6">
                        <input type="date" name="Fechafin" id="Fechafin" class="datepicker">
                        <label id="lblFechafin" class="labelValidacion">Fecha fin</label>
                    </div>
                </div><br>
                <div class="row">
                    <div class="input-field col s6 m6 s6">
                        <input id="timepicker" class="timepicker" type="time">
                        <label for="timepicker">Hora inicio</label>
                    </div>
                    <div class="input-field col s6 m6 s6">
                        <input id="timepicker1" class="timepicker" type="time">
                        <label for="timepicker1">Hora final</label>
                    </div> 
                </div>
                <br><br>
                <div class="row">
                    <div class="input-field col s3 m3 s3">
                        <input type="text" name="grupo" id="grupo">
                        <label id="lblgrupo" class="labelValidacion">DIGITE EL GRUPO</label>
                    </div>
                    <div class="input-field col s3 m3 s3">
                        <input type="text" name="papel" id="papel">
                        <label id="lblpapel" class="labelValidacion">TIPO PAPEL</label>
                    </div>
                    <br>
                    <div class="col s6 m6 s6">
                        <select name="coordinador" id="coordinador" class="chosen-select browser-default">
                            <option value="" disabled selected>COORDINADOR</option>
                            <?PHP
                            if(!$coordinadores){
                            } else {
                                foreach($coordinadores as $key){
                                    echo '<option value="'.$key['IdUsuario'].'">'.$key['Nombre'].'</option>';
                                }
                            }
                            ?>
                        </select>
                        <label id="lblcoordinador" class="lblValidacion">ELIGE UN COORDINADOR</label>
                    </div>
                </div>
                <br>
                <div class="row">
                   <fieldset style="border-color:purple;">
                       <legend>TURNO</legend>
                       <div class="col s3 m3 s3">
                        <input class="with-gap"  type="radio" id="turno" name="turno" value="6:00am-6:00pm">
                        <label for="turno">6:00am - 6:00pm</label>
                       </div>
                        <div class="col s3 m3 s3">
                        <input class="with-gap"  type="radio" id="turno1" name="turno" value="6:00pm-6:00am">
                        <label for="turno1">6:00pm - 6:00am</label>
                       </div>
                   </fieldset>
                   <br><br>
                    <div class="center">
                        <button name="usersubmit" type="submit" class="Btnadd btn waves-effect waves-light" id="AddOrden" style="background-color:#831F82;">GUARDAR
                            <i class="mdi-content-send right"></i>
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>