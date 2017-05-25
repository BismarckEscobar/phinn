<div class="">
    <script>
        function change(){
            loc="www.google.com";
            $('#calendar').attr('src', loc);
        }
    </script>
    <div class="row menu">     
        <?php
            if (!isset($_SESSION['Permiso'])) {
            }else{
                switch ($_SESSION['Permiso']) {
                    case 1: //ADMINISTRADOR
                        echo '<div class="col offset-l3 s12 l2">
                                    <div class="card small" >
                                        <a href='.base_url("index.php/CalSemana").'>
                                            <div class="card-image">
                                                <img style="margin-top:20px;" src='.base_url("assets/img/reporte/CalSemana.png").' >
                                            </div>
                                            <div class="card-content center">
                                                <p style="color:black;">CALENDARIO</p>
                                            </div>
                                        </a>
                                    </div>
                              </div>';
                    break;
                    /*case 2: //DIGITADOR
                        echo '<div class="col offset-l3 s12 l2">
                                    <div class="card small" >
                                        <a href='.base_url("index.php/Trabajadores").'>
                                            <div class="card-image">
                                                <img style="margin-top:20px;" src='.base_url("assets/img/menu/reportes.jpg").' >
                                            </div>
                                            <div class="card-content center">
                                                <p style="color:black;">CALENDARIO</p>
                                            </div>
                                        </a>
                                    </div>
                              </div>

                              <div class="col s12 l2">
                                    <div class="card small" >
                                        <a href='.base_url("index.php/Reportes").'>
                                            <div class="card-image">
                                                <img style="margin-top:7px;" src='.base_url("assets/img/menu/reportes.jpg").' >
                                            </div>
                                            <div class="card-content center">
                                                <p style="color:black;">VISUALIZAR REPORTES</p>
                                            </div>
                                        </a>
                                    </div>
                              </div>
                              <div class="col s12 l2">
                                    <div class="card small" >
                                        <a href='.base_url("index.php/Reportes").'>
                                            <div class="card-image">
                                                <img style="margin-top:7px;" src='.base_url("assets/img/menu/reportes.jpg").' >
                                            </div>
                                            <div class="card-content center">
                                                <p style="color:black;">VISUALIZAR REPORTES</p>
                                            </div>
                                        </a>
                                    </div>
                              </div>';
                    break;*/
                }
            }
        ?> 
    </div>
</div>
