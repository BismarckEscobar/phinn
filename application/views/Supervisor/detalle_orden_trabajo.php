<main class="mdl-layout__content mdl-color--grey-100">
    <div class="row">
        <div class="col s12">
            <div class="card">
                <div class="card-content">
                    <center><span class="card-title titulos">DETALLE DE ORDEN DE TRABAJO</span></center>
	                    <div class="row">
	                        <center>
                                <?php 
                                    if(!($consecutivo)){                                   
                                        } else {
                                            foreach ($consecutivo as $key) {
                                                echo "
                                            <div class='col s4'>
                                                <span class='card-title purple-text darken-4' id='ordP'>".$key['NoOrder']."</span><br/>
                                                <label class='labelValidacion'>N° ORDEN DE PRODUCCIÓN</label>
                                            </div>
                                            <div class='col s4'>
                                                <span class='card-title purple-text darken-4' id='ordC'>".$key['Consecutivo']."</span><br/>
                                                <label class='labelValidacion'>N° CONSECUTIVO DE TRABAJO</label>
                                            </div>
                                            <div class='col s4'>
                                                <span class='card-title purple-text darken-4' id='ordT'>".$key['Turno']."</span><br/>
                                                <label class='labelValidacion'>TURNO</label>
                                            </div>";
                                            }
                                        }
                                ?>
	                        </center>
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
                        <div class="col s12 m12">
                            <input  id="filtrarTM" type="text" placeholder="Buscar" class="validate">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12 m12">
                            <center><h5 class="card-title titulos" >TIEMPOS MUERTOS</h5></center>
                        </div>
                    </div>    
					<table id="tlbTiemposMuertos" class="striped">
						<thead>
		                    <tr class="tblcabecera">
                                <th>ID</th>
		                        <th>HORA INICIO</th>
		                        <th>HORA FINAL</th>
		                        <th>TIEMPO TRANSCURRIDO</th>
		                        <th>MAQUINA</th>
		                        <th>OPCIONES</th>
		                    </tr>
						</thead>
						<tbody>
							<?php 
								if(!($tiemposM)){									
								} else {
									foreach ($tiemposM as $key) {
										echo "
											<tr>
                                                <td>".$key['IdTiempoMuerto']."</td>
												<td>".$key['HoraInicio']."</td>
												<td>".$key['HoraFin']."</td>
												<td>".$key['Intervalos']."</td>
												<td>".$key['Maquina']."</td>
												<td>
                                                    <a onclick='buscarTiempoM(".$key['IdTiempoMuerto'].")' href='#!' data-tooltip='VER' class='modal-trigger tooltipped purple-text darken-4'>
                                                        <i class='material-icons'>visibility</i>
                                                    </a>&nbsp;&nbsp;&nbsp;
                                                    <a onclick='eliminarTM(".$key['IdTiempoMuerto'].",".$key['IdReporteDiario'].")' href='#!' data-tooltip='ELIMINAR' class='modal-trigger tooltipped purple-text darken-4'>
                                                        <i class='material-icons'>delete</i>
                                                    </a>
										        </td> 
											</tr>";
										}
								}
							?>							
						</tbody>
					</table><br>
					<div id="agregarTM" class="fixed-action-btn">
						<a data-tooltip='AGREGAR TIEMPO MUERTO' href="#nuevoTiempoMuerto" class="modal-trigger tooltipped btn-floating btn-large waves-effect waves-light amber accent-4"><i class="material-icons">add</i></a>		
					</div><br> 				
    			</div><br><br>
    		</div>
    	</div>
    </div>
</main>
<!--/////////////////////////////////////////////////////////////////////////////////////////
                                        PANTALLAS MODALES
//////////////////////////////////////////////////////////////////////////////////////////-->
<!-- AGREGAR NUEVO TIEMPO MUERTO -->
<div id="nuevoTiempoMuerto" class="modal">
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
                <h6 class="center titulos">AGREGAR TIEMPO MUERTO</h6>
            </div>
        </div>
        
        <div class="row">
            <?php 
                if(!($consecutivo)){                                   
                } else {
                    foreach ($consecutivo as $key) {
                        echo "<input name='idRptD' id='idRptD' type='hidden' value='".$key['IdReporteDiario']."' >";
                        }
                    }
            ?>
            <input name="ordP1" id="ordP1" type="hidden" >                
            <input name="consecutivo" id="consecutivo" type="hidden" >
            <input name="turno1" id="turno1" type="hidden" >
            <div class="row">
                <div class="input-field col s6 m6 s6">
                    <input id="timepickerII" class="timepicker" name="timepickerII" type="time">
                    <label for="timepickerII">Hora inicio</label>
                </div>
                <div class="input-field col s6 m6 s6">
                    <input id="timepickerFF" class="timepicker" name="timepickerFF" type="time">
                    <label for="timepickerFF">Hora final</label>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="input-field col s12 m12 s12">
                    <select name="maquina" id="maquina" class="chosen-select browser-default">
                        <option value="" disabled selected>MAQUINA</option>
                        <?PHP
                        if(!$listaMaq){
                        } else {
                            foreach($listaMaq as $key){
                                echo '<option value="'.$key['idMaquina'].'">'.$key['maquina'].'</option>';
                            }
                        }
                        ?>
                    </select>
                    <label id="lblmaquina" class="lblValidacion">ELIGE UNA MAQUINA</label>
                </div>
            </div><br>
            <div class="row">
                <div class="input-field col s12 m12 s12">
                  <textarea id="descipcion" class="text-area-ord" name="descipcion"></textarea>
                  <label for="descipcion">DESCRIPCIÓN</label>
                </div>                  
            </div>
            <br>
            <div class="row">                    
                <div class="center">
                    <?php
                        foreach ($consecutivo as $key) {
                            if ($key['Estado'] == 0) {
                                echo ' 
                                <span class="badge red-text darken-4">El Consecutivo ya ha sido cerrado</span><br>   
                                <a class="Btnadd btn waves-effect waves-light disabled" href="#" style="background-color:#831F82;">Guardar
                                </a>';
                            } else {
                                echo '
                                <a class="Btnadd btn waves-effect waves-light" onclick="guardarTM1()" id="guardarTM1" href="#" style="background-color:#831F82;">GUARDAR
                                </a>
                                ';
                            }
                            
                        }
                    ?>
                    <a class="Btnadd btn waves-effect waves-light" id="cerrarMdl1" href="#" hre style="background-color:#831F82;">CERRAR
                        <i class="material-icons right">clear</i>
                    </a>
		        </div>
            </div>
        </div>
    </div>
</div>
<!-- VISUALIZAR TIEMPOS MUERTOS -->
<div id="visTiempoM" class="modal">
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
                <h6 class="center" style="font-family:'robotoblack'; color:#831F82;font-size:30px; margin-bottom:30px;">DETALLE TIEMPO MUERTO</h6>
                <h5 class="card-title" id="Maquina" style="font-family:'robotoblack'; color:#831F82;"></h5>
            </div>
        </div>   
            <ul class="collection">
                <li class="collection-item avatar">
                    <i class="material-icons circle purple darken-1">alarm</i>
                    <span class="title">TIEMPO</span>
                    <div class="row">
                        <div class="col s4 m4">
                            <h5 class="card-title titleh5" id="HoraInicio"></h5>
                            <label class="labelValidacion">HORA INICIO</label>
                        </div>
                        <div class="col s4 m4">
                            <h5 class="card-title titleh5" id="HoraFin"></h5>
                            <label class="labelValidacion">HORA FINALIZACIÓN</label>
                        </div>
                        <div class="col s4 m4">
                            <h5 class="card-title titleh5" style="font-family:'roboto'; color:#831F82;" id="interval"></h5>
                            <label class="labelValidacion">TIEMPO TRANSCURRIDO</label>
                        </div>
                    </div>
                </li>
                <li class="collection-item avatar">
                <i class="material-icons circle purple darken-1">content_paste</i>
                <span class="title">DESCRIPCIÓN</span>
                <div class="row">
                    <div class="input-field col s12 m12 s12">
                      <textarea disabled id="Descrip" class="text-area-ord"></textarea>
                    </div>                  
                </div>
                </li>
            </ul>
            <div class="row">                    
                <div class="center">
                    <a class="Btnadd btn waves-effect waves-light" id="cerrarMdl" href="#" style="background-color:#831F82;">CERRAR
                        <i class="material-icons right">clear</i>
                    </a>
                </div>
            </div>
    </div>
</div>