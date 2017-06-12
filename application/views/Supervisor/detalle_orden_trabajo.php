<main class="mdl-layout__content mdl-color--grey-100">
    <div class="row">
        <div class="col s12">
            <div class="card">
                <div class="card-content">
                    <center><span class="card-title purple-text accent-4" style="font-family: robotoblack;">DETALLE DE ORDEN DE TRABAJO</span></center>
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
    				<center><h5 class="card-title purple-text accent-4" style="font-family: robotoblack;">TIEMPOS MUERTOS</h5></center>
					<table id="tlbTiemposMuertos" class="striped">
						<thead>
		                    <tr class="tblcabecera">
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
										$hi= date('g:i A', strtotime($key['HoraInicio']));
										$hf= date('g:i A', strtotime($key['HoraFin']));
										$datetime1 = new DateTime($key['HoraInicio']);
										$datetime2 = new DateTime($key['HoraFin']);
										$interval = $datetime1->diff($datetime2);
										$tf = $interval->format("%H:%I");
										echo "
											<tr>
												<td>".$hi."</td>
												<td>".$hf."</td>
												<td>".$tf."</td>
												<td>".$key['Maquina']."</td>
												<td>
                                                    <a onclick='buscarTiempoM(".$key['IdTiempoMuerto'].")' href='#!' data-tooltip='CREAR REPORTE' class='modal-trigger tooltipped purple-text darken-4'>
                                                        <i class='material-icons'>visibility</i>
                                                    </a>
										        </td> 
											</tr>";
										}
								}
							?>							
						</tbody>
					</table><br>
					<div id="agregarTM" class="right row">
						<a data-tooltip='AGREGAR TIEMPO MUERTO' href="#nuevoTiempoMuerto" class="modal-trigger tooltipped btn-floating btn-large waves-effect waves-light purple accent-4"><i class="material-icons">add</i></a>		
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
<div id="nuevoTiempoMuerto" class="modal1">
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
                <h6 class="center" style="font-family:'robotoblack'; color:#831F82;font-size:30px; margin-bottom:30px;">AGREGAR TIEMPO MUERTO</h6>
            </div>
        </div>
        
        <div class="row">
            <form class="col s12" method="POST" name="formAgregarTM" id="formAgregarTM" action="<?php echo base_url()?>index.php/tiemposMuertos_Controller/guardarTiempoM">
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
                      <textarea id="descipcion" class="text-area-ord" name="descipcion" onkeyup="javascript:this.value = this.value.replace(/[.,,]/, '');"></textarea>
                      <label for="descipcion">DESCRIPCIÓN</label>
                    </div>                  
                </div>
                <br>
                <div class="row">                    
                    <div class="center">
			      	    <a class="Btnadd btn waves-effect waves-light" onclick="guardarTM1()" id="guardarTM1" href="#" style="background-color:#831F82;">AGREGAR
                            <i class="material-icons right">send</i>
                        </a>
			        </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- VISUALIZAR TIEMPOS MUERTOS -->
<div id="visTiempoM" class="modal1">
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
                <h6 class="center" style="font-family:'roboto'; color:#831F82;font-size:30px; margin-bottom:10px;">DETALLE TIEMPO MUERTO</h6>
            </div>
        </div>        
        <div class="row">
                <div class="row">
                    <div class="col s6 m6 s6">
                        <center>
                            <h5 class="pink-text" id="IdReporteDiario"></h5>
                            <label class="labelValidacion">N° ORDEN DE TRABAJO</label>
                        </center>
                    </div>
                    <div class="col s6 m6 s6">
                        <center>
                            <h5 class="pink-text" id="turno"></h5>
                            <label class="labelValidacion">TURNO</label>
                        </center>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s4 m4 s4">
                        <h5 class="card-title pink-text" id="HoraInicio"></h5>
                        <label class="labelValidacion">HORA INICIO</label>
                    </div>
                    <div class="input-field col s4 m4 s4">
                        <h5 class="card-title pink-text" id="HoraFin"></h5>
                        <label class="labelValidacion">HORA FINALIZACIÓN</label>
                    </div>
                    <div class="input-field col s4 m4 s4">
                        <h5 class="card-title pink-text" id="interval"></h5>
                        <label class="labelValidacion">TIEMPO TRANSCURRIDO</label>
                    </div>
                </div>
                <div class="row">

                    <div class="input-field col s6 m6 s6">
                        <h5 class="card-title pink-text" id="Maquina"></h5>
                        <label class="labelValidacion">N° DE MAQUINA</label>
                    </div>
                </div><br>
                <div class="row">
                    <div class="input-field col s12 m12 s12">
                      <textarea disabled id="Descrip" class="text-area-ord"></textarea>
                      <label for="descipcion">DESCRIPCIÓN</label>
                    </div>                  
                </div>
                <br>
                <div class="row">                    
                    <div class="center">
                        <a class="Btnadd btn waves-effect waves-light" id="cerrarMdl" href="#" hre style="background-color:#831F82;">CERRAR
                            <i class="material-icons right"></i>
                        </a>
                    </div>
                </div>
        </div>
    </div>
</div>