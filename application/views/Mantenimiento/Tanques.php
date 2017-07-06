<main class="mdl-layout__content mdl-color--grey-100">
    <div class="contenedor">
        <div class="container">
            <div class="Buscar row column noMargen">
                <div class="col s1 m1 l1 offset-l3 offset-m2">
                    <i style='color:#039be5; font-size:40px;' class="material-icons">search</i>
                </div>
                <div class="input-field col s12 m6 l4">
                    <input id="BuscarTanq" type="text" placeholder="Buscar" class="validate">
                    <label for="search"></label>
                </div>
            </div>
        </div>

        <!--/////////////////////////////////////////////////////////////////////////////////////////
                                       BOTONES
        //////////////////////////////////////////////////////////////////////////////////////////-->
        <div>
            <div class="right row">
                <div class="col s1 m1 l1">
                    <a data-tooltip='CREAR TANQUE' id="AddTan" href="#" class="purple-text darken-1 modal-trigger tooltipped">
                    <i style='font-size:40px;' class="material-icons">recent_actors</i>
                </a>
                </div>

                <div class="col s1 m1 l1">
                    <p></p>
                </div>
                <div class="col s1 m1 l1">
                    <p></p>
                </div>

                <div class="col s1 m1 l1">
                    <a data-tooltip='CERRAR' href="<?php echo base_url('index.php/MenuMantenimiento')?>" class="purple-text darken-1 tooltipped">
                    <i style='font-size:35px;' class="material-icons">keyboard_backspace</i>
                </a>
                </div>
            </div>
            <br><br>
            <!-- ////////////////////////////////////////////////////////////////////////////////////////// -->

            <div class="row">
                <div class="col s12">
                    <div class="card">
                        <div class="card-content">
                            <div class="div-cont">
                                   <table id="tblTanques" class="responsive-table striped" id="tblTanq">
                                    <thead>
                                        <tr class="tblcabecera">
                                            <th>ID TANQUE</th>
                                            <th>TANQUE</th>
                                            <th>ACCIONES</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                           foreach ($tanques as $key) {
                                               echo'
                                                <tr>
                                                    <td>'.$key['IdTanque'].'</td>
                                                    <td>'.$key['Tanque'].'</td>
                                                    <td><a class="tooltipped" data-tooltip="Eliminar" data-position="right" href="javascript:void(0)" id="'.$key['IdTanque'].'" onclick="DeleteTanq(this)"><i class="material-icons purple-text">delete</i></a></td>
                                                </tr>
                                               ';
                                           }
                                        ?>
                                    </tbody>
                                </table>   
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<div id="Tanquesmodal" class="modal1" style="height:300px;">
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
                <h6 class="center" style="font-family:'robotoblack'; color:#831F82;font-size:30px; margin-bottom:30px;">AGREGAR TANQUE</h6>
            </div>
        </div>
        <div class="row">
            <form action="" method="post">
            <div class="container">
             <div class="input-field col s12 m12 s12">
            <input type="text" name="tanque" class="center-align" value="" id="tanque">
            </div>
            </div>
        </div>
        <br><br>
        <div class="row">
            <div class="center">
                <a href="#" onclick="guardatanque()" class="btn waves-effect waves-light purple darken-2">GUARDAR</a>
                <a href="#" class="modal-action modal-close noHover btn waves-effect waves-light purple darken-2">CERRAR <i class="material-icons">close</i></a>
            </div>
        </div>
        </form>
    </div>
</div>