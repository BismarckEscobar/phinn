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

                        echo  '<br><br><br>
                    <div class="container">
                        <div class="row">
                            <div class="col s12 m4">
                                <center>                          
                                    <a data-tooltip="ORDENES PRODUCCIÓN" href='.base_url("index.php/ordProduccion").' class="modal-trigger tooltipped purple-text darken-4">
                                        <i class="material-icons large">poll</i>
                                        <center><span class="titulo-secundario">ORDENES PRODUCCIÓN</span></center>
                                    </a>
                                </center>
                            </div>
                            <div class="col s12 m4">
                                <center>                                    
                                    <a data-tooltip="ORDENES DE TRABAJO" href='.base_url("index.php/OrdenProduccion").' class="modal-trigger tooltipped purple-text darken-4">
                                        <i class="material-icons large">content_paste</i>
                                        <center><span class="titulo-secundario">ORDENES DE TRABAJO</span></center>
                                    </a>                                  
                                </center>                                
                            </div>
                            <div class="col s12 m4">
                                <center>                                   
                                    <a data-tooltip="USUARIOS" href='.base_url("index.php/Usuarios").' class="modal-trigger tooltipped purple-text darken-4">
                                        <i class="material-icons  large">supervisor_account</i>
                                        <center><span class="titulo-secundario">USUARIOS</span></center>
                                    </a>                                    
                                </center>                                
                            </div>
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
                    case 3: /*redirect('OrdenProduccion');*/
                    echo '<br><br><br>
                    <div class="container">
                        <div class="row">
                            <div class="col s12 m4">
                                <center>                          
                                    <a data-tooltip="ORDENES PRODUCCIÓN" href='.base_url("index.php/ordProduccion").' class="modal-trigger tooltipped purple-text darken-4">
                                        <i class="material-icons large">poll</i>
                                        <center><span class="titulo-secundario">ORDENES PRODUCCIÓN</span></center>
                                    </a>
                                </center>
                            </div>
                            <div class="col s12 m4">
                                <center>                                    
                                    <a data-tooltip="ORDENES DE TRABAJO" href='.base_url("index.php/OrdenProduccion").' class="modal-trigger tooltipped purple-text darken-4">
                                        <i class="material-icons large">content_paste</i>
                                        <center><span class="titulo-secundario">ORDENES DE TRABAJO</span></center>
                                    </a>                                  
                                </center>                                
                            </div>
                            <div class="col s12 m4">
                                <center>                                   
                                    <a data-tooltip="USUARIOS" href='.base_url("index.php/Usuarios").' class="modal-trigger tooltipped purple-text darken-4">
                                        <i class="material-icons  large">supervisor_account</i>
                                        <center><span class="titulo-secundario">USUARIOS</span></center>
                                    </a>                                    
                                </center>                                
                            </div>
                        </div>
                    </div>';
                    break;  
                    case 4: redirect('OrdenProduccion');

                    break;                    
                }
            }
        ?> 
    </div>
</div>
