<main class="mdl-layout__content mdl-color--grey-100">
	<div class="contenedor">
		<div class="container">
            <div class="Buscar row column">               
                <div class="col s1 m1 l1 offset-l3 offset-m2">
                    <i style='color:#039be5; font-size:40px;' class="material-icons">search</i>
                </div>
                <div class="input-field col s12 m6 l4">
                    <input  id="filtrarRep" type="text" placeholder="Buscar" class="validate">
                    <label for="search"></label>
                </div>
            </div>
        </div>
<!--/////////////////////////////////////////////////////////////////////////////////////////
                   	BOTONES SUPERIORES
//////////////////////////////////////////////////////////////////////////////////////////-->
        <div class="right row">
            <div id="crearR" class="col s1 m1 l1">
                <a data-tooltip='CREAR REPORTE' href="#nuevoReporte" class="modal-trigger tooltipped">
                    <i style='font-size:40px;' class="waves-effect waves-purple material-icons">queue</i>
                </a>
            </div>            
            <div class="col s1 m1 l1"><p></p></div><div class="col s1 m1 l1"><p></p></div>
        </div><br><br>
<!--/////////////////////////////////////////////////////////////////////////////////////////
                    TABLA REPORTES COMPLETOS
//////////////////////////////////////////////////////////////////////////////////////////-->
    <table id="tlbListaRep" class="striped">
        <thead>
	        <tr class="tblcabecera">
	            <th>Id reporte</th>
	            <th>Nº orden</th>
	            <th>Usuario</th>                                    
	            <th>Fecha Inicio</th>
	            <th>Fecha Fin</th>
	            <th>Estado</th>
	        </tr>
        </thead>
        <tbody>
            <?php
                if(!($listaReport)){
                } else {
                    foreach ($listaReport as $list) {
                        if($list['Estado'] == 0){
                            $activo="<td><a data-tooltip='CAMBIAR A ACTIVO' class='btn-flat tooltipped noHover' onclick='cambiaStatusRpt(".'"'.$list['IdOrden'].'"'.", 1)'><i style='color:green; font-size:30px;' class='material-icons'>done</i></a></td>";
                        }else{
                            $activo="<td><a data-tooltip='CAMBIAR A INACTIVO' class='btn-flat tooltipped noHover' onclick='cambiaStatusRpt(".'"'.$list['IdOrden'].'"'.", 0)'><i style='color:red; font-size:30px;' class='material-icons'>close</i></a></td>";
                        }                          
                        echo "<tr>                                    
                                <td class='regular'>".$list['IdOrden']."</td>
                                <td class='bold'>".$list['NoOrden']."</td>
                                <td class='bold'>".$list['Usuario']."</td>
                                <td class='bold'>".$list['FechaInicio']."</td>
                                <td class='bold'>".$list['FechaFin']."</td>
                                ".$activo."                           
                              </tr>";                       
                    }
                }
            ?>
        </tbody>
    </table>
	</div>
</main>
<br>
<!--/////////////////////////////////////////////////////////////////////////////////////////
                                        PANTALLAS MODALES
//////////////////////////////////////////////////////////////////////////////////////////-->
<!-- NUEVO REPORTE -->
<div id="nuevoReporte" class="modal">
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
                <h6 class="center" style="font-family:'robotoblack'; color:#831F82;font-size:30px; margin-bottom:30px;">NUEVO REPORTE</h6>
            </div>
        </div>
        
        <div class="row">
            <form class="col s12" method="POST" name="formNuevoReporte" id="formNuevoReporte" action="<?php echo base_url()?>index.php/reporte_Controller/guardarReporte">
                <div class="row">
                    <div class="input-field col s12 m6 s6">
                        <input class="mayuscula" maxlength="4" name="numOrden" placeholder="Nº orden" id="numOrden" type="text" class="required">
                        <label id="lblNumeroOrden" class="labelValidacion">DIGITE EL Nº ORDEN</label>
                    </div>

                    <div class="input-field col s12 m6 s6">
						<select id="tipoReporte" name="tipoReporte">
							<option value="" disabled selected>Tipo reporte</option>
							<option value="Reporte Produccion">Reporte producción</option>
						</select>
						<label>Seleccione un tipo</label>
                    </div>                    
                </div>
                <br>
                <div class="row">
	                <div class="input-field col s12 m6 s6">
	                    <input type="text" id="fechaInicio" name="fechaInicio" class="datepicker">
	                    <label for="fechaInicio">Fecha inicio</label>
	                </div>
                    
	                <div class="input-field col s12 m6 s6">
	                    <input type="text" id="fechaFinal" name="fechaFinal" class="datepicker">
	                    <label for="fechaFinal">Fecha final</label>
	                </div>
                </div>
                <br><br>
                <br>
                <div class="row">                    
                    <div class="center">
			      	    <a class="Btnadd btn waves-effect waves-light" id="guardaRpt" href="#" hre style="background-color:#831F82;">GUARDAR
                            <i class="material-icons right">send</i>
                        </a>
			        </div>
                </div>
            </form>
        </div>
    </div>
</div>