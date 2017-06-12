<div class="">
    <script>
        function change(){
            loc="www.google.com";
            $('#calendar').attr('src', loc);
        }
    </script>
    <div class="row menu">     
        <?php
            if (!isset($_SESSION['Privilegio'])) {
            }else{
                switch ($_SESSION['Privilegio']) {
                    case 1: //ADMINISTRADOR
                        echo '<div class="col offset-l3 s12 l2">
                                    <div class="card small" >
                                        <a href='.base_url("index.php/Empleados").'>
                                            <div class="card-image">
                                                <img style="margin-top:20px;" src='.base_url("assets/img/work/Work.png").' >
                                            </div>
                                            <div class="card-content center">
                                                <p style="color:black;">CREAR EMPLEADO</p>
                                            </div>
                                        </a>
                                    </div>
                              </div>

                              <div class="col s12 l2">
                                    <div class="card small" >
                                        <a href='.base_url("index.php/Usuarios").'>
                                            <div class="card-image">
                                                <img style="margin-top:20px;" src='.base_url("assets/img/menu/agregar-usuario.png").' >
                                            </div>
                                            <div class="card-content center">
                                                <p style="color:black;">CREACION DE USUARIO</p>
                                            </div>
                                        </a>
                                    </div>
                              </div>


                              <div class="col s12 l2">
                                    <div class="card small" >
                                        <a href='.base_url("index.php/tiemposmuertos").'>
                                            <div class="card-image">
                                                <img style="margin-top:20px;" src='.base_url("assets/img/menu/agregar-usuario.png").' >
                                            </div>
                                            <div class="card-content center">
                                                <p style="color:black;">TIEMPOS MUERTOS</p>
                                            </div>
                                        </a>
                                    </div>
                              </div>

                                <div class="col s12 l2">
                                    <div class="card small" >
                                        <a href='.base_url("index.php/reporte").'>
                                            <div class="card-image">
                                                <img style="margin-top:20px;" src='.base_url("assets/img/menu/agregar-usuario.png").' >
                                            </div>
                                            <div class="card-content center">
                                                <p style="color:black;">ORDEN PRODUCCIÓN</p>
                                            </div>
                                        </a>
                                    </div>
                              </div>

                              <div class="col offset-l3 s12 l2">
                                    <div class="card small" >
                                        <a href='.base_url("index.php/OrdenProduccion").'>
                                            <div class="card-image">
                                                <img style="margin-top:20px;" src='.base_url("assets/img/menu/reportes.jpg").' >
                                            </div>
                                            <div class="card-content center">
                                                <p style="color:black;">ORDEN PRODUCCIÓN</p>
                                            </div>
                                        </a>
                                    </div>
                              </div>';

                    break;
                    case 2: 
                        echo '<div class="col offset-l4 s12 l2">
                                    <div class="card small" >
                                        <a href='.base_url("index.php/Trabajadores").'>
                                            <div class="card-image">
                                                <img style="margin-top:20px;" src='.base_url("assets/img/work/Work.png").' >
                                            </div>
                                            <div class="card-content center">
                                                <p style="color:black;">CREAR TRABAJADOR</p>
                                            </div>
                                        </a>
                                    </div>
                              </div>';
                    break;
                    case 4: redirect('OrdenProduccion');
                }
            }
        ?> 
    </div>
</div>
