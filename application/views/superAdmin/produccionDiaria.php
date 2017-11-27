<main class="mdl-layout__content mdl-color--grey-100">
	<div class="row">
		<div class="col s12">
			<div class="card">
				<div class="card-content">
					<center><h5 class="card-title titulos">PRODUCCIÓN DIARIA</h5></center>
	                <div class="row center">
	                    <div class="col s12 m12">
	                        <div style="width:40%; margin: 0 auto;">
	                            <select name="selectMetas" id="selectMetas" class="chosen-select browser-default">
	                                <?php 
	                                if ($metas) {
	                                    foreach ($metas as $key) {
	                                        echo '<option value="'.$key['value'].'">'.$key['desc'].'</option> ';
	                                    }
	                                }
	                                ?>
	                            </select><br><br>
	                        </div>
	                    </div>
	                </div>
					<div class="row">
                        <div class="col s12 m12" style="text-align:right;">
                            <a id="nuevaProd" href="#modalNuevaPrd" class="Btnadd btn waves-effect waves-light" style="background-color:#831F82; font-size: 12px;">AGREGAR
                            </a>  
                        </div><br><br>
						<table id="tblPD" class="striped">
							<thead style="font-size: 11px; font-weight: normal;">
		                		<tr class="tblcabecera">
		                            <th width="80px">Fecha</th>
		                            <th>ECO PLUS 24/1 (bols)</th>
		                            <th>ECO PLUS 6/4 (bol)</th>
		                            <th>CHOLIN 1000 8/6(bols)</th>
		                            <th>CHOLIN 900 (bols)</th>
		                            <th>GENERICO ECO 1000 (bol)</th>
		                            <th>GENERICO ECO 900 (bol)</th>
		                            <th>CHOLIN HD 32/1 (bol)</th>
		                            <th>Bolson SERVILLETA</th>
		                            <th>CHOLIN HD Gen32/1 (bol)</th>
		                            <th width="50px">TBS</th>
		                            <th width="50px">TNS</th>
		                            <th width="50px">OPC.</th>
		                        </tr>
                    		</thead>
                    		<tbody></tbody>
                    	</table><br><br>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>
<!--MODAL: AGREGAR NUEVA PRODUCCION-->
  <div id="modalNuevaPrd" class="modal">
    <div class="modal-content">
	    <div class="row">
	    	<center><h6 class="card-title titulos">AGREGAR PRODUCCIÓN</h6></center><br>
	        <div style="width: 40%; margin: 0 auto; text-align: center; margin-top: 0px;">
	            <input style="text-align: center;" type="text" id="diaProduccion" name="diaProduccion" class="datepicker" placeholder="SELECCIONE EL DÍA">
	        </div><br><br>
	        <div class="col s12 m12">

	        	<table id="tblProduccionDiaria" class="striped">
	        		<thead style="font-size: 12px; font-weight: normal;"">
	        			<tr class="tblcabecera">
	        				<th>ECO PLUS 24/1 (bols)</th>
	        				<th>ECO PLUS 6/4 (bol)</th>
	        				<th>CHOLIN 1000 8/6(bols)</th>
	        				<th>CHOLIN 900 (bols)</th>
	        				<th>GENERICO ECO 1000 (bol)</th>
	        				<th>GENERICO ECO 900 (bol)</th>
	        				<th>CHOLIN HD 32/1 (bol)</th>
	        				<th>Bolson  SERVILLETA</th>
	        				<th>CHOLIN HD Gen32/1 (bol)</th>
	        			</tr>
	        		</thead>
	        		<tbody>
	        			<tr height="50px">
	        				<td ><input class="inputPD" id="val1"></td>
	        				<td ><input class="inputPD" id="val2"></td>
	        				<td ><input class="inputPD" id="val3"></td>
	        				<td ><input class="inputPD" id="val4"></td>
	        				<td ><input class="inputPD" id="val5"></td>
	        				<td ><input class="inputPD" id="val6"></td>
	        				<td ><input class="inputPD" id="val7"></td>
	        				<td ><input class="inputPD" id="val8"></td>
	        				<td ><input class="inputPD" id="val9"></td>
	        			</tr>
	        		</tbody>
	        	</table>
	        </div>
	    </div><br><br><br><br>
        <div class="row">                    
            <div class="center">
	      	    <a onclick="guardarProduccionDiaria()" id="guardarPD" href="#" class="Btnadd btn waves-effect waves-light" style="background-color:#831F82; font-size: 12px;">GUARDAR
                </a>
	      	    <a id="guardarPD" href="#" class="modal-action modal-close Btnadd btn waves-effect waves-light" style="background-color:#831F82; font-size: 12px;">CANCELAR
                </a>
	        </div>
        </div>
    </div>
  </div>
  <!--MODAL: EDITAR PRODUCCION-->
  <div id="modalEditarPrd" class="modal">
    <div class="modal-content">
	    <div class="row">
	    	<center><h6 class="card-title titulos">EDITAR PRODUCCIÓN</h6></center><br>
	        <div style="display: none;">
	            <input style="text-align: center;" type="text" id="editarDia" name="editarDia" class="datepicker" placeholder="SELECCIONE EL DÍA">
	        </div>
	        <div class="col s12 m12"><br><br>
	        	<table id="tblEdicioProd" class="striped">
	        		<thead style="font-size: 12px; font-weight: normal;"">
	        			<tr class="tblcabecera">
	        				<th>ECO PLUS 24/1 (bols)</th>
	        				<th>ECO PLUS 6/4 (bol)</th>
	        				<th>CHOLIN 1000 8/6(bols)</th>
	        				<th>CHOLIN 900 (bols)</th>
	        				<th>GENERICO ECO 1000 (bol)</th>
	        				<th>GENERICO ECO 900 (bol)</th>
	        				<th>CHOLIN HD 32/1 (bol)</th>
	        				<th>Bolson  SERVILLETA</th>
	        				<th>CHOLIN HD Gen32/1 (bol)</th>
	        			</tr>
	        		</thead>
	        		<tbody>
	        			<tr height="50px">
	        				<td ><input class="inputPD" id="val1-1"></td>
	        				<td ><input class="inputPD" id="val2-2"></td>
	        				<td ><input class="inputPD" id="val3-3"></td>
	        				<td ><input class="inputPD" id="val4-4"></td>
	        				<td ><input class="inputPD" id="val5-5"></td>
	        				<td ><input class="inputPD" id="val6-6"></td>
	        				<td ><input class="inputPD" id="val7-7"></td>
	        				<td ><input class="inputPD" id="val8-8"></td>
	        				<td ><input class="inputPD" id="val9-9"></td>
	        			</tr>
	        		</tbody>
	        	</table>
	        </div>
	    </div><br><br><br><br>
        <div class="row">                    
            <div class="center">
	      	    <a onclick="guardarEdicion()" id="guardarED" href="#" class="Btnadd btn waves-effect waves-light" style="background-color:#831F82; font-size: 12px;">ACTUALIZAR
                </a>
	      	    <a id="guardarPD" href="#" class="modal-action modal-close Btnadd btn waves-effect waves-light" style="background-color:#831F82; font-size: 12px;">CANCELAR
                </a>
	        </div>
        </div>
    </div>
  </div>