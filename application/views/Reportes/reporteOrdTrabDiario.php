<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/js/fuente.css" >
<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>assets/css/index.css" media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>assets/css/materialize.css" media="screen,projection"/>
<?php
	echo "<input  id='idRptD' value='".$idReporteDiario."' type='hidden'>";	
?>
<main class="mdl-layout__content mdl-color--grey-100">
	<div class="container">
		<div class="row">
			<div class="col s12">
				<div class="card">
					<div class="card content"><br>
						<table id="tablaReporteDiario">
						<?php  
						if ($cabeceraRpt) {
							foreach ($cabeceraRpt as $key) { ?>
								<tr>
									<td width='10' style="text-align: center;"><img style="width:35%; height:auto;"  src="<?php echo base_url();?>assets/img/logo/logoinnova.png"></td>
									<td>PROCESO HUMEDO</td>
									<td colspan="2">ORDEN PRODUCCION N°: <?php echo $key['NoOrder']; ?></td>
								</tr>
								<tr>
									<td>REPORTE PRODUCCION: <?php echo $key['Consecutivo']; ?></td>
									<td>TIPO PAPEL: <?php echo $key['TipoPapel']; ?></td>
									<td colspan="2">PRODUCCION TOTAL(kg): <?php echo $key['ProduccionTotal']; ?></td>
								</tr>
								<tr>
									<td>Fecha Inicio: <?php echo $key['FechaInicio']; ?></td>
									<td rowspan="1">Hora Inicio:</td>
									<td rowspan="3">TURNO: <br /> <?php echo $key['Turno']; ?></td>								
									<td rowspan="3">MERMA: <br /> <?php echo $key['MermaTotal']; ?></td>									
								</tr>
								<tr>
									<td>Fecha Fin: <?php echo $key['FechaFinal']; ?></td>
									<td rowspan="1">Hora Fin:</td>																	
								</tr>
								<tr>
									<td>Coordinador: <?php echo $key['Nombre']; ?></td>
									<td>Grupo: <?php echo $key['Grupo']; ?></td>
								</tr>
							<?php } ?>
						<?php } ?>
						</table><br><br>
						<a type="hidden" id="btnAgregarf" href="#"></a>
					</div>
				</div>

			</div>
		</div>
	</div>
</main>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/index_admin.js"></script>