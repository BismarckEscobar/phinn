<main class="mdl-layout__content mdl-color--grey-100">
	<div class="row">
		<div class="col s12">
			<div class="card">
				<div class="card-content">
                    <div class="row">
                        <div class="col s6 m6" style="text-align:left;">
                            <div id="retornarP">
                                <a data-tooltip='REGRESAR' href="<?php echo base_url('index.php/MenuMantenimiento')?>" class="modal-trigger tooltipped">
                                    <i class="waves-effect waves-purple material-icons titulosGen">keyboard_backspace</i>
                                </a>
                            </div>  
                        </div>      
                    </div>
					<center><span class="card-title accent-4 titulos">TURNOS</span></center><br>
					<table id="turnos" class="striped">
						<thead>
							<tr class="tblcabecera">
								<th>Id Turno</th>
								<th>Turno</th>
								<th>Descripción</th>
								<th>Opciones</th>
							</tr>
						</thead>
						<tbody>
							<?php
							if ($listandoTurnos) {
								foreach ($listandoTurnos as $key) {
								echo '
								<tr>
									<td>'.$key['IdTurno'].'</td>
									<td>'.$key['Turno'].'</td>
									<td>'.$key['Comentario'].'</td>
									<td>
                                        <a onclick="buscandoTurnoById('.$key['IdTurno'].')" href="#!" data-tooltip="VER" class="modal-trigger tooltipped purple-text darken-4">
                                            <i class="material-icons">visibility</i>
                                        </a>&nbsp;&nbsp;&nbsp;
                                        <a onclick="eliminarTurnoById('.$key['IdTurno'].')" href="#!" data-tooltip="ELIMINAR" class="modal-trigger tooltipped purple-text darken-4">
                                            <i class="material-icons">delete</i>
                                        </a>
							        </td> 
								</tr>
							 	';
								}
							 } 
							?>
						</tbody>
					</table>
					<div id="agregaTurno" class="fixed-action-btn">
						<a data-tooltip='AGREGAR TURNO' data-position="top" href="#nuevoTurno" class="modal-trigger tooltipped btn-floating btn-large waves-effect waves-light amber darken-4"><i class="material-icons">add</i></a>		
					</div><br> 
				</div>
			</div>
		</div>
	</div>
</main>
<!--PANTALLA MODAL: AGREGAR NUEVO TURNO-->
<div id="nuevoTurno" class="modal">
	<div class="modal-content">
		<div class="row noMargen center">
            <div class="noMargen col s12 m12 l12">
                <h6 class="center" style="font-family:'robotoblack'; color:#831F82;font-size:30px; margin-bottom:30px;">AGREGAR NUEVO TURNO</h6>
			</div>
        </div>
        <div class="row">
            <div class="input-field col s6 m6 s6">
                <input id="horaInicioTurno" class="timepicker" name="horaInicioTurno" type="time">
                <label for="horaInicioTurno">Hora inicio</label>
            </div>
            <div class="input-field col s6 m6 s6">
                <input id="horaFinalTurno" class="timepicker" name="horaFinalTurno" type="time">
                <label for="horaFinalTurno">Hora final</label>
            </div>
        </div><br><br>
        <div class="row">
            <div class="input-field col s12 m12 s12">
                <input id="comentario" type="text">
                <label for="comentario">Comentario</label>
            </div>
        </div><br><br>
        <div class="row">                    
            <div class="center">
                <a class="Btnadd btn waves-effect waves-light" onclick="agregandoNuevoTurno()" id="guardarTurno" href="#!" style="background-color:#831F82;">guardar
                </a>
                <a class="Btnadd btn waves-effect waves-light" onclick="cerrarModales('nuevoTurno', true)" href="#!" style="background-color:#831F82;">cerrar
                </a>
            </div>
        </div>
	</div>
</div>
<!--PANTALLA MODAL: ACTUALIZAR TURNO-->
<div id="actualizarRegistro" class="modal">
	<div class="modal-content">
		<div class="row noMargen center">
            <div class="noMargen col s12 m12 l12">
                <h6 class="center" style="font-family:'robotoblack'; color:#831F82;font-size:30px; margin-bottom:30px;">ACTUALIZAR REGISTRO</h6>
			</div>
        </div>
        <input id="idTurno" name="idTurno" type="hidden">
        <div class="row">
            <div class="input-field col s6 m6 s6">
                <input id="horaInicioTurno2" class="timepicker" name="horaInicioTurno2" type="time">
                <label for="horaInicioTurno2">Hora inicio</label>
            </div>
            <div class="input-field col s6 m6 s6">
                <input id="horaFinalTurno2" class="timepicker" name="horaFinalTurno2" type="time">
                <label for="horaFinalTurno2">Hora final</label>
            </div>
        </div><br><br>
        <div class="row">
            <div class="input-field col s12 m12 s12">
                <input id="comentario2" type="text">
                <label for="comentario2">Comentario</label>
            </div>
        </div>
        <div class="row">                    
            <div class="center">
                <a class="Btnadd btn waves-effect waves-light" onclick="actualizandoTurno()" id="actualizarTurno" href="#!" style="background-color:#831F82;">actualizar
                </a>
                <a class="Btnadd btn waves-effect waves-light" onclick="cerrarModales('actualizarRegistro', true)" href="#!" style="background-color:#831F82;">cerrar
                </a>
            </div>
        </div>
	</div>
</div>