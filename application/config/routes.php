<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

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
    

       
    /*************LINK DE EMPLEADOS***********/
    $route['Empleados'] = 'Empleados_controller';
    $route['GuardarEmpleado'] = 'Empleados/GuardarEm';
    $route['EliminarTrabajador/(:any)/(:any)'] = "Trabajadores/Eliminar/$1/$2";


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

