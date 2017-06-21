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
                        echo ' <div class="col offset-l3 s12 l2">
                                    <div class="card small" >
                                        <a href='.base_url("index.php/Usuarios").'>
                                            <div class="card-image">
                                                <img style="margin-top:20px;" height="65px" src='.base_url("assets/img/menu/agregar-usuario.png").' >
                                            </div>
                                            <div class="card-content center">
                                                <p style="color:black;">CREACION DE USUARIO</p>
                                            </div>
                                        </a>
                                    </div>
                              </div>


                                <div class="col s12 l2">
                                    <div class="card small" >
                                        <a href='.base_url("index.php/ordProduccion").'>
                                            <div class="card-image">
                                                <img style="margin-top:12px;" src='.base_url("assets/img/menu/orden.png").' >
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
                    case 3: redirect('OrdenProduccion');
                    break;  
                    case 4: redirect('OrdenProduccion');
                    break;                    
                }
            }
        ?> 
    </div>
</div>
