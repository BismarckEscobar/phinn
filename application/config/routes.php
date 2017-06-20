<?php
    if ( ! defined('BASEPATH')) exit('No direct script access allowed');

    $route['default_controller'] = 'Login_controller';
    $route['404_override'] = '';
    $route['translate_uri_dashes'] = FALSE;

    $route['Acreditar'] = 'Login_controller/Acreditar';
    $route['Salir'] = 'Login_controller/Salir';


    $route['dashboard'] = 'Menu_controller';
    

    /*************LINK DE USUARIOS***********/
    $route['Usuarios'] = 'Usuarios';
    $route['GuardarUsuario'] = 'Usuarios/Guardar';
    $route['EditarUsuario/(:any)/(:any)']= "Usuarios/Eliminar/$1/$2";
    $route['ClaveUsuario/(:any)/(:any)']= "Usuarios/Clave/$1/$2";

/********************LINK DE PRODUCCION*************************/
$route['OrdenProduccion'] = 'Ordenproduccion_controller';
$route['GuardaOrden'] = 'Ordenproduccion_controller/GuardarRD';
$route['ValidaFecha/(:any)/(:any)/(:any)'] = 'Ordenproduccion_controller/ValidarFecha/$1/$2/$3';

    /*************LINKS DE REPORTES***********/
    $route['CalSemana'] = 'Reportes/CalSemana';

    /*************REDIRECT INDEX REPORTE*************/
    $route['reporte'] = "reporte_Controller";

    /*************CAMBIAR ESTADO DE REPORTES*********/
    $route['cambiarEstadoRpt/(:any)/(:any)']= "reporte_Controller/cambiaStatusRpt/$1/$2";

    /*************PARA VALIDAR SI EL NUMERO DE REPORTE YA EXISTE**********************/
    $route['validarReporte/(:any)']= "reporte_Controller/validaNumRpt/$1";

    /*************VALIDA ORDENES DE PRODUCCION***************************************/
    $route['validarNoOrden']= "reporte_Controller/validaStatusOrdenP";

    /*************VALIDA FECHA DE ORDEN DE PRODUCCION********************************/
    $route['validaFechaNoOrden']= "reporte_Controller/validaFechaOrdenP";

    /******RETORNA LA ULTIMA FECHA DEL ULTIMO REGISTRO DE ORDEN DE PRODUCCION******/
    $route['FechaInicio/(:any)']= "reporte_Controller/obtieneUltFec/$1";

    /******GUARDAR CONSECUTIVO DE ORDEN DE PRODUCCION******/
    $route['consecutivo/(:any)/(:any)']= "reporte_Controller/guardaConsecutivoOrdP/$1/$2";

    /************/
    $route['buscarOrden/(:any)']= "reporte_Controller/buscarOrdenProd/$1";

    /************/
    $route['validaRpt/(:any)']= "reporte_Controller/buscarOrdenProdEnOrdTr/$1";

    /******CAMBIAR ORDEN ACTIVA POR UNA NUEVA******/
    $route['cambiarOrdenActiva/(:any)']= "reporte_Controller/cambiarOrdenAct/$1";


    /********************LINKS DE TIEMPOS MUERTOS********************************/
    $route['tiemposmuertos'] = "tiemposmuertos_controller";  


    /********************LINKS DE ORDENES DE TRABAJO***********************/
    $route['buscaConsecutivo/(:any)/(:any)'] = "Ordenproduccion_controller/buscarUltConsc/$1/$2";

    /********************ORDENES DE PRODUCCION AGREGAR DETALLES*******************************/
    $route['detalleOrdenT/(:any)/(:any)/(:any)']= "Ordenproduccion_controller/agregaDetalleOrdT/$1/$2/$3";

    /********************DETALLE ORDEN INDEX*******************************/
    $route['tiempoMuerto/(:any)']= "Ordenproduccion_controller/agregaDetalleOrdT1/$1";
    $route['detalleTiempoMuerto/(:any)']= "tiemposMuertos_Controller/buscarDetalleTM/$1";

    /********************MENU REPORTE DE TRABAJO************************/
    $route['menuOrdenTrabajo/(:any)']= "Ordenproduccion_controller/agregaDetalleOrdT/$1";
    /********************GUARDANDO REGISTRO DE TIEMPO MUERTO POR AJAX****************/

    $route['guardarTM/(:any)/(:any)/(:any)/(:any)/(:any)/(:any)/(:any)/(:any)']= "tiemposMuertos_Controller/guardarTiempoM/$1/$2/$3/$4/$5/$6/$7/$8";

  /***************************************************************************************************/
    $route['Produccion/(:any)']= "Produccion_Controller/agregaDetalleOrdP1/$1"; 
    $route['GuardaProduccion']= "Produccion_Controller/GuardarProduccion"; 
    $route['EliminarProduccion/(:any)']= "Produccion_Controller/Eliminar/$1";

  /***************************************************************************************************/
    $route['MateriaPrima/(:any)']= "MateriaPrima_controller/agregaDetalleOrdP1/$1"; 
    $route['GuardarMP']= "MateriaPrima_controller/GuardarMatPri"; 
    $route['ValidaPasta/(:any)/(:any)'] = "MateriaPrima_controller/ValidarP/$1/$2";

    $route['guardarTM1/(:any)/(:any)/(:any)/(:any)/(:any)/(:any)/(:any)/(:any)']= "tiemposMuertos_Controller/guardarTiempoM/$1/$2/$3/$4/$5/$6/$7/$8";
    
    $route['guardarTM']= "tiemposMuertos_Controller/guardarTiempoM";

    /**************************ELIMINAR TIEMPO MUERTO******************************/
    $route['eliminarTM/(:any)']= "tiemposMuertos_Controller/eliminarTiempoM/$1"; 
    
    /***************************ACTUALIZAR TABLA TIEMPOS MUERTOS***********************/
    $route['actualizarTablaTM']= "tiemposMuertos_Controller/actualizarTablaTM";

    /*******************LINKS CARGAS PULPER******************************/
    $route['cargaspulper/(:any)'] = "cargas_pulper_controller/index/$1";
    
    $route['listarFibras'] = "cargas_pulper_controller/listarcargaspulper";
    
    $route['guardarCP'] = "cargas_pulper_controller/guardarCPulper";

    $route['listandoCargasPulper/(:any)'] = "cargas_pulper_controller/listarCantidadCargas/$1";

    $route['actualizarCargaPulper/(:any)/(:any)'] = "cargas_pulper_controller/actualizarCargaP/$1/$2";

    $route['agregarHorasMolienda'] = "cargas_pulper_controller/agregarHorasM";

    $route['listandoHorasMolienda/(:any)'] = "cargas_pulper_controller/listarHorasM/$1";

    $route['buscarHorasMolienda/(:any)'] = "cargas_pulper_controller/buscarHorasM/$1";

    $route['actualizaHoraMolienda'] = "cargas_pulper_controller/actualizaHMolienda";



