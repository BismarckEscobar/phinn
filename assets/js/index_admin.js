/**
 * Create by
 * User: DAZONIPSE
 * Date: 30/03/2017
 * Time: 08:00 pm
 */

/*/////////////////////////////////////////////////////////////////////////////////////////
                                    MIS FUNCIONES
//////////////////////////////////////////////////////////////////////////////////////////*/
//Abrir los diferentes modales del sistema
$(document).ready(function(){
    $("#crearU").click(function(){$("#AUsuario").openModal();});
    $("#crearR").click(function(){$("#nuevoReporte").openModal();});
    $("#crearT").click(function(){$("#ATrabajador").openModal();});


    ///Configurar chosen////
    var config = {
        '.chosen-select': {
        }
    }
    for (var selector in config) {
        $(selector).chosen(config[selector]);
    }
    ///Configurar chosen////


/*************PERMITE SOLO NUMEROS EN LOS INPUTS**********************************/
$('#numOrden').numeric();

/*****************INICIALIZACION DE LOS SELECTS******************************************/
    //$('#tipoReporte').material_select();
    $('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15 // Creates a dropdown of 15 years to control year
  });

    
});
/*******AGREGANDOLE FUNCIONES DE SUBMIT A HREF************************/
$('#guardaRpt').click( function() {
    var numOrden = $('#numOrden').val();
    var tipoReporte = $('#tipoReporte').val();
    var fechaInicio = $('#fechaInicio').val();
    var fechaFinal = $('#fechaFinal').val();

    if (numOrden=='' || tipoReporte==null || fechaInicio=='' || fechaFinal=='') {        
           swal({ title: " ",
           text: 'Todavia no ha rellenado los campos necesarios',
           type: 'warning',
           showCloseButton: true,
           confirmButtonColor: '#831F82',
           confirmButtonText: 'ACEPTAR'
        }).then()
    } else {
    var f1 = new Date(fechaInicio); var f2 = new Date(fechaFinal);
        if (f1>f2) {
        swal({ title: " ",
        text: 'La fecha inicial no puede ser mayor a la final',
        type: 'warning',
        showCloseButton: true,
        confirmButtonColor: '#831F82',
        confirmButtonText: 'ACEPTAR'
        }).then() 
        } else {
            if (numOrden.length>4 || numOrden.length<4) {
                swal({ title: " ",
                text: 'El número de reporte no tiene el formato correcto',
                type: 'warning',
                showCloseButton: true,
                confirmButtonColor: '#831F82',
                confirmButtonText: 'ACEPTAR'
                }).then() 
            } else {
                $('#formNuevoReporte').submit();            
                };        
        };          
    };
});

$("#numOrden").on('change',function(event) {
    var numOrden = $('#numOrden').val();   
    $.ajax({
        url: "validarReporte/"+numOrden,
        type:"POST",
        async:true,
        success: function(data){ 
            if (data=="No hay nada") {                
            } else {
                swal({ title: " ",
                text: 'El número de orden ya existe',
                type: 'warning',
                showCloseButton: true,
                confirmButtonColor: '#831F82',
                confirmButtonText: 'ACEPTAR'
                }).then() 
            }
        }
    }); 
});

/*********CAMBIAR ESTADO A REPORTE**************************/
function cambiaStatusRpt(idReporte1, estado){
    if(estado==1){var miMSS = "¿DESEA CAMBIAR EL ESTADO ACTIVO DEL REPORTE?";
    }else{var miMSS = "¿DESEA CAMBIAR EL ESTADO INACTIVO DEL REPORTE?";}
    
    swal({ title: " ",
           text: miMSS,
           type: 'warning',
           showCloseButton: true,
           confirmButtonColor: '#831F82',
           confirmButtonText: 'CAMBIAR'
        }).then(function(){
            $.ajax({ url: "cambiarEstadoRpt/"+idReporte1+"/"+estado,
                type: "post",
                async:true,
                success:
                    function(){
                        swal({title: "EL ESTADO DEL REPORTE SE CAMBIO CORECTAMENTE!",
                            type: "success",
                            confirmButtonText: "CERRAR",
                        }).then(
                            function(){gotopage("reporte_Controller");}
                        )}
        })
    })
}

/***************VALIDAR CAMPOS ANTES DE GUARDAR REPORTE***************************/

//Cargar pagina
function gotopage(mypage) {
    $(location).attr('href',mypage);
}



/*/////////////////////////////////////////////////////////////////////////////////////////
                                    FIN MIS FUNCIONES
//////////////////////////////////////////////////////////////////////////////////////////*/



/*/////////////////////////////////////////////////////////////////////////////////////////
                                FUNCIONES SOBRE Id's Tablas
//////////////////////////////////////////////////////////////////////////////////////////*/
$('#BuscarUsuarios').on('keyup', function(){
        var table = $('#TblMaster').DataTable();
        table.search(this.value ).draw();

        //$("#TblMaster_filter").hide();
    }
);

$('#BuscarUsuarios').on('keyup', function(){
        var table = $('#TblMaster').DataTable();
        table.search(this.value ).draw();

        //$("#TblMaster_filter").hide();
    }
);

$('#filtrarRep').on('keyup', function(){
        var table = $('#tlbListaRep').DataTable();
        table.search(this.value ).draw();
    }
);

$("#TblMaster").DataTable({
    "ordering": true,
    "info": false,
    "bPaginate2": false,
    "bfilter": true,
    "pagingType": "full_numbers",
    "aaSorting": [[0, "asc"]],
    "lengthMenu": [[5,10,-1], [5,10,"Todo"]],
    "language": {
        "emptyTable": "No hay datos disponible en la tabla",
        "lengthMenu": "_MENU_",
        //"search":'<i style="color:#039be5; font-size:40px;" class="material-icons">search</i>',
        "loadingRecords": "",
        "info":         "Mostrando _START_ a _END_ de _TOTAL_ registro",
        "infoEmpty":    "Mostrando 0 a 0 de 0 registro",
        "infoFiltered": "(filtrado de _MAX_ registros totales)",
        "zeroRecords":  "No se han encontrado resultados para tu búsqueda",
        "paginate": {
            "first":    "Primera",
            "last":     "Última ",
            "next":     "Anterior",
            "previous": "Siguiente"
        }
    }
});

$("#tlbListaRep").DataTable({
    "ordering": true,
    "info": false,
    "bPaginate2": false,
    "bfilter": true,
    "pagingType": "full_numbers",
    "aaSorting": [[2, "asc"]],
    "lengthMenu": [[5,10,-1], [5,10,"Todo"]],
    "language": {
        "emptyTable": "No hay datos disponible en la tabla",
        "lengthMenu": "_MENU_",
        //"search":'<i style="color:#039be5; font-size:40px;" class="material-icons">search</i>',
        "loadingRecords": "",
        "info":         "Mostrando _START_ a _END_ de _TOTAL_ registro",
        "infoEmpty":    "Mostrando 0 a 0 de 0 registro",
        "infoFiltered": "(filtrado de _MAX_ registros totales)",
        "zeroRecords":  "No se han encontrado resultados para tu búsqueda",
        "paginate": {
            "first":    "Primera",
            "last":     "Última ",
            "next":     "Anterior",
            "previous": "Siguiente"
        },
    }
});

/*/////////////////////////////////////////////////////////////////////////////////////////
                                FIN FUNCIONES SOBRE USUARIO
//////////////////////////////////////////////////////////////////////////////////////////*/



/*/////////////////////////////////////////////////////////////////////////////////////////
                                    FUNCIONES SOBRE USUARIO
//////////////////////////////////////////////////////////////////////////////////////////*/
// VALIDACION DE PASSWORD //
$("#Adduser").click(function () {
    var pass = $("#Pass").val();
    var passc = $("#PassC").val();
    if(pass != passc)
    {
        swal({
            text: "Las contraseñas no coinciden, "+
            " inténtelo nuevamente",
            type: 'warning',
            confirmButtonText: 'cerrar'
        });
        event.preventDefault();
    }
    else if(pass.length < 6)
    {
        swal({
            text: "La contraseña debe tener como mínimo 6 dígitos, "+
            " inténtelo nuevamente",
            type: 'info',
            confirmButtonText: 'cerrar'
        });
        event.preventDefault();
    }
});

// VALIDACION DE CAMPOS VACIOS //
$("#Adduser").click(function(){
    var user = $("#Usuario").val();
    var nomc = $("#NombreC").val();
    var priv = $("#rol").val().trim();
    var pasw = $("#Pass").val();
    if(user =="" | nomc =="" | priv == "" | pasw==""){
        swal({
            text:"TODOS LOS CAMPOS SON REQUERIDOS, "+
            " DEBE COMPLETAR EL CAMPO FALTANTE",
            confirmButtonText:"cerrar",
            type:"info"
        }).then(function () {
            if(user == "")
            {
                $("#Usuario").focus();
            }
            if(nomc == "")
            {
                $("#NombreC").focus();
            }
            if(pasw == "")
            {
                $("#Pass").focus();
            }
            if(priv == "")
            {
                swal({
                    text:"Debe seleccionar un Rol para el usuario",
                    type:"info",
                    confirmButtonText:"cerrar"
                });
            }
        });
        event.preventDefault();
    }
});
////// EVITAR EL DOBLE ENVIO DE FORMULARIO//////
function checksubmit(form)
{
    $("#Adduser").hide();
    $("#load").show();
    return true;
}
function CambiarPass(IdUser){
    var pass = '';

    swal({
        title: 'Escriba Contraseña',
        input: 'password',
        inputPlaceholder: "Nueva Contraseña",
        confirmButtonText: 'SIGUIENTE',
        showCloseButton: true,
        showLoaderOnConfirm: true,
        preConfirm: function (password) {
            return new Promise(function (resolve, reject) {
                setTimeout(function() {
                    if (password == '') {
                    reject('La Contraseña no puede ser vacia!')
                    } else {
                    resolve()
                    }
                }, 900)
            })
        },
        allowOutsideClick: false
    }).then(function (password) {
        var pass = password;

        swal({
            title: 'Confirma Contraseña',
            input: 'password',
            inputPlaceholder: "Confirma Contraseña",
            confirmButtonText: 'CAMBIAR',
            showCloseButton: true,
            showLoaderOnConfirm: true,
            preConfirm: function (password) {
                return new Promise(function (resolve, reject) {
                    setTimeout(function() {
                        if (password == '') {
                            reject('La Contraseña no puede ser vacia!')
                        } else if (password != pass) {
                            reject('Las Contraseña no son iguales!')
                        }else {
                            resolve()
                        }
                    }, 900)
                })
            },
            allowOutsideClick: false
        }).then(function (password) {
            $.ajax({
                url: "ClaveUsuario/"+IdUser+"/"+password,
                type: "post",
                async:true,
                success:
                    function(){
                        swal({title: 'Bien!',
                              text: 'La Contraseña se Cambio Correctamente!',
                              type: 'success',
                              confirmButtonText: 'CERRAR',
                        }).then(
                            function(){gotopage("Usuarios");}
                        )
                    }
            });
        })
    })
}

function BorrarUsuario(IdUsuarios, Estado){
    debugger;
   if(Estado==1){var miMSS = "¿DESEA CAMBIAR EL ESTADO ACTIVO AL USUARIO?";
    }else{var miMSS = "¿DESEA CAMBIAR EL ESTADO INACTIVO AL USUARIO?";}

    swal({
        title: '',
        text: miMSS,
        type: 'question',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Cambiar',
        cancelButtonText:'Cancelar'
    }).then(function(){
        debugger;
            $.ajax({
                url: "EditarUsuario/"+IdUsuarios+"/"+Estado,
                type: "post",
                async:true,
                success:
                    function(json){
                        swal({title: "EL USUARIO SE CAMBIO CORRECTAMENTE!",
                            type: "success",
                            confirmButtonText: "CERRAR",
                        }).then(
                            function(){gotopage("Usuarios");}
                        )}
        });
    })
}
/*/////////////////////////////////////////////////////////////////////////////////////////
                                FIN FUNCIONES SOBRE USUARIO
//////////////////////////////////////////////////////////////////////////////////////////*/

/*/////////////////////////////////////////////////////////////////////////////////////////
                                    FUNCIONES SOBRE TRABAJADOR
//////////////////////////////////////////////////////////////////////////////////////////*/
function BorrarTrabajador(IdUser, Estado){
    if(Estado==1){var miMSS = "¿DESEA CAMBIAR EL ESTADO ACTIVO AL TRABAJADOR?";
    }else{var miMSS = "¿DESEA CAMBIAR EL ESTADO INACTIVO AL TRABAJADOR?";}
    
    swal({ title: " ",
           text: miMSS,
           type: 'warning',
           showCloseButton: true,
           confirmButtonColor: '#831F82',
           confirmButtonText: 'CAMBIAR'
        }).then(function () {
            $.ajax({ url: "EliminarTrabajador/"+IdUser+"/"+Estado,
                     type: "post",
                     async:true,
                     success:
                        function(){
                            swal({title: "EL TRABAJADOR SE CAMBIO CORECTAMENTE!",
                                  type: "success",
                                  confirmButtonText: "CERRAR",
                            }).then(
                                function(){gotopage("Trabajadores");}
                            )
                        }
                })
        })
}

function CalendarWK(Iduser, Nuser){
    $("h6#TxtNombre").html(Nuser);

    $('#CWorker').openModal(
        {   dismissible: false, // Modal can't be dismissed by clicking outside of the modal 
            //opacity: .5, // Opacity of modal background
            //in_duration: 300, // Transition in duration 
            //out_duration: 200, // Transition out duration 
            //ready: function() {}, // Callback for Modal open 
            complete: function() { gotopage("Trabajadores");}   // Callback for Modal close 
        }
    );
    
	var calendar =  $("div#calendar").fullCalendar({
        monthNames: ['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
        monthNamesShort: ['Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic'],
        dayNames: ['Lunes','Martes','Miércoles','Jueves','Viernes','Sábado','Domingo'],
        dayNamesShort: ['Dom', 'Lun','Mar','Mié','Jue','Vie','Sáb'],
        defaultDate: Date(),
		editable: true,
		height:480, 
        eventLimit: true, // allow "more" link when too many events
        events: "Calendario/"+Iduser,
        selectable: true,
        selectHelper: true,
        dayClick: function(date) {
             Fecha = $.fullCalendar.formatDate(date, "YYYY-MM-D");

             $.ajax({url: "FEvento/"+Iduser+"/"+Fecha,
                type: "post",
                async:true,
                success:
                    function(existe){
                        if (existe == 0)
                        {
                            swal({
                                title: 'Digite los Puntos',
                                input: 'number',
                                inputPlaceholder: "Nuevos Puntos",
                                confirmButtonText: 'AGREGAR',
                                showCloseButton: true,
                                showLoaderOnConfirm: true,
                                preConfirm: function (value) {
                                    return new Promise(function (resolve, reject) {
                                    setTimeout(function(){if (value == '') {reject('Los Puntos no pueden ser Vacios!')
                                                               }else{resolve()}
                                                        }, 900
                                              )
                                    })
                                },
                                allowOutsideClick: false
                            }).then(function (value) {
                                $.ajax({url: "GCalendario/"+Iduser+"/"+value+"/"+Fecha,
                                        type: "post",
                                        async:true,
                                        success:
                                        function(){
                                            swal({title: "LOS PUNTOS SE AGREGARON CORECTAMENTE!",
                                                  type: "success",
                                                  confirmButtonText: "CERRAR",
                                            }).then(function(){calendar.fullCalendar("refetchEvents");})
                                        }
                                });
                            })
                        }//FIN del else
                    }//FIN de la funcion
            });

        },
        /*  selectConstraint: {
            start: $.fullCalendar.moment().subtract(1, 'days'),
            end: $.fullCalendar.moment().startOf('month').add(1, 'month')
        },

        select: function(start, allDay) {
            if(moment().diff(start, 'days') > 0) {
                calendar.fullCalendar('unselect');
                return false;
            }
           swal({
                title: 'Digite los Puntos',
                input: 'number',
                inputPlaceholder: "Nuevos Puntos",
                confirmButtonText: 'AGREGAR',
                showCloseButton: true,
                showLoaderOnConfirm: true,
                preConfirm: function (value) {
                    return new Promise(function (resolve, reject) {
                        setTimeout(function(){if (value == '') {reject('Los Puntos no pueden ser Vacios!')
                                                               }else{resolve()}
                                             }, 900
                                  )
                    })
                },
                allowOutsideClick: false
            }).then(function (value) {
                    start = $.fullCalendar.formatDate(start, "YYYY-MM-D");

                    $.ajax({url: "GCalendario/"+Iduser+"/"+value+"/"+start,
                        type: "post",
                        async:true,
                        success:
                            function(){
                                swal({title: "LOS PUNTOS SE AGREGARON CORECTAMENTE!",
                                    type: "success",
                                    confirmButtonText: "CERRAR",
                                }).then(function(){calendar.fullCalendar("refetchEvents");})
                            }
                    });
            })
        },*/
        eventClick: function(event) {
            swal({
                title: 'Digite los Puntos',
                input: 'number',
                inputPlaceholder: event.title,
                confirmButtonText: 'CAMBIAR',
                showCloseButton: true,
                showLoaderOnConfirm: true,
                preConfirm: function (value) {
                    return new Promise(function (resolve, reject) {
                        setTimeout(function(){if (value == '') {reject('Los Puntos no pueden ser Vacios!')
                                                               }else{resolve()}
                                             }, 900
                                  )
                    })
                },
                allowOutsideClick: false
            }).then(function (value) {
                    Fecha = $.fullCalendar.formatDate(event.start, "YYYY-MM-D");

                    $.ajax({url: "UCalendario/"+Iduser+"/"+event.Id+"/"+value+"/"+Fecha,
                        type: "post",
                        async:true,
                        success:
                            function(){
                                swal({title: "LOS PUNTOS SE ACTUALIZARON CORECTAMENTE!",
                                    type: "success",
                                    confirmButtonText: "CERRAR",
                                }).then(function(){calendar.fullCalendar("refetchEvents");})
                            }
                    });//FIN del ajax ACTUALIZAR
            })//FIN del then del swal
        }//FIN evento Click
	 });
}


/*ACA PONGO COMENTARIO
$(document).ready(function(){
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('.modal-trigger2').leanModal();
});

var bandera2 =0;
function generarPdf()
{   
    document.getElementById('reportepdf').submit();
}
function generarExcel()
{
    $('#excel_articulo').val($('#tbArticulos_filter input[type=search]').val());
    $('#excel_laboratorio').val($( "#Filtro1_wrapper #filtroLaboratorio select option:selected").text());
    $('#excel_proveedor').val($('#Filtro1_wrapper #filtroProveedor select option:selected').text());
    document.getElementById('excel').submit();
}
function generarExcel2()
{
    document.getElementById('excel').submit();
}
$('#tblAlvaro').DataTable( {
    "ordering": false,
    "info":     false,
    "bPaginate2" : false,
    "bFilter" : false,
    "language": {
        "emptyTable": "No hay datos disponibles en la tabla",
        "lengthMenu": '_MENU_ ',
        "search": '<i class="tiny material-icons">search</i>',
        "loadingRecords": "",
        "paginate": {
            "first":      "Primera",
            "last":       "Última ",
            "next":       "Anterior",
            "previous":   "Siguiente"
        }
    },
});

$('#Articulos').DataTable( {
    "ordering": false,
    "info":     false,
    "pagingType": "full_numbers",
    "lengthMenu":  [[10,-1], [10,"Todo"]] ,
    "language": {
        "emptyTable": "No hay datos disponibles en la tabla",
        "lengthMenu": '_MENU_ ',
        "search": '<i class="tiny material-icons">search</i>',
        "loadingRecords": "",
        "paginate": {
            "first":      "Primera",
            "last":       "Última ",
            "next":       "Anterior",
            "previous":   "Siguiente"
        }
    },
});

$("#chkPDF").on( 'change', function() {
    if( $(this).is(':checked') ){$( "#txtignorar" ).val("1");}
    else {$( "#txtignorar" ).val("0");
}
});

$(document).ready(function(){
    $.extend( $.fn.dataTable.defaults,{
        "bAutoWidth": true
    });   


    var tableAlder=  $('#tbArticulos').DataTable( {
        "sPaginationType": "full_numbers",
        "aaSorting": [[ 1, "asc" ]],
        "columnDefs": [{ "targets": [ 0, 1, 2 ],
        "className": 'mdl-data-table__cell--non-numeric',
    }],
    "lengthMenu": [[10,50,-1], [10,50,"Todo"]] ,
    "language": {
        "lengthMenu": " _MENU_ ",
        "search":         "",
        "paginate": {
            "first":      "Primero",
            "last":       "Ultimo",
            "next":       "Siguiente",
            "previous":   "Anterior"
        },
        "info":           "Mostrando _START_ a _END_ de _TOTAL_ registro",
        "infoEmpty":      "Mostrando 0 a 0 de 0 registro",
        "infoFiltered":   "(filtrado de _MAX_ registros totales)",
        "zeroRecords":    "No se han encontrado resultados para tu búsqueda",
    },    


    initComplete: function () {
        var contador=1;
        this.api().columns().every( function () {
            var column = this;                    
            var select = $('<select><option value=""></option></select>').appendTo($(column.footer()).empty())
            .on( 'change', function () {
                var val = $.fn.dataTable.util.escapeRegex(
                    $(this).val()                                
                    );               contador++;              
                column
                .search( val ? '^'+val+'$' : '', true, false )
                .draw();
            } );                    
            column.data().unique().sort().each( function ( d, j ) {
                select.append( '<option  value="'+d+'">'+d+'</option>' )
            } );
        } );
    }
} );          

        //$("#tbArticulos_length").hide();
        $("#TblFiltros").appendTo("#DivFiltros > #Filtro1_wrapper");
        $("#tbArticulos_length").appendTo("#DivFiltros > #Filtro2_wrapper");
        $("#tbArticulos_filter").appendTo("#DivFiltros > #Filtro3_wrapper");
        $("#tbArticulos_info").appendTo("#DivFiltros > #Filtro4_wrapper");        
ACA TERMINA ESTE COMENTARIO DE ARRIBA*/

/*EVENTO PARA OCULTAR LAS FILAS QUE TENGAN UN PROMEDIO DE 0 EN LA TABLA*/
/*ACA OTRO COMENTARIO

    $("#test5").on( 'change', function() {
            if( $(this).is(':checked') )
            {
                $( ".ocultar" ).removeClass( "mostrar" ).addClass( "nomostrar" );
                $('#bandera').val('1');
            }
            else {$( ".ocultar" ).removeClass( "nomostrar" ).addClass( "mostrar" );
            $('#bandera').val('0');
        }
    });
    $( "#tbArticulos_length select " ).change(function() {        
          if($("#test5").is(':checked'))
           {$( ".ocultar" ).removeClass( "mostrar" ).addClass( "nomostrar" );}
       else {$( ".ocultar" ).removeClass( "nomostrar" ).addClass( "mostrar" );}
   });

    $( "#tbArticulos_filter input[type=search]").keydown(function() {//alert("ekisde");
            if( $("#test5").is(':checked') )
               {$( ".ocultar" ).removeClass( "mostrar" ).addClass( "nomostrar" );}
           else {$( ".ocultar" ).removeClass( "nomostrar" ).addClass( "mostrar" );}
       });

    $( "#TblFiltros select").change(function() {
            //alert("ekisde");
            if( $("#test5").is(':checked') )
               {$( ".ocultar" ).removeClass( "mostrar" ).addClass( "nomostrar" );}
           else {$( ".ocultar" ).removeClass( "nomostrar" ).addClass( "mostrar" );}
       });

    $('#tbArticulos_wrapper').on('click', '.paginate_button', function () {
        if( $("#test5").is(':checked') )
           {$( ".ocultar" ).removeClass( "mostrar" ).addClass( "nomostrar" );}
       else {$( ".ocultar" ).removeClass( "nomostrar" ).addClass( "mostrar" );}
    }); 
});

function ignorar()
{
    if($("#test5").is(':checked')) {
       $.fn.dataTable.ext.search.push(
        function( settings, searchData, index, rowData, counter ) {
            var min = 0.00;
                                    var valor = parseFloat( searchData[6]); // using the data from the 4th column                              
                                    if (( isNaN( min )) || ( valor != min))                                       
                                    {
                                        return true;
                                    }
                                    return false;
                                }
                                );  
   }
   else {
    $.fn.dataTable.ext.search.push(
        function( settings, searchData, index, rowData, counter ) {
            var min = 0.00;
                                var valor = parseFloat( searchData[6]); // using the data from the 4th column                            
                                return true;                                
                            }
                            );
    }        
}



/*$('input[type="text"]').dblclick(function(){
    $( "#" + $(this).attr("id") ).addClass( "ClssEdited" );
    $( "#Div" + $(this).attr("id")).show("slow");
    Cnt = $(this).val();
    UndEmpaque = $("#"+"FE-"+$(this).attr("id").substring(6, 15).trim()).text();                
    CntUnd = (number_format(Cnt,2).replace(",",'')) * (number_format(UndEmpaque,2).replace(",",''));        
    $("#"+$(this).attr("id")).val(number_format(CntUnd,2));
});
02 ACA TERMINA ESTE OTRO*/


/*ES ES EL 03
function mostrarALVARO() {
    
    if (bandera2==0) {
    $("#mostrarAlvaro").show();
    bandera2=1
    }else{$("#mostrarAlvaro").hide();bandera2=0;}
}

function MUP(key, per,FE,CONTRATO){
    $('#MyBar').show("slow");


    var Row0 = $("#Row-0-"+key).val();
    var Row1 = $("#Row-1-"+key).val();
    var Row2 = $("#Row-2-"+key).val();
    var Row3 = $("#Row-3-"+key).val();
    var Row4 = $("#Row-4-"+key).val();

    Row0 = Row0.replace(",",'');
    Row1 = Row1.replace(",",'');
    if (Row4 != undefined) {
        Row4 = Row4.replace(",",'');    
    }
    

    //if (($("#Row-0-"+key).hasClass("ClssEdited")) || ($("#Row-1-"+key).hasClass("ClssEdited")) ) {
    //    if(($("#Row-0-"+key).hasClass("ClssEdited"))){
    //       console.log("0")
    //        $( "#Row-0-"+key ).removeClass( "ClssEdited" );
    //        $( "#DivRow-0-" + key).hide("slow");
    //        Row0 = parseFloat(Row0) / parseFloat(FE);
    //    }
    //    if(($("#Row-1-"+key).hasClass("ClssEdited"))){
    //        Row1 = parseFloat(Row1) / parseFloat(FE);
    //    }
    //} else {
    //    Row0 = parseFloat(Row0) / parseFloat(FE);
    //    Row1 = parseFloat(Row1) / parseFloat(FE);
    //}       

    $("#Row-0-"+key).val(number_format(Row0,2));
    $("#Row-1-"+key).val(number_format(Row1,2));
        //Row2 = Row2.replace(",",'');
        //Row3 = Row3.replace(",",'');
        
        if (per == 1){
            condicion = "UpdateRow/"+key+"/"+per+"/"+Row0+"/"+Row1+"/"+Row2+"/"+Row3;
        }else{
            condicion = "UpdateRow/"+key+"/"+per+"/"+Row0+"/"+Row1+"/0/0/"+Row4;
        }                 
        
        $.ajax({
            url: condicion,
            type: "get",
            async:true,
            success: function(json){
                if (json==1) {
                    mensaje("ACTUALIZADO CORRECTAMENTE","");
                }else{mensaje("ERROR AL ACTUALIZAR","error");}
                $('#MyBar').hide("slow");                
                //$(location).attr('href',"Articulos");
            }
        });
    }; TERMINA el 03*/

