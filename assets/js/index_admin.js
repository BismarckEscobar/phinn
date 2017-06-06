

/*/////////////////////////////////////////////////////////////////////////////////////////
                                    MIS FUNCIONES
//////////////////////////////////////////////////////////////////////////////////////////*/

$(document).ready(function(){

/********************INICIALIZANDO LOS TIMESPICKER******************/
$('#timepickerI').pickatime();
$('#timepickerF').pickatime();
/**************INICIALIZACION DE MODALES**************************/
$("#crearU").click(function(){$("#AUsuario").openModal();});    
$("#crearT").click(function(){$("#ATrabajador").openModal();});

 /************INICIALIZANDO TABS******************************/
   $('ul.tabs').tabs();
///Configurar chosen////
var config = {
    '.chosen-select': {
    }
}
for (var selector in config) {
    $(selector).chosen(config[selector]);
}

/*************PERMITE SOLO NUMEROS EN LOS INPUTS**********************************/
$('#numOrden').numeric();

/*****************INICIALIZACION DE LOS DATEPICKER Y SELECTS******************************************/
$('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15 // Creates a dropdown of 15 years to control year
  });
});
/***************GUARDANDO TIEMPOS MUERTOS*****************************************/
$('#guardarTM').click( function() {
    $('#formAgregarTM').submit();
});
/***************VALIDAR CAMPOS ANTES DE GUARDAR REPORTE***************************/
$('#guardaRpt').click( function() {
    var numOrden = $('#numOrden').val();
    var fechaInicio = $('#fechaInicio').val();
    var fechaFinal = $('#fechaFinal').val();

    if (numOrden=='' || fechaInicio=='' || fechaFinal=='') {        
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
                var fec1 = new Date($('#fechaInicio').val());
                var fecha3=moment(fec1).format('DD/MM/YYYY');

                var fec2 = new Date();
                var fecha4=moment(fec2).format('DD/MM/YYYY');
                if (fecha3>=fecha4){
                        $('#formNuevoReporte').submit();
                    } else {                                                            
                    swal({ title: " ",
                        text: 'La fecha inicial no puede ser menor a la fecha actual',
                        type: 'warning',
                        showCloseButton: true,
                        confirmButtonColor: '#831F82',
                        confirmButtonText: 'ACEPTAR'
                        }).then()
                    }
                };
            }
        };
    });

/****************GUARDA CONSECUTIVOS ORDEN DE PRODUCCION*******************************/
function guardarConsecutivo(noOrden) {
    var noOrden1 = noOrden;
    var fechaInicio = new Date($('#fechaInicio').val());
    var fechaFinal = new Date($('#fechaFinal').val());

    var fechaFormat1 = moment(fechaInicio, 'MM/DD/YYYY');
    var fechaFormat2 = moment(fechaFinal, 'MM/DD/YYYY');
    var dias = fechaFormat2.diff(fechaFormat1, 'days');
    $.ajax({
    url: "consecutivo/"+dias+"/"+noOrden1,
    type:"POST",
    async:true,
    success: function(data){ 
        }
    });
}

/****************ABRE EL MODEL PARA CREAR NUEVA ORDEN DE PRODUCCION*************************/
$("#crearR").click(function(){
    $("#nuevoReporte").openModal();
});

/****************ABRE EL MODEL PARA AGREGAR NUEVO TIEMPO MUERTO*************************/
$("#agregarTM").click(function(){
    $("#nuevoTiempoMuerto").openModal();
});
/****************VALIDAR FECHA DE ORDEN DE PRODUCCION***************************************/
$("#valOrdP7").on('click',function() {
    $.ajax({
    url: "validaFechaNoOrden",
    type:"POST",
    async:true,
    success: function(data){        
        var fechaOrdF = moment(data, 'YYYY-MM-DD');
        var hoy = moment(new Date(), 'YYYY-MM-DD');
        if (fechaOrdF<hoy){
            $.ajax({
            url: "cambiarEstadoRpt",
            type: "POST",
            async:true,
            success: function(){
                gotopage("reporte"); }
                })
            } else { 
                gotopage("reporte");
            };
        }
    });  
});

/****************VALIDA SI EL NUMERO DE ORDEN YA EXISTE***************************************/
$("#numOrden").on('change',function(event) {
    var numOrden = $('#numOrden').val();
    $.ajax({
        url: "validarReporte/"+numOrden,
        type:"POST",
        async:true,
        success: function(data){ 
            if (data==false) {                
            } else {
                swal({ title: " ",
                text: 'El número de orden ya existe',
                type: 'warning',
                showCloseButton: true,
                confirmButtonColor: '#831F82',
                confirmButtonText: 'ACEPTAR'
                }).then() 
                $('#numOrden').val("")
            }
        }
    }); 
});

/*********CAMBIAR ESTADO A REPORTE**************************/
function cambiaStatusRpt(idOrden, numOrden, estado){
    var idOrd=idOrden; var numOrd=numOrden; var status=estado;
    var miMSS="";

    switch(estado){
        case 0:
            $.ajax({
            url: "validaRpt/" + numOrd,
            async:true,
            success: function(data){
            if (data==true) {
                swal({ title: ' ',
                    text: 'No se puede anular esta orden ya que existen uno o más registros enlazados a ella',
                    type: 'warning',
                    showCloseButton: true,
                    confirmButtonColor: '#831F82',
                    confirmButtonText: 'ACEPTAR'
                }).then()
                    } else {
                        confirmacionCambioStatus('¿Desea anular esta orden de producción?', 'ANULAR', idOrd, status);
                    }
                }
            }); break;
        case 1:
            $.ajax({
            url: "validarNoOrden",
            type:"POST",
            async:true,
            success: function(data){
                if (data==true) {
                    swal({ title: 'Ya existe una orden activa',
                    text: '¿Desea dar de baja a la anterior y agregar esta como orden activa?',
                    type: 'warning',
                    showCloseButton: true,
                    showCancelButton: true,
                    confirmButtonColor: '#831F82',
                    confirmButtonText: 'ACEPTAR',
                    cancelButtonText:'CANCELAR'
                    }).then(function(){
                        $.ajax({ 
                            url:"FechaInicio/" + numOrd,
                            type: "post",
                            async:true,
                            success: function(data) {
                                var fecha3=moment(data).format('DD/MM/YYYY');
                                var fec2 = new Date();
                                var fecha4=moment(fec2).format('DD/MM/YYYY');
                                if (fecha3>=fecha4) {
                                    cambiaOrdenActiva(idOrd, 3);
                                } else{                                    
                                    swal({ title: "",
                                        text: 'Esta orden no puede ser seleccionada como activa porque su fecha de inicio ya caduco',
                                        type: 'warning',                            
                                        confirmButtonColor: '#831F82',
                                        confirmButtonText: 'CERRAR'
                                    }).then()
                            };
                        }
                    });
                        
                });         
            } else {cambiaOrdenActiva(idOrd, 3);}
        }
        }); break;
        case 2:
            swal({ title: "CAMBIAR ESTADO",
                text: '¿Desea cerrar esta orden?',
                type: 'warning',
                showCloseButton: true,
                confirmButtonColor: '#831F82',
                confirmButtonText: 'CERRAR',
                showCancelButton: true,
                cancelButtonText:'Cancelar',
            }).then(function(){
            $.ajax({ url: "cambiarEstadoRpt/"+idOrd+"/"+status,
                type: "post",
                async:true,
                success: function(){
                swal({title: "EL ESTADO DE LA ORDEN SE CAMBIO CORECTAMENTE!",
                type: "success",
                confirmButtonText: "CERRAR",
                }).then(
                    function(){gotopage("reporte");}
                )}
            })
        }); break;
    }
}
/****************FUNCION PARA CAMBIAR STATUS DE LA ORDEN DE PRODUCCION********************/
function confirmacionCambioStatus(mensaje, textbutton, idOrden, status){
    swal({ title: "CAMBIAR ESTADO",
        text: mensaje,
        type: 'warning',
        showCloseButton: true,
        confirmButtonColor: '#831F82',
        confirmButtonText: textbutton,
        showCancelButton: true,
        cancelButtonText:'Cancelar',
    }).then(function(){
        $.ajax({ url: "cambiarEstadoRpt/"+idOrden+"/"+status,
            type: "post",
            async:true,
            success: function(){
            swal({title: "EL ESTADO DE LA ORDEN SE CAMBIO CORECTAMENTE!",
            type: "success",
            confirmButtonText: "CERRAR",
        }).then(
        function(){gotopage("reporte");}
            )}
        })
    })
}

/****************DANDO DE BAJA A ORDENES DE PRODUCCION******************************/
function cambiaOrdenActiva(idOrden, status) { 
    var codigoUnico = idOrden;    
    $.ajax({
        url: "cambiarOrdenActiva/" + codigoUnico,
        async:true,
        success: function(data){        
            if (data==true) {
                swal({text: "SE CAMBIO A ACTIVA LA ORDEN SELECCIONADA",
                    type: "success",
                    confirmButtonText: "CERRAR",
                }).then(
                    function(){gotopage("reporte");}
                )
            }else {
                swal({text: "LA ORDEN SELECCIONADA NO PUEDE SER MARCADA COMO ACTIVA",
                    type: "warning",
                    confirmButtonText: "CERRAR",
                }).then()
            };
        }
    });
}

/****************ACTUALIZAR ORDEN DE PRODUCCION***************************/
  $('#actualizarRpt').click( function() {
    var codUnico = $('#numOrden1').val();
    $.ajax({
        url: "validaRpt/" + codUnico,
        async:true,
        success: function(data){
            if (data==true) {
                swal({ title: ' ',
                    text: 'No se puede editar esta orden ya que existen uno o más registros enlazados a ella',
                    type: 'warning',
                    showCloseButton: true,
                    confirmButtonColor: '#831F82',
                    confirmButtonText: 'ACEPTAR'
                }).then()
            } else {                
                swal({title: " ",
                    text: 'Actualizado con éxito!',
                    type: "success",
                    confirmButtonColor: '#831F82',
                    confirmButtonText: 'ACEPTAR'
                }).then(
                    function() {
                      $('#formActualizarOrd').submit();  
                    } 
                )
            };
        }
    });    
  });

function buscarOrdP(identificador) {  
    var codigoUnico = identificador; 
    $("#actualizarRpt").show();  
    $("#title1").show();
    $("#title2").hide();
    $.ajax({
        url: "buscarOrden/" + codigoUnico,
        async:true,
        success: function(json){
        var estadoA="";        
        $.each(JSON.parse(json), function(i, item) {
          estadoA = item['Estado'],
          $('#identificador').val(item['IdOrden'])
          $('#numOrden1').val(item['NoOrden']),
          $('#fechaInicio1').val(item['FechaInicio']),
          $('#fechaFinal1').val(item['FechaFin']),
          $('#comentario1').val(item['comentarios']) 
        })
            if (estadoA==0) {
                $("#actualizarRpt").hide();
                $("#title2").show();
                $("#title1").hide();
            };
            $("#nuevaOrdenP").openModal(); 
        }
    }); 
}

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
    //"lengthMenu": [[5,10,-1], [5,10,"Todo"]],
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

$("#tlbTiemposMuertos").DataTable({
    //"ordering": true,
    "paginate":false,
    'filter':false,
    "info": false,
    "bPaginate2": false,
    "bfilter": false,
    //"pagingType": "full_numbers",
    //"aaSorting": [[2, "asc"]],
    //"lengthMenu": [[5,10,-1], [5,10,"Todo"]],
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

$("#tlbTiemposMuertos2").DataTable({
    //"ordering": true,
    "paginate":false,
    'filter':false,
    "info": false,
    "bPaginate2": false,
    "bfilter": false,
    //"pagingType": "full_numbers",
    //"aaSorting": [[2, "asc"]],
    //"lengthMenu": [[5,10,-1], [5,10,"Todo"]],
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

function BorrarUsuario(IdUsuario, Estado){
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
                url: "EditarUsuario/"+IdUsuario+"/"+Estado,
                type: "post",
                async:true,
                success:
                    function(json){
                        swal({title: "EL USUARIO SE CAMBIO CORRECTAMENTE!",
                            type: "success",
                            confirmButtonText: "CERRAR"
                        }).then(
                            function(){gotopage("Usuarios");}
                        )}
        });
    })
}


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
        {   dismissible: false, 
            complete: function() { gotopage("Trabajadores");} 
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


