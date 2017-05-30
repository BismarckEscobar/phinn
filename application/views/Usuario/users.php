<!--//////////////////////////////////////////////////////////
                CONTENIDO
///////////////////////////////////////////////////////////-->
<main class="mdl-layout__content mdl-color--grey-100">
    <div class="contenedor">        
        <div class="container">
            <div class="Buscar row column">               
                <div class="col s1 m1 l1 offset-l3 offset-m2">
                    <i style='color:#039be5; font-size:40px;' class="material-icons">search</i>
                </div>
                <div class="input-field col s12 m6 l4">
                    <input  id="BuscarUsuarios" type="text" placeholder="Buscar" class="validate">
                    <label for="search"></label>
                </div>
            </div>
        </div>

        <!--/////////////////////////////////////////////////////////////////////////////////////////
                                       BOTONES
        //////////////////////////////////////////////////////////////////////////////////////////-->
    <div class="container">
        <div class="right row">
            <div id="crearU" class="col s1 m1 l1">
                <a data-tooltip='CREAR USUARIO' href="#AUsuario" class="modal-trigger tooltipped">
                    <i style='font-size:40px;' class="waves-effect waves-purple material-icons">recent_actors</i>
                </a>
            </div>

            <div class="col s1 m1 l1"><p></p></div><div class="col s1 m1 l1"><p></p></div>

            <div class="col s1 m1 l1">
                <a data-tooltip='CERRAR' href="<?php echo base_url('index.php/dashboard')?>" class="tooltipped">
                    <i style='font-size:35px;' class="waves-effect waves-red material-icons">highlight_off</i>
                </a>
            </div>
        </div>
        <br><br>
        <!-- ////////////////////////////////////////////////////////////////////////////////////////// -->


        <div class="div-cont">
            <table id="TblMaster" class="striped">
                <thead>
                <tr class="tblcabecera">
                    <th style="border-radius: 20px 0px 0px 20px;">Nº</th>
                    <th>NOMBRE COMPLETO</th>
                    <th>USUARIO</th>
                    <th>TIPO PERMISO</th>
                    <th>ESTATUS</th>
                </tr>
                </thead>
                <tbody>
                <?php


                if(!($TBUS)){
                } else {
                    $c=1;
                    foreach ($TBUS as $key) {
                        if ($key['Privilegio'] == 1)
                            $per = "Administrador";

                        elseif ($key['Privilegio'] == 2){
                            $per = "Gerente";

                        }elseif ($key['Privilegio'] == 3) {
                            $per = "Supervisor";

                        }else{
                            $per = "Coordinador";
                        }

                        if($key['Estado'] == 1){
                            $activo ="<td><a data-tooltip='CAMBIAR A INACTIVO' href='javascript:void(0)' class='btn-flat tooltipped noHover' onclick='BorrarUsuario(".'"'.$key['IdUsuario'].'","'.$key['Estado'].'"'.")'><i style='color:green; font-size:30px;' class='material-icons'>done</i></a></td>";
                        }else{
                            $activo ="<td><a data-tooltip='CAMBIAR A ACTIVO' href='javascript:void(0)' class='btn-flat tooltipped noHover' onclick='BorrarUsuario(".'"'.$key['IdUsuario'].'","'.$key['Estado'].'"'.")'><i style='color:red; font-size:30px;' class='material-icons'>close</i></a></td>";
                        }
                        echo "<tr>
                                    <td class='regular'>".$c."</td>
                                    <td class='bold'>".$key['Nombre']."</td>
                                    <td class='bold'>".$key['Usuario']."</td>
                                    <td>".$per."</td>
                                    ".$activo."
                                  </tr>";
                        $c++;

                    }
                }
                ?>
                </tbody>
            </table>
        </div>
            </div>
        </div>
</main>
<br>

<!--/////////////////////////////////////////////////////////////////////////////////////////
                                        MODALES
//////////////////////////////////////////////////////////////////////////////////////////-->
<!-- AGREGAR USUARIO -->
<div id="AUsuario" class="modal">
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
                <h6 class="center" style="font-family:'robotoblack'; color:#831F82;font-size:30px; margin-bottom:30px;">AGREGAR USUARIO AL SISTEMA</h6>
            </div>
        </div>
        
        <div class="row">
            <form class="col s12" onsubmit="return checksubmit(this);"  method="post" name="formAddUser" action="<?php echo base_url('index.php/GuardarUsuario')?>">
                <div class="row">
                    <div class="input-field col s12 m6 s6">
                        <input class="mayuscula" name="Usuario" placeholder="NOMBRE DE USUARIO" id="Usuario" type="text" class="required">
                        <label id="lblUsuario" class="labelValidacion">DIGITE EL USUARIO</label>
                    </div>
                    
                    <div class="input-field col s12 m6 s6">
                        <input class="mayuscula" name="NombreC" placeholder="NOMBRE COMPLETO" id="NombreC" type="text" class="required">
                        <label id="lblNombreC" class="labelValidacion">DIGITE EL NOMBRE COMPLETO</label>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="input-field col s12 m6 s6">
                        <input name="Pass" placeholder="CONTRASEÑA" id="Pass" type="password" class="validate">
                        <label id="lblPass" class="labelValidacion">DIGITE LA CONTRASEÑA</label>
                    </div>
                    
                    <div class="input-field col s12 m6 s6">
                        <input name="PassC" placeholder="REPITA CONTRASEÑA" id="PassC" type="password" class="validate">
                        <label id="lblPassC" class="labelValidacion">REPITA LA CONTRASEÑA</label>
                    </div>
                </div>
                <br><br>
                <div class="row">
                    <div class="col s6">
                        <select name="rol" id="rol" class="chosen-select browser-default">
                            <option value="">SELECCIONA UN ROL</option>
                            <option value="1">ADMINNISTRADOR</option>
                            <option value="2">GERENTE</option>
                            <option value="3">SUPERVISOR</option>
                            <option value="4">COORDINADOR</option>
                        </select><label id="lblRol" class="labelValidacion">SELECCIONE UN ROL</label>
                    </div>
                </div>
                <br>
                <div class="row">
                    <!--<div class="progress" style="display:none"><div class="indeterminate violet"></div></div>-->
                    
                    <div class="center">
			      	    <button name="usersubmit" type="submit" class="Btnadd btn waves-effect waves-light" id="Adduser" style="background-color:#831F82;">GUARDAR
                            <i class="material-icons right">send</i>
                        </button>
                        <div class="preloader-wrapper active" id="load" style="display: none">
                            <div class="spinner-layer spinner-green-only">
                                <div class="circle-clipper left">
                                    <div class="circle"></div>
                                </div><div class="gap-patch">
                                    <div class="circle"></div>
                                </div><div class="circle-clipper right">
                                    <div class="circle"></div>
                                </div>
                            </div>
                        </div>
			        </div>


                </div>
            </form>
        </div>
    </div>
</div>