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
				<div class="card-content">
					<div class="row oculto" style="text-align: center;">
						<div class="collection1">
							<div class="col s12 m12">            
								<div class="col s3 m3"><a href="#" class="collection-item1">PRODUCCIÓN</a></div>
								<!-- <div class="col m2"><a href="<?php echo base_url();?>index.php/tiempoMuerto/<?php echo $consecutivo['NoOrden']?>/<?php echo $consecutivo["consecutivo"]?>/<?php echo $consecutivo["turno"]?>" class="collection-item activo">TIEMPOS MUERTOS</a></div> -->
								<?php
									foreach ($consecutivo as $key) {
                    echo '<div class="col s3 m3"><a href="<?php echo base_url()."index.php/Produccion/".$key['IdReporteDiario']?>" class="collection-item activo">PRODUCCIÓN</a></div>';
										echo "<div class='col s3 m3'><a href='".base_url()."index.php/tiempoMuerto/".$key['IdReporteDiario']."' class='collection-item1'>TIEMPOS MUERTOS</a></div>";		
										echo "<div class='col s3 m3'><a href='".base_url()."index.php/cargaspulper/".$key['IdReporteDiario']."' class='collection-item1'>CARGAS PULPER</a></div>";
                    echo '<div class="col s3 m3"><a href="<?php echo base_url()."index.php/MateriaPrima/".$key['IdReporteDiario']?>" class="collection-item activo">MATERIA PRIMA</a></div>';                    
									}
								?>
							</div>
						</div>		
			<?php }?>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>