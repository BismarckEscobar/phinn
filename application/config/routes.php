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
    $route['GuardarUsuario/(:any)/(:any)/(:any)/(:any)'] = 'Usuarios/Guardar/$1/$2/$3/$4';
    $route['EliminarUsuario/(:any)/(:any)']= "Usuarios/Eliminar/$1/$2";
    $route['ClaveUsuario/(:any)/(:any)']= "Usuarios/Clave/$1/$2";
    

       
    /*************LINLK DE TRABAJADORES***********/
    $route['Trabajadores'] = 'Trabajadores';
    $route['GuardarTrabajador/(:any)/(:any)/(:any)'] = 'Trabajadores/Guardar/$1/$2/$3';
    $route['EliminarTrabajador/(:any)/(:any)'] = "Trabajadores/Eliminar/$1/$2";
    $route['Calendario/(:any)'] = 'Trabajadores/Calendario/$1';
    $route['GCalendario/(:any)/(:any)/(:any)'] = 'Trabajadores/GCalendario/$1/$2/$3';
    $route['UCalendario/(:any)/(:any)/(:any)/(:any)'] = 'Trabajadores/UCalendario/$1/$2/$3/$4';
    $route['FEvento/(:any)/(:any)'] = 'Trabajadores/FEvento/$1/$2';


     /*************LINK DE REPORTES***********/
     $route['CalSemana'] = 'Reportes/CalSemana';
