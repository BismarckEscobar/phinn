<?php
setlocale(LC_TIME, "spanish");
date_default_timezone_set("America/Managua");
?>
<main class="mdl-layout__content mdl-color--grey-100">
    <div class="row">
        <div class="col s12">
            <div class="card hoverable">
                <div class="card-content">
                    <center>
                        <span class="card-title purple-text accent-4" style="font-family: robotoblack;">PRESENTACION</span>
                    </center>
                    <div class="container">
                        <div class="row">
                            <div class="col s12 m12 s12" id="contenedor">
                                <!--CONTENIDO DE LA TABLA-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col s6 m6 s6 center">
        <h5 class="card-title purple-text accent-4" style="font-family: robotoblack;">META PROD</h5>
    </div>
    <div class="container">
        <div class="Buscar row column">
            <div class="col s1 m1 l1 offset-l3 offset-m2">
                <i style='color:#039be5; font-size:40px;' class="material-icons purple-text accent-4">search</i>
            </div>
            <div class="input-field col s12 m6 l4">
                <input id="searchMetas" type="text" placeholder="Buscar" class="validate">
                <label for=""></label>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col s12">
            <div class="card hoverable">
                <div class="card-content">
                    <div class="row">
                        <div class="col s6 m6" style="text-align:left;">
                            <div id="retornarP">
                                <a data-tooltip='REGRESAR' href="<?php echo base_url('index.php/MenuMantenimiento') ?>" class="modal-trigger tooltipped">
                                    <i class="waves-effect waves-purple material-icons titulosGen">keyboard_backspace</i>
                                </a>
                            </div>
                        </div>
                        <div class="col s6 m6" style="text-align:right;">
                            <a id="btnnuevameta" href="#" class="Btnadd btn waves-effect waves-light" style="background-color:#831F82; font-size: 12px;">NUEVO
                            </a>
                        </div>
                    </div>
                    <div >
                        <table id="tblmetasprod" class="striped">
                        <thead style="font-size: 12px;">
                            <tr class="tblcabecera">
                                <th>Consecutivo</th>
                                <th>Mes</th>
                                <th>Estado</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                if (!$metas) {
                                } else {
                                    foreach ($metas as $key) {
                                        echo "
                                            <tr>
                                                <td>
                                                    <a href='#' onclick='editar(".'"'.$key["IdMeta"].'","'.$key["Consecutivo"].'","'.date_format(new DateTime($key["FechaMeta"]), "M-y").'","'.$key["Eco24/1"].'","'.$key["Eco6/4"].'","'.$key["Cholin_8/6"].'","'.$key["Cholin_900"].'","'.$key["Generico_Eco_1000"].'","'.$key["Generico_Eco_900"].'","'.$key["Cholin_HD_32/1"].'","'.$key["BolsonServilleta"].'","'.$key["Cholin_HD_Gen32/1"].'","'.$key["Estado"].'"'.")'>".$key["Consecutivo"]."</a>
                                                </td>
                                                <td>".date_format(new DateTime($key["FechaMeta"]), "M-y")."</td>";

                                                if ($key["Estado"]==1) {
                                                    echo "
                                                    <td>
                                                        <i style='color:green; font-size:30px;' class='material-icons tooltipped' data-tooltip='Meta activa' data-position='right'>done</i>
                                                    </td>
                                                    <td><a href='#' id =".$key["IdMeta"]." onclick='EliminarMeta(".'"'. $key ["IdMeta"].'"'.")'><i class='material-icons purple-text'>delete</i></a></td>";
                                                } else {
                                                    echo "
                                                    <td>
                                                        <i style='color:red; font-size:30px;' class='material-icons tooltipped' data-tooltip='Meta inactiva' data-position='right'>close</i>
                                                    </td>
                                                    <td><i id='disabled' class='material-icons grey-text'>delete</i></td>";
                                                }
                                        echo "</tr>"; 
                                    }
                                } 
                            ?>
                        </tbody>
                    </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<div id="nuevaMeta" class="modal" style="width:1100px;">
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
               <h6 class="card-title purple-text accent-4" style="font-family: robotoblack;">AGREGAR META</h6>
            </div>
        </div>
        <div class="row">
           <div class="col s3 m3 s3 input-field">
                <input type="text" class="center" name="consecutivometa" id="consecutivometa" readonly value="<?php echo $numeros;?>">
                <label for="lblconsecutivometa" id="lblconsecutivometa">Consecutivo</label>
           </div>
           <div class="col s2 m2 s2 input-field">
                <input type="text" class="center" value="<?php  echo strftime("%b")."-".date("y")?>" name="FechaMeta" id="FechaMeta" readonly>
                <label for="lblFechaMeta" id="lblFechaMeta">Mes</label>
           </div>
        </div>
        <br>
        <div class="row">
           <div class="col s12 m12 s12">
               <table id="" class="striped">
                        <thead style="text-transform: lowercase; font-size: 12px;">
                            <tr class="tblcabecera">
                                <th></th>
                                <th>ECO PLUS 24/1 (bols)</th>
                                <th>ECO PLUS 6/4 (bol)</th>
                                <th>CHOLIN 1000 8/6(bols)</th>
                                <th>CHOLIN 900 (bols)</th>
                                <th>GENERICO ECO 1000 (bol)</th>
                                <th>GENERICO ECO 900 (bol)</th>
                                <th>CHOLIN HD 32/1 (bol)</th>
                                <th>Bolson  SERVILLETA</th>
                                <th>CHOLIN HD Gen32/1 (bol)</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>META PROD</td>
                                <td><input class="inputCP numeric" value="" name="eco1" id="eco1"/></td>
                                <td><input class="inputCP numeric" value="" name="eco2" id="eco2"/></td>
                                <td><input class="inputCP numeric" value="" name="cholin1" id="cholin1"/></td>
                                <td><input class="inputCP numeric" value="" name="cholin2" id="cholin2"/></td>
                                <td><input class="inputCP numeric" value="" name="generico1" id="generico1"/></td>
                                <td><input class="inputCP numeric" value="" name="generico2" id="generico2"/></td>
                                <td><input class="inputCP numeric" value="" name="cholinhd1" id="cholinhd1"/></td>
                                <td><input class="inputCP numeric" value="" name="bolson" id="bolson"/></td>
                                <td><input class="inputCP numeric" value="" name="cholinhd2" id="cholinhd2"/></td>
                            </tr>
                        </tbody>
                    </table> 
           </div>
        </div><br><br>
        <div class="row">
            <div class="center">
                <button id="BtnGuardarMeta" class="btn waves-effect waves-light" style="background-color:#831F82; font-size: 12px;">Guardar</button>
            </div>
        </div> 
    </div>
</div>

<div id="actualizaMeta" class="modal" style="width:1100px;">
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
               <h6 class="card-title purple-text accent-4" style="font-family: robotoblack;">ACTUALIZAR META</h6>
            </div>
        </div>
        <div class="row">
           <div class="col s4 m4 s4 input-field">
               <input type="hidden" name="idMeta"  id="idMeta">
                <input type="text" name="consecutivometaedit" id="consecutivometaedit" readonly>
                <label for="lblconsecutivometaedit" id="lblconsecutivometaedit">Consecutivo</label>
           </div>
           <div class="col s3 m3 s3 input-field">
               <input type="hidden" id="estadoMeta">
                <input type="text" class="" value="" name="FechaMetaedit" id="FechaMetaedit" readonly>
                <label for="lblFechaMetaedit" id="lblFechaMetaedit">Mes</label>
           </div>
        </div>
        <br>
        <div class="row">
           <div class="col s12 m12 s12">
               <table id="" class="striped">
                        <thead style="text-transform: lowercase; font-size: 12px;">
                            <tr class="tblcabecera">
                                <th></th>
                                <th>ECO PLUS 24/1 (bols)</th>
                                <th>ECO PLUS 6/4 (bol)</th>
                                <th>CHOLIN 1000 8/6(bols)</th>
                                <th>CHOLIN 900 (bols)</th>
                                <th>GENERICO ECO 1000 (bol)</th>
                                <th>GENERICO ECO 900 (bol)</th>
                                <th>CHOLIN HD 32/1 (bol)</th>
                                <th>Bolson  SERVILLETA</th>
                                <th>CHOLIN HD Gen32/1 (bol)</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>META PROD</td>
                                <td><input class="inputCP numeric" value="" name="eco1edit" id="eco1edit"/></td>
                                <td><input class="inputCP numeric" value="" name="eco2edit" id="eco2edit"/></td>
                                <td><input class="inputCP numeric" value="" name="cholin1edit" id="cholin1edit"/></td>
                                <td><input class="inputCP numeric" value="" name="cholin2edit" id="cholin2edit"/></td>
                                <td><input class="inputCP numeric" value="" name="generico1edit" id="generico1edit"/></td>
                                <td><input class="inputCP numeric" value="" name="generico2edit" id="generico2edit"/></td>
                                <td><input class="inputCP numeric" value="" name="cholinhd1edit" id="cholinhd1edit"/></td>
                                <td><input class="inputCP numeric" value="" name="bolsonedit" id="bolsonedit"/></td>
                                <td><input class="inputCP numeric" value="" name="cholinhd2edit" id="cholinhd2edit"/></td>
                            </tr>
                        </tbody>
                    </table> 
           </div>
        </div><br><br>
        <div class="row">
            <div class="center">
                <button id="BtnActualizarMeta" class="btn waves-effect waves-light" style="background-color:#831F82; font-size: 12px;">Actualizar</button>
            </div>
        </div> 
    </div>
</div>