<main class="mdl-layout__content mdl-color--grey-100">
	<div class="row">
		<div class="col s12">
			<div class="card">
				<div class="card-content">
					<center><span class="card-title purple-text accent-4" style="font-family: robotoblack;">DETALLE DE ORDEN DE TRABAJO</span></center>
						<div class="row">
							<center>
								<?php 
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
				<div class="card-content" id="tabla-cargas">
                    <div class="row">
                        <div class="col s12 m12">
                            <center><h5 class="card-title purple-text accent-4" style="font-family: robotoblack;">CARGAS PULPER</h5></center>
                        </div>
                    </div>
                    <a class="Btnadd btn waves-effect waves-light" id="btnAgregarf" href="#modal1" style="background-color:#831F82;">AGREGAR
						<i class="material-icons right">add</i>
                    </a>
                    <center><h5 id="ocultar">NO HAY DATOS QUE MOSTRAR</h5></center>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col s12">
			<div class="card">
				<div class="card-content">
					<div class="row">
                        <div class="col s12 m12">
                            <center><h5 class="card-title purple-text accent-4" style="font-family: robotoblack;">HORAS MOLIENDA</h5></center>
                        </div>
					<a class="Btnadd btn waves-effect waves-light" id="btnAgregaHM" href="#modal12" style="background-color:#831F82;">AGREGAR
						<i class="material-icons right">add</i>
                    </a>
                    <center><h5 id="ocultar2">NO HAY DATOS QUE MOSTRAR</h5></center>
                    </div>	
				</div>
			</div>
		</div>
	</div>
<!--PANTALLAS MODALES-->
  <div id="modal11" class="modal">
    <div class="modal-content">
		<div class="card">
			<div class="card-content">
				<center><h5 class="card-title purple-text accent-4" style="font-family: robotoblack;">AGREGAR CARGA PULPER</h5></center>
				<div class="row">
					<div class="col s12 m12">
						<?php 
			                if(!($consecutivo)){                                   
			                } else {
			                    foreach ($consecutivo as $key) {
			                        echo "<input name='idRptD' id='idRptD' type='hidden' value='".$key['IdReporteDiario']."' >";
			                        }
			                    }
			            ?>
                        <select name="tipoFibra" id="tipoFibra" class="chosen-select browser-default">
                            <option value="" disabled selected>TIPO FIBRA</option>
                            <?PHP
                            if(!$tipoFibra){
                            } else {
                                foreach($tipoFibra as $key){
                                    echo '<option value="'.$key['IdInsumo'].'">'.$key['descripcion'].'</option>';
                                }
                            }
                            ?>
                        </select>                   
					</div><br><br>
		            <div class="row">
		                <div class="input-field col s7 m7 s7">
		                    <input id="cantidad" type="text">
		                    <label for="cantidad">CANTIDAD A INGRESAR</label>
		                </div>
		                <div class="col s5 m5 s5"><br>
		                	<span class='purple-text darken-4'>KILOGRAMOS</span>
		                </div>
		            </div><br><br>
				    <div class="row">                    
		                <div class="center">
				      	    <a class="Btnadd btn waves-effect waves-light" id="agregarCPulper" onclick="guardarCargaPulper()" href="#" style="background-color:#831F82;">AGREGAR
		                        <i class="material-icons right">send</i>
		                    </a>
		                    <a class="Btnadd btn waves-effect waves-light" id="cerrarCP" href="#" hre style="background-color:#831F82;">CERRAR
		                        <i class="material-icons right">clear</i>
		                    </a>
				        </div>
		            </div>				
				</div>
			</div>
		</div>
    </div>
  </div>
  <div id="modal12" class="modal">
    <div class="modal-content">
		<div class="card">
			<div class="card-content">
				<center><h5 class="card-title" style="font-family: robotoblack; color:#831F82;">AGREGAR HORA MOLIENDA</h5></center>
				<div class="row">
					<div class="col s12 m12">
						<?php 
			                if(!($consecutivo)){                                   
			                } else {
			                    foreach ($consecutivo as $key) {
			                        echo "<input name='idRptD' id='idRptD' type='hidden' value='".$key['IdReporteDiario']."' >";
			                        }
			                    }
			            ?>                
					</div>
					<h2 class="center" style="font-family:'robotoblack'; color:#831F82;font-size:20px; margin-bottom:30px;">CARGA BATIDO</h2><br><br>
					<div class="row">
					    <div class="input-field col s12 m6 s6">
							<input id="timeHM1" name="timeHM1" class="timepicker" type="time">
							<label for="timeHM1">HORA INICIO</label>
					    </div>					    
					    <div class="input-field col s12 m6 s6">
							<input id="timeHM2" name="timeHM2" class="timepicker" type="time">
							<label for="timeHM2">HORA FINAL</label>
					    </div>
					</div><br><br><br>
				    <div class="row">                    
		                <div class="center">
				      	    <a class="Btnadd btn waves-effect waves-light" id="agregarHMolienda" onclick="guardarHorasMolienda()" href="#" style="background-color:#831F82;">AGREGAR
		                        <i class="material-icons right">send</i>
		                    </a>
		                    <a class="Btnadd btn waves-effect waves-light" id="cerrarHM" href="#" hre style="background-color:#831F82;">CERRAR
		                        <i class="material-icons right">clear</i>
		                    </a>
				        </div>
		            </div>				
				</div>
			</div>
		</div>
    </div>
  </div>
</main>