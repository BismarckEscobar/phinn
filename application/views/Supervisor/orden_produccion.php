<main class="mdl-layout__content mdl-color--grey-100">
    <div class="container">
    <div class="right row">
        <div id="OrdeProd" class="col s1 m1 l1">
            <a data-tooltip='' href="#ordenprod" class="modal-trigger tooltipped">
                <i style='font-size:40px;' class="material-icons">recent_actors</i>
            </a>
        </div>

        <div class="col s1 m1 l1"><p></p></div><div class="col s1 m1 l1"><p></p></div>

        <div class="col s1 m1 l1">
            <a data-tooltip='CERRAR' href="<?php echo base_url('index.php/dashboard')?>" class="tooltipped">
                <i style='font-size:35px;' class="material-icons">keyboard_backspace</i>
            </a>
        </div>
    </div>
</div>

 </main>

<!--/////////////////////////////////////////////////////////////////////////////////////////
                                        MODALES
//////////////////////////////////////////////////////////////////////////////////////////-->
<!--  -->
<div id="ordenprod" class="modal">
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
                <h6 class="center" style="font-family:'robotoblack'; color:#831F82;font-size:30px; margin-bottom:30px;">ORDEN PRODUCCION</h6>
            </div>
        </div>

        <div class="row">
            <form class="col s12" action="<?php echo base_url("index.php/GuardaOrden")?>"  method="post" name="formAddUser">
                <?php foreach($listaReport as $key) {?>
                <div class="row" style="border: 1px solid purple;">
                    <div class="input-field col s3 m3 s3">
                        <input class="mayuscula" readonly value="<?php echo $key["NoOrden"]?>" name="noOrden" id="noOrden" type="text" class="required">
                        <label id="lblnoOrden" class="labelValidacion">N° Orden</label>
                    </div>

                    <div class="input-field col s3 m3 s3">
                        <input class="mayuscula" readonly value="<?php echo $key["Usuario"]?>" name="User"  id="User" type="text" class="required">
                        <label id="lblUser" class="labelValidacion">Usuario</label>
                    </div>
                    <div class="input-field col s3 m3 s3">
                        <input name="FechaInicio" readonly value="<?php echo $key["FechaInicio"]?>" id="FechaInicio" type="text">
                        <label id="lblFechaInicio" class="labelValidacion">Fecha Inicio</label>
                    </div>

                    <div class="input-field col s3 m3 s3">
                        <input name="FechaFin" readonly  value="<?php echo $key["FechaFin"]?>" id="FechaFin" type="text">
                        <label id="lblFechaFin" class="labelValidacion">Fecha Fin</label>
                    </div>
                </div>
                <?php } ?>
                <br><br>
                <div class="row">
                    <h6 class="center" style="font-family:'robotoblack'; color:#831F82;font-size:30px; margin-bottom:30px;">PROCESO HUMEDO</h6>
                    <div class="input-field col s3 m3 s3">
                        <input type="date" name="Fechainicio" id="Fechainicio" class="datepicker">
                        <label id="lblFechainicio" class="labelValidacion">Fecha de inicio</label>
                    </div>
                    <div class="input-field col s3 m3 s3">
                        <input type="date" name="Fechafin" id="Fechafin" class="datepicker">
                        <label id="lblFechafin" class="labelValidacion">Fecha fin</label>
                    </div>
                    <div class="input-field col s3 m3 s3">
                        <input id="timepicker" class="timepicker" type="time">
                        <label for="timepicker">Hora inicio</label>
                    </div>
                    <div class="input-field col s3 m3 s3">
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
                <br><br>
                <div class="row">
                    <!--<div class="progress" style="display:none"><div class="indeterminate violet"></div></div>-->

                    <div class="center">
                        <button name="usersubmit" type="submit" class="Btnadd btn waves-effect waves-light" id="Adduser" style="background-color:#831F82;">GUARDAR
                            <i class="material-icons right">send</i>
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>