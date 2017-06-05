<nav>
	<div style="background-color:#831F82!important;" class="nav-wrapper orange accent-4">
		<a style=" margin-top:10px;margin-left:10px;" href="<?php echo base_url('index.php/dashboard')?>" class="brand-logo left"><img src="<?php echo base_url('assets/img/logo/innova-blanco.png')?>" width="140px"></a>
		<?php
			if($this->uri->segment(1)=='dashboard' or $this->uri->segment(1)=='Menu'){
				echo '<a href="#" class="brand-logo center">INICIO</a>';
			}elseif($this->uri->segment(1)=='Usuarios'){
				echo '<a href="#" class="brand-logo center">LISTA DE USUARIOS</a>';
			}elseif($this->uri->segment(1)=='Empleados'){
				echo '<a href="#" class="brand-logo center">LISTA DE TRABAJADORES</a>';
			}elseif($this->uri->segment(1)=='Reportes'){
				echo '<a href="#" class="brand-logo center">REPORTES</a>';
			}elseif($this->uri->segment(1)=='OrdenProduccion'){
				echo '<a href="#" class="brand-logo center">ORDEN PRODUCCION</a>';
			}
			
			echo '<ul class="right hide-on-med-and-down">
  						<li ><a href="'.base_url("index.php/dashboard").'"><i style="font-size:40px;" class="mdi-action-home tooltipped" data-tooltip="INICIO"></i></a></li>
						<li ><a href="'.base_url("index.php/Salir").'"><i style="font-size:40px;" class="mdi-action-settings-power"></i></a></li>  
				  </ul> ';
		?>
	</div>
</nav>