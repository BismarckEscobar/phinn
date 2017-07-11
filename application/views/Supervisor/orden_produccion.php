<?php 
if ($this->session->userdata("Privilegio") == 3) {?>
<main class="mdl-layout__content mdl-color--grey-100">
    <div class="row">
        <div class="col s12">
            <div class="card">
                <div class="card-content">
                    <center><span class="card-title purple-text accent-4" style="font-family: robotoblack;">ORDEN DE PRODUCCIÓN</span></center>
                    <?php 
                    if ($listaReport) {
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
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
        <div class="container">
            <div class="Buscar row column">               
                <div class="col s1 m1 l1 offset-l3 offset-m2">
                    <i style='color:#039be5; font-size:40px;' class="material-icons purple-text accent-4">search</i>
                </div>
                <div class="input-field col s12 m6 l4">
                    <input  id="filtrarRpt" type="text" placeholder="Buscar" class="validate">
                    <label for="filtrarRpt"></label>
                </div>
            </div>        
        </div>
<!--<div class="row">
        <div class="col s12">
            <div class="card">
                <div class="card-content">
                    <div class="right row">
                    <div id="OrdeProd" class="col s12 m12">
                            <a data-tooltip='AGREGAR NUEVA ORDEN' href="#ordenprod" class="modal-trigger tooltipped">
                                <i class="mdi-image-add-to-photos titulosGen"></i>
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
                            if (($ordenTrabajos)) {
                            foreach ($ordenTrabajos as $key) {
                            switch($key["Turno"])
                                {
                                    case 1:
                                    $key["Turno"] = "MATUTINO";
                                    break;
                                    case 2:
                                    $key["Turno"] = "VESPERTINO";
                                    break;
                                }?>
                            
                            <tr>
                                <td>
                                    <a href="../index.php/menuSupervisor/<?php echo $key["IdReporteDiario"]?>"><?php echo $key["Consecutivo"]?></a>
                                </td>
                                <td><?php echo $key["Turno"]?></td>
                                <td><?php echo $key["FechaInicio"]?></td>
                                <td><?php echo $key["FechaFinal"]?></td>
                                <td><?php echo $key["Nombre"]?></td>
                                <td><?php echo $key["Grupo"]?></td>
                                <td><?php echo $key["TipoPapel"]?></td>
                            </tr> 
                    
                            <?php } ?>   
                            <?php } ?>              
                        </tbody>
                    </table>  
                </div>
            </div>
        </div>
    </div> -->
        <div class="row">
            <div class="col s12">
                <div class="card">
                    <div class="card-content">
                        <div class="row">
                            <div class="col s6 m6" style="text-align:left;">
                                <div id="retornarP">
                                    <a data-tooltip='REGRESAR' href="<?php echo base_url('index.php/dashboard')?>" class="modal-trigger tooltipped">
                                        <i class="waves-effect waves-purple material-icons titulosGen">keyboard_backspace</i>
                                    </a>
                                </div>  
                            </div>
                            <div class="col s6 m6" style="text-align:right;">
                                <a data-tooltip='AGREGAR NUEVA ORDEN' id="OrdeProd" href="#ordenprod" class="modal-trigger tooltipped">
                                    <i class="waves-effect waves-purple material-icons titulosGen">queue</i>
                                </a>
                            </div>
                        </div>
                        <table id="tlbListaRep2" class="striped">
                            <thead>
                                <tr class="tblcabecera">
                                    <th>Ordenes</th>
                                    <th>Nº orden</th>                                 
                                    <th>Inicio</th>
                                    <th>culminación</th>
                                    <th>Estado</th>
                                    <th>OPCIONES</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    if(!($ordenesTrabajosCom)){
                                    } else {
                                        foreach ($ordenesTrabajosCom as $list) {
                                            if($list['Estado'] == 0){
                                                $activo="<td><a data-tooltip='ORDEN ANULADA' class='btn-flat tooltipped noHover'><i style='color:red; font-size:30px;' class='material-icons'>close</i></a></td>";
                                                $status="<li><a href='#!' onclick='buscarOrdProd(".$list['IdOrden'].")'>Ver</a></li>";
                                            }elseif($list['Estado'] == 1){
                                                $activo="<td><a data-tooltip='ORDEN ACTIVA' class='btn-flat tooltipped noHover'><i style='color:green; font-size:30px;' class='material-icons'>done</i></a></td>";
                                                $status="<li><a href='#!' onclick='cambiaStatusRpt(".$list['IdOrden'].",".$list['NoOrden'].", 0)'>Anular</a></li>
                                                         <li><a href='#!' onclick='cambiaStatusRpt(".$list['IdOrden'].",".$list['NoOrden'].", 2)'>Cerrar</a></li>
                                                         <li><a href='#!' onclick='buscarOrdProd(".$list['IdOrden'].")'>Ver</a></li>";
                                            }elseif($list['Estado'] == 2){
                                                $activo="<td><a data-tooltip='ORDEN CERRADA' class='btn-flat tooltipped noHover'><i style='color:#696969; font-size:30px;' class='material-icons'>lock</i></a></td>";
                                                $status="<li><a href='#!' onclick='cambiaStatusRpt(".$list['IdOrden'].",".$list['NoOrden'].", 0)'>Anular</a></li>
                                                            <li><a href='#!' onclick='buscarOrdProd(".$list['IdOrden'].")'>Ver</a></li>";
                                            }elseif($list['Estado'] == 3){
                                                $activo="<td><a data-tooltip='ORDEN INACTIVA' class='btn-flat tooltipped noHover'><i style='color:red; font-size:30px;' class='material-icons'>info_outline</i></a></td>";
                                                $status="<li><a href='#!' onclick='cambiaStatusRpt(".$list['IdOrden'].",".$list['NoOrden'].", 0)'>Anular</a></li>
                                                        <li><a href='#!' onclick='cambiaStatusRpt(".$list['IdOrden'].",".$list['NoOrden'].", 1)'>Activar</a></li>
                                                        <li><a href='#!' onclick='cambiaStatusRpt(".$list['IdOrden'].",".$list['NoOrden'].", 2)'>Cerrar</a></li>
                                                        <li><a href='#!' onclick='buscarOrdProd(".$list['IdOrden'].")'>Ver</a></li>";
                                            }
                                            echo "<tr>
                                                    <td class='center green-text detalleNumOrd'><i id='detail2".$list['NoOrden']."' class='material-icons expand-more'>expand_more</i><i id='detail1".$list['NoOrden']."' style='display:none;' class='material-icons expand-more'>expand_less</i>
                                                        <div id='loader".$list['NoOrden']."' style='display:none;' class='preloader-wrapper small active' >
                                                            <div class='spinner-layer spinner-yellow-only'>
                                                            <div style='overflow: visible!important;' class='circle-clipper left'>
                                                                <div class='circle'></div>
                                                            </div><div class='gap-patch'>
                                                                <div class='circle'></div>
                                                            </div><div style='overflow: visible!important;' class='circle-clipper right'>
                                                                <div class='circle'></div>
                                                            </div>
                                                            </div>
                                                        </div>
                                                    </td>                                                                        
                                                    <td>".$list['NoOrden']."</td>
                                                    <td>".$list['FechaInicio']."</td>
                                                    <td>".$list['FechaFin']."</td>
                                                    ".$activo."
                                                    <td>
                                                        <a class='dropdown-button btn-floating' id='ddlts' data-activates='dropdown".$list['IdOrden']."' href='#!'><i class='material-icons left'>mode_edit</i></a>
                                                        <ul id='dropdown".$list['IdOrden']."' class='dropdown-content'>
                                                    ".$status."
                                                        </ul>
                                                    </td>                                                                 
                                                </tr>";
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
<?php }else if ($this->session->userdata("Privilegio") == 4) {?>
  <main class="mdl-layout__content mdl-color--grey-100">
    <div class="row">
        <div class="col s12">
            <div class="card">
                <div class="card-content">
                    <center><span class="card-title purple-text accent-4" style="font-family: robotoblack;">ORDEN DE PRODUCCIÓN</span></center>
                    <?php 
                    if ($listaReport) {                  
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
                   <!--  <div class="right row">
                        <div id="OrdeProd" class="col s12 m12">
                            <a data-tooltip='AGREGAR NUEVA ORDEN' href="#ordenprod" class="modal-trigger tooltipped">
                                <i class="mdi-image-add-to-photos titulosGen"></i>
                            </a>
                        </div> 
                    </div>-->
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
                                    case 1:
                                    $key["Turno"] = "MATUTINO";
                                    break;
                                    case 2:
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
</main>
<?php } ?>
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
            <div class="row noMargen center">
                <div class="noMargen col s12 m12 l12">
                    <h6 class="center titulos">ORDEN DE TRABAJO N°: <span id="spanNoOrdenT"></span></h6>
                    <label>( PROCESO HUMEDO )</label> 
                </div>
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
                </div>
                <br><br>
                <div class="row">
                    <div class="input-field col s6 m6 s6">
                        <input type="text" name="papel" id="papel">
                        <label id="lblpapel" class="labelValidacion">TIPO PAPEL</label>
                    </div>
                 <?php if ($coordinadores) {?>
                    <div class="input-field col s6 m6 s6">
<!--                    <input type="hidden" name="coordinador" value="<?php echo $this->session->userdata("IdUser")?>">
                        <input type="text" readonly name="" id="coordinador" value="<?php echo $this->session->userdata("Nombre")?>">
                     <label id="lblcoordinador" class="lblValidacion">COORDINADOR</label>  -->                   
                    <select name="coordinador" id="coordinador" class="chosen-select browser-default">
                        <option value="" disabled selected>COORDINADOR</option>
                        <?php
                        if($coordinadores) {
                            foreach($coordinadores as $key){
                                echo '<option value="'.$key['IdUsuario'].'">'.$key['Nombre'].'</option>';
                            }
                        }
                        ?>
                    </select>
                    <label id="lblmaquina" class="lblValidacion">ESCOJA UN COORDINADOR</label>
                    </div>
                    <?php }?>
                </div>
                <br>
                <div class="row">
                    <div class="col s6 m6 s6">
                        <select name="turno" id="turno" class="chosen-select browser-default">
                            <option value="" disabled selected>TURNO</option>
                            <?PHP
                            if(!$turnos){
                            } else {
                                foreach($turnos as $key){
                                    echo '<option value="'.$key['IdTurno'].'">'.$key['Turno'].'';
                                    switch ($key['IdTurno']) {
                                        case 1:
                                            $key['Turno'] = "Matutino";
                                            break;
                                        
                                       case 2:
                                       $key['Turno'] = "Vespertino";                                           
                                            break;
                                    }
                                    echo' <span class="badge">('.$key['Turno'].')</span>';
                                    echo'</option>';
                                }
                            }
                            ?>
                        </select>
                        <label id="lblturno" class="lblValidacion">ELIGE UN TURNO</label>
                    </div>
                   <br><br>
                </div><br><br>
                <div class="center">
                    <button name="usersubmit" type="submit" class="Btnadd btn waves-effect waves-light" id="AddOrden" style="background-color:#831F82;">GUARDAR
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>