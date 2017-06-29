<?php print_r($horasMolienda); ?>
<!doctype html>
<html lang="en">
<head>
	<title>Reporte diario</title>
	<style>
		table {
		    color: black;
		    font-size: 9px;
		    font-family: 'arial'!important;
		    text-transform: uppercase!important;
		    border-collapse: collapse;
		    width: 98%;
		    margin: 0 auto;
		    margin-bottom: 5px;
		}
		table th,td{
		    text-align: left;
		    padding: 2px 2px;
		    border: 1px solid black;
		}
		.image {
			width: 20%;
			height: auto;
			padding: 5px 5px;
		}
		.contenedor {
			width: 100%;
			height: 100%;
			margin: 0 auto;
			border: 1px solid black;
			border-radius: 2px;
			padding: 2px 2px;
		}
		.encabezado {
			width:100%;
			margin: 0 auto;
			margin-bottom:2px;
			margin-top: 5px;
		}
		.totales {
			font-size: 9px;
			text-transform: uppercase!important;
			font-weight: normal;
		}
		.contenedor-secundario {				
			display: block;			
			padding:5px 5px;
			width: 48%;			
			float: left;
			margin-left: 2px;
		}
		.table-produccion {			
			text-align: center;
			width: 100%;
			margin-top: 1px;
		}
		.titulos {
			width: 98%;			
			text-align: center;
			padding: 1px 1px;
			font-weight: bold;
		}
		.titulos span {
			font-family: arial;
			font-size: 10px;
		}
		.titulos-tablas {
			text-align: center;
		}
		.titulos-tablas-gen {
			background-color: black;
			color: white;
		}
		span {
			text-transform: uppercase!important;
			font-weight: bold;
			font-size: 10px;
		}
	</style>
</head>
<body>
	<div class="contenedor">
		<div class="encabezado">			
			<table id="tablaReporteDiario">
				<?php  
				if ($cabeceraRpt) {
					foreach ($cabeceraRpt as $key) { ?>
						<tr>
							<td style="text-align: center;"><img class="image" src="<?php echo base_url();?>assets/img/logo/logoinnova.png"></td>
							<td class="titulos-tablas"><span>PROCESO HUMEDO</span></td>
							<td colspan="2" class="titulos-tablas"><span>ORDEN PRODUCCION N°: </span><span class="totales"><?php echo $key['NoOrder']; ?></span></td>
						</tr>
						<tr>
							<td><span>REPORTE PRODUCCION: </span><span class="totales"><?php echo $key['Consecutivo']; ?></span></td>
							<td><span>TIPO PAPEL: </span><span class="totales"><?php echo $key['TipoPapel']; ?></span></td>
							<td colspan="2" class="titulos-tablas"><span>PRODUCCION TOTAL(kg): </span><span class="totales"><?php echo $key['ProduccionTotal']; ?></span></td>
						</tr>
						<tr>
							<td><span>Fecha Inicio: </span><?php echo $key['FechaInicio']; ?></td>
							<td rowspan="1"><span>Hora Inicio:</span></td>
							<td rowspan="3" class="titulos-tablas"><span>TURNO:</span><br /> <span class="totales"><?php echo $key['Turno']; ?></span></td>								
							<td rowspan="3" class="titulos-tablas"><span>MERMA: </span><br /> <span class="totales"><?php echo $key['MermaTotal']; ?></span></td>									
						</tr>
						<tr>
							<td><span>Fecha Fin: </span><span class="totales"><?php echo $key['FechaFinal']; ?></span></td>
							<td rowspan="1"><span>Hora Fin: </span></td>																	
						</tr>
						<tr>
							<td><span>Coordinador: </span><span class="totales"><?php echo $key['Nombre']; ?></span></td>
							<td><span>Grupo:</span><span class="totales"><?php echo $key['Grupo']; ?></span></td>
						</tr>
					<?php } ?>
				<?php } ?>
			</table>	
		</div>		
		<div class="titulos">
			<span>PRODUCCIÓN</span>
		</div>
		<div class="contenedor-secundario">
			<table class="table-produccion">
				<thead>
					<tr>
					<?php 
						if ($produccion) {
							foreach ($produccion as $key) { 
								if($key['Maquina']==1) {?>									
									<th style="text-align:center;" colspan="7">Operador maq. 1: <?php echo $key['Nombre']?></th>									
								<?php break; } ?>
							<?php } ?>
						<?php } ?>
					</tr>
					<tr>
						<th style="text-align:center;">#</th>
						<th style="text-align:center;">HORA INICIO</th>
						<th style="text-align:center;">HORA FINAL</th>
						<th style="text-align:center;">VELOC. MAQUINA</th>
						<th style="text-align:center;">PESO</th>
						<th style="text-align:center;">DIAMETRO</th>
						<th style="text-align:center;">PESO BASE</th>
					</tr>
				</thead>
				<tbody>
					<?php
						if ($produccion) { $cont=0;
							foreach ($produccion as $key) { 
								if ($key['Maquina']==1) { ?>
									<tr>
										<td style="text-align:center;"><?php echo $cont=$cont+1 ?></td>
										<td style="text-align:center;"><?php echo $key['HoraInicio'] ?></td>
										<td style="text-align:center;"><?php echo $key['HoraFin'] ?></td>
										<td style="text-align:center;"><?php echo $key['VelocMaquina'] ?></td>
										<td style="text-align:center;"><?php echo $key['Peso'] ?></td>
										<td style="text-align:center;"><?php echo $key['Diametro'] ?></td>
										<td style="text-align:center;"><?php echo $key['PesoBase'] ?></td>
									</tr>
								<?php } ?>
							<?php } ?>
					<?php } ?>
					<tr>
						<td colspan="3" style="text-align:center;"><span>producción(kg)</span></td>
						<td colspan="4" style="text-align:center;">500</td>
					</tr>
					<tr>
						<td colspan="3" style="text-align:center;"><span>merma(kg)</span></td>
						<td colspan="4" style="text-align:center;">500</td>			
					</tr>
					<tr>
						<td colspan="3" style="text-align:center;"><span>producción neta</span></td>
						<td colspan="4" style="text-align:center;">500</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="contenedor-secundario">
			<table class="table-produccion">
				<thead>
					<tr>
					<?php 
						if ($produccion) {
							foreach ($produccion as $key) { 
								if($key['Maquina']==2) {?>									
									<th style="text-align:center;" colspan="7">Operador maq. 2: <?php echo $key['Nombre']?></th>									
								<?php break; } ?>
							<?php } ?>
						<?php } ?>
					</tr>
					<tr>
						<th style="text-align:center;">#</th>
						<th style="text-align:center;">HORA INICIO</th>
						<th style="text-align:center;">HORA FINAL</th>
						<th style="text-align:center;">VELOC. MAQUINA</th>
						<th style="text-align:center;">PESO</th>
						<th style="text-align:center;">DIAMETRO</th>
						<th style="text-align:center;">PESO BASE</th>
					</tr>
				</thead>
				<tbody>						
					<?php
						if ($produccion) { $cont=0;
							foreach ($produccion as $key) { 
								if ($key['Maquina']==2) { ?>
									<tr>
										<td style="text-align:center;"><?php echo $cont=$cont+1 ?></td>
										<td style="text-align:center;"><?php echo $key['HoraInicio'] ?></td>
										<td style="text-align:center;"><?php echo $key['HoraFin'] ?></td>
										<td style="text-align:center;"><?php echo $key['VelocMaquina'] ?></td>
										<td style="text-align:center;"><?php echo $key['Peso'] ?></td>
										<td style="text-align:center;"><?php echo $key['Diametro'] ?></td>
										<td style="text-align:center;"><?php echo $key['PesoBase'] ?></td>
									</tr>
								<?php } ?>
							<?php } ?>
						<?php } ?>
					<tr>
						<td colspan="3" style="text-align:center;"><span>producción(kg)</span></td>
						<td colspan="4" style="text-align:center;">500</td>
					</tr>
					<tr>
						<td colspan="3" style="text-align:center;"><span>merma(kg)</span></td>
						<td colspan="4" style="text-align:center;">500</td>			
					</tr>
					<tr>
						<td colspan="3" style="text-align:center;"><span>producción neta</span></td>
						<td colspan="4" style="text-align:center;">500</td>
					</tr>				
				</tbody>
			</table>
		</div>		
		<div class="titulos"> <span>TIEMPOS MUERTOS</span></div>
		<table>
			<thead>
				<tr>
					<th colspan="2" style="text-align:center;">TIEMPO</th>	
					<th rowspan="2" style="text-align:center;">MINUTOS</th>
					<th rowspan="2" style="text-align:center;">TIEMPO MUERTO MQ. 1</th>
				</tr>
				<tr>
					<th style="text-align:center;">DE</th>
					<th style="text-align:center;">A</th>
				</tr>	
			</thead>
			<tbody>
				<?php 
					if ($tiemposM) {
						foreach ($tiemposM as $key) {
							if ($key['Maquina']==1) { ?>
								<tr>
									<td style="text-align:center;"><?php echo $key['HoraInicio'] ?></td>
									<td style="text-align:center;"><?php echo $key['HoraFin'] ?></td>
									<td style="text-align:center;"><?php echo $key['Intervalos'] ?></td>
									<td><?php echo $key['Descripcion'] ?></td>
								</tr>
							<?php } ?>
						<?php } ?>
				<?php } ?>
			</tbody>
		</table>
		<table>
			<thead>
				<tr>
					<th colspan="2" style="text-align:center;">TIEMPO</th>	
					<th rowspan="2" style="text-align:center;">MINUTOS</th>
					<th rowspan="2" style="text-align:center;">TIEMPO MUERTO MQ. 2</th>
				</tr>
				<tr>
					<th style="text-align:center;">DE</th>
					<th style="text-align:center;">A</th>
				</tr>	
			</thead>
			<tbody>
				<?php 
					if ($tiemposM) {
						foreach ($tiemposM as $key) {
							if ($key['Maquina']==2) { ?>
								<tr>
									<td style="text-align:center;"><?php echo $key['HoraInicio'] ?></td>
									<td style="text-align:center;"><?php echo $key['HoraFin'] ?></td>
									<td style="text-align:center;"><?php echo $key['Intervalos'] ?></td>
									<td><?php echo $key['Descripcion'] ?></td>
								</tr>
							<?php } ?>
						<?php } ?>
				<?php } ?>
			</tbody>
		</table>		
		<div class="titulos"> <span>CARGAS PULPER</span><span class="totales"> (<b>TOTAL:</b><?php echo $cargaTotal;?>)</span></div>
		<table>
			<thead>
				<tr>
					<th style="text-align:center;">TIPO DE FIBRA(kg)</th>
					<?php
					$cont1=0;$cont2=0;$cont3=0;$cant=0;
						if($cargasPulper) {
							for ($i=0; $i <= count($cargasPulper); $i++) { 
								if ( $cargasPulper[$i]['IdInsumo']== 1) {
			                        $cont1 = $cont1 + 1;
			                    }elseif ($cargasPulper[$i]['IdInsumo']== 2) {
			                        $cont2 = $cont2 + 1;
			                    }elseif ($cargasPulper[$i]['IdInsumo']== 12) {
			                        $cont3 = $cont3 + 1;
			                    }
							}
							if($cont1 >= $cont2 && $cont1 >= $cont3) {
			                    for ($i=0; $i<$cont1; $i++) {
			                      echo '<th style="text-align:center;">'.($cant=$cant+1).'</th>';
			                    }
			                }elseif ($cont2 >= $cont3 && $cont2 >= $cont1) {
			                    for ($i=1; $i<$cont2; $i++) {
			                        echo '<th style="text-align:center;">'.($cant=$cant+1).'</th>';
			                    }
			                }elseif ($cont3 >= $cont2 && $cont3 >= $cont1) {
			                    for ($i=1; $i<$cont3; $i++) {
			                        echo '<th style="text-align:center;">'.($cant=$cant+1).'</th>';
			                    }
			                };
						};
					?>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="text-align:center;">BLANCO IMPRESO</td>					
					<?php
						if ($cargasPulper) {
							foreach ($cargasPulper as $key) {
								if ($key['IdInsumo']==1) {
									echo "<td  style='text-align:center;'>".$key['Cantidad']."</td>";	
								}
								
							}
						}
					?>
				</tr>
				<tr>
					<td style="text-align:center;">MEZCLADO(color)</td>					
					<?php
						if ($cargasPulper) {
							foreach ($cargasPulper as $key) {
								if ($key['IdInsumo']==2) {
									echo "<td style='text-align:center;'>".$key['Cantidad']."</td>";	
								}
								
							}
						}
					?>
				</tr>
				<tr>
					<td style="text-align:center;">MERMA</td>					
					<?php
						if ($cargasPulper) {
							foreach ($cargasPulper as $key) {
								if ($key['IdInsumo']==12) {
									echo "<td style='text-align:center;'>".$key['Cantidad']."</td>";	
								}
								
							}
						}
					?>
				</tr>			
			</tbody>
		</table>		
		<div class="titulos"> <span>HORAS MOLIENDA</span><span class="totales"> (<b>total:</b><?php echo $totalHrsM?>)</span></div>
		<table>
			<thead>
				<tr>
					<th style="text-align:center;">CARGA</th>
					<th style="text-align:center;">HORAS Y MINUTOS</th>
					<?php $cant=0;
					if ($horasMolienda) {
						for ($i=0; $i<count($horasMolienda);$i++) { 
							echo "<th style='text-align:center;'>".($cant=$cant+1)."</th>";	
						}
					}
					?>
				</tr>
			</thead>
			<tbody>
				<?php 
					if ($horasMolienda) { ?>
				<tr>
					<td rowspan="3" style="text-align:center;">BATIDO</td>
						<td style="text-align:center;">INICIO</td>
						<?php 
							for ($i=0; $i<count($horasMolienda);$i++) { ?>
								<td style="text-align:center;"><?php echo $horasMolienda[$i]['horaInicio']; ?></td>
						<?php } ?>						
				</tr>
				<tr>
					<td style="text-align:center;">FINAL</td>
					<?php 
						for ($i=0; $i<count($horasMolienda);$i++) { ?>
							<td style="text-align:center;"><?php echo $horasMolienda[$i]['horaFin']; ?></td>
					<?php } ?>						
				</tr>
				<tr>
					<td style="text-align:center;">TIEMPO</td>
					<?php 
						for ($i=0; $i<count($horasMolienda);$i++) { ?>
							<td style="text-align:center;"><?php echo $horasMolienda[$i]['tiempo']; ?></td>
					<?php } ?>						
				</tr>
				<?php } ?>
			</tbody>
		</table>		
		<div class="titulos">
			<span>MATERIA PRIMA</span>
		</div>
		<div class="contenedor-secundario">
			<table class="table-produccion">
				<thead>
					<tr>
						<th style="text-align:center;">TANQUES</th>
						<th style="text-align:center;">DÍA</th>
						<th style="text-align:center;">NOCHE</th>
						<th style="text-align:center;">CONSUMO</th>
					</tr>
				</thead>
				<tbody>						
					<?php 
						if ($pasta) {
							foreach ($pasta as $key) { ?>
							<tr>
								<?php if ($key['Tanque']==1) {
									$tanque="Tanque #1";
								} elseif ($key['Tanque']==2) {
									$tanque="Tanque #2";
								} elseif ($key['Tanque']==3) {
									$tanque="Tanque #3";
								} elseif ($key['Tanque']==4) {
									$tanque="Tanque #4";
								} elseif ($key['Tanque']==5) {
									$tanque="Tanque #5";
								} elseif ($key['Tanque']==6) {
									$tanque="Tanque #6";
								}?>
								<td style="text-align:center;"><?php echo $tanque;?></td>
								<td style="text-align:center;"><?php echo $key['Dia'];?></td>
								<td style="text-align:center;"><?php echo $key['Noche'];?></td>
								<td style="text-align:center;"><?php echo $key['Consumo'];?></td>
							</tr>
							<?php } ?>
					<?php } ?>						
				</tbody>
			</table>
		</div>
		<div class="contenedor-secundario">
			<table class="table-produccion">
				<thead>
					<tr>
						<th rowspan="2" style="text-align:center;">DESCRIPCION</th>								
						<th colspan="2" style="text-align:center;"></th>							
						<th colspan="2" style="text-align:center;">CANTIDAD</th>
					</tr>
					<tr>
						<th style="text-align:center;">DÍA</th>
						<th style="text-align:center;">NOCHE</th>
						<th style="text-align:center;">PTA AGUA DÍA</th>
						<th style="text-align:center;">PTA AGUA NOCHE</th>
					</tr>
				</thead>
				<tbody>
					<?php 
						if ($insumos) {
							foreach ($insumos as $key) { ?>
								<tr>
									<td style="text-align:center;"><?php echo $key['Descripcion']; ?></td>
									<td style="text-align:center;"><?php echo $key['Dia']; ?></td>
									<td style="text-align:center;"><?php echo $key['Noche']; ?></td>
									<td style="text-align:center;"><?php echo $key['Cantidad_PTA_Agua_Dia']; ?></td>
									<td style="text-align:center;"><?php echo $key['Cantidad_PTA_Agua_Noche']; ?></td>
								</tr>
							<?php } ?>
						<?php } ?>											
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>