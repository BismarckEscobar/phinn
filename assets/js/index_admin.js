/*/////////////////////////////////////////////////////////////////////////////////////////
                                    MIS FUNCIONES
//////////////////////////////////////////////////////////////////////////////////////////*/
//Abrir los diferentes modales del sistema
$(document).ready(function() {
    $("#crearU").click(function() { $("#AUsuario").openModal(); });
    $("#crearT").click(function() { $("#ATrabajador").openModal(); });
    $("#agregarMP").click(function() { $("#nuevaMatPrim").openModal(); });
    $(".modaldet").on("click", function() {
        $("#Detalles").openModal();
    });

    ///Configurar chosen////
    var config = {
        '.chosen-select': {}
    }
    for (var selector in config) {
        $(selector).chosen(config[selector]);
    }
    ///Configurar chosen////

    $('#timepicker , #timepicker1, #timepickerII, #timepickerFF').pickatime({
        default: '', // default time, 'now' or '13:14' e.g.
        donetext: 'aceptar', // done button text
        fromnow: 0
    });

    /******************CONFIGURAR DATEPICKER*******************/
    $('.datepicker').pickadate({
        labelMonthNext: 'Mes siguiente',
        labelMonthPrev: 'Mes anterior',
        labelMonthSelect: 'Selecciona un mes',
        labelYearSelect: 'Selecciona un año',
        monthsFull: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
        monthsShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
        weekdaysFull: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
        weekdaysShort: ['Dom', 'Lun', 'Mar', 'Mie', 'Jue', 'Vie', 'Sab'],
        weekdaysLetter: ['D', 'L', 'M', 'X', 'J', 'V', 'S'],
        today: 'Hoy',
        clear: 'Limpiar',
        close: 'Cerrar',
        format: 'yyyy-mm-dd'
            //min: new Date()
    });

    /*************PERMITE SOLO NUMEROS EN LOS INPUTS**********************************/
    $('#numOrden').numeric();

    /*****************INICIALIZACION DE LOS SELECTS******************************************/
    //$('#tipoReporte').material_select();
    /*$('.datepicker').pickadate({
        selectMonths: true, // Creates a dropdown to control month
        selectYears: 15 // Creates a dropdown of 15 years to control year
    });*/
});
/*******************BUSCA CONSECUTIVO Y AÑADE EL SIGUIENTE**************/
$("#OrdeProd").click(function() {
    var numOrden = $('#lblnoOrden').text();

    var fechaInicio = new Date($('#lblFechaInicio').text());
    var fechaFinal = new Date($('#lblFechaFin').text());

    var fechaFormat1 = moment(fechaInicio, 'MM/DD/YYYY');
    var fechaFormat2 = moment(fechaFinal, 'MM/DD/YYYY');
    var dias = fechaFormat2.diff(fechaFormat1, 'days');
    $.ajax({
        url: "buscaConsecutivo/" + dias + "/" + numOrden,
        type: "POST",
        async: true,
        success: function(data) {
            if (data == "") {
                swal({
                    title: " ",
                    text: 'Esta orden no puede aceptar mas ordenes de trabajo',
                    type: 'warning',
                    showCloseButton: true,
                    confirmButtonColor: '#831F82',
                    confirmButtonText: 'ACEPTAR'
                }).then()
            } else {

                $('#cons').val(data);
                $('#spanNoOrdenT').text(data);
                $("#ordenprod").openModal();
            };
        }
    });
});

/*******AGREGANDOLE FUNCIONES DE SUBMIT A HREF************************/
$('#guardaRpt').click(function() {
    var numOrden = $('#numOrden').val();
    var fechaInicio = $('#fechaInicio').val();
    var fechaFinal = $('#fechaFinal').val();

    if (numOrden == '' || fechaInicio == '' || fechaFinal == '') {
        swal({
            title: " ",
            text: 'Todavia no ha rellenado los campos necesarios',
            type: 'warning',
            showCloseButton: true,
            confirmButtonColor: '#831F82',
            confirmButtonText: 'ACEPTAR'
        }).then()
    } else {
        var f1 = new Date(fechaInicio);
        var f2 = new Date(fechaFinal);
        if (f1 > f2) {
            swal({
                title: " ",
                text: 'La fecha inicial no puede ser mayor a la final',
                type: 'warning',
                showCloseButton: true,
                confirmButtonColor: '#831F82',
                confirmButtonText: 'ACEPTAR'
            }).then()
        } else {
            if (numOrden.length > 4 || numOrden.length < 4) {
                swal({
                    title: " ",
                    text: 'El número de reporte no tiene el formato correcto',
                    type: 'warning',
                    showCloseButton: true,
                    confirmButtonColor: '#831F82',
                    confirmButtonText: 'ACEPTAR'
                }).then()
            } else {
                var fec11 = $('#fechaInicio').val();
                var fecha3 = moment(fec11).format('DD/MM/YYYY');

                var fec22 = new Date();
                var fecha4 = moment(fec22).format('DD/MM/YYYY');
                if (fecha3 >= fecha4) {
                    $('#formNuevoReporte').submit();
                } else {
                    swal({
                        title: " ",
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
        url: "consecutivo/" + dias + "/" + noOrden1,
        type: "POST",
        async: true,
        success: function(data) {}
    });
}

/****************GUARDAR TIEMPO MUERTO***************************/
$('#guardarTM').click(function() {
    $('#formAgregarTM').submit();
    $('#nuevoTiempoMuerto').openModal();
});

/****************ABRE EL MODEL PARA CREAR NUEVA ORDEN DE PRODUCCION*************************/
$("#crearR").click(function() {
    $("#nuevoReporte").openModal();
});

/****************ABRE EL MODEL PARA AGREGAR NUEVO TIEMPO MUERTO*************************/
$("#agregarTM").click(function() {
    var val1 = $('#ordC').text();
    var val2 = $('#ordP').text();
    var val3 = $('#ordT').text();
    $('#consecutivo').val(val1);
    $('#ordP1').val(val2);
    $('#turno1').val(val3);
    $("#nuevoTiempoMuerto").openModal();
});
/****************VALIDAR FECHA DE ORDEN DE PRODUCCION***************************************/
$("#valOrdP7").on('click', function() {
    $.ajax({
        url: "validaFechaNoOrden",
        type: "POST",
        async: true,
        success: function(data) {
            var fechaOrdF = moment(data, 'YYYY-MM-DD');
            var hoy = moment(new Date(), 'YYYY-MM-DD');
            if (fechaOrdF < hoy) {
                $.ajax({
                    url: "cambiarEstadoRpt",
                    type: "POST",
                    async: true,
                    success: function() {
                        gotopage("reporte");
                    }
                })
            } else {
                gotopage("reporte");
            };
        }
    });
});

function guardarTM1() {
    var idRptD = $('#idRptD').val();
    var ordP1 = $('#ordP1').val();
    var consecutivo = $('#consecutivo').val();
    var turno1 = $('#turno1').val();
    var timepickerII = $('#timepickerII').val();
    var timepickerFF = $('#timepickerFF').val();
    var maquina = $('#maquina').val();
    var descipcion11 = $('#descipcion').val();
    //descipcion11.replace("."," ");
    $.ajax({
        url: "../guardarTM/" + idRptD + '/' + ordP1 + '/' + consecutivo + '/' + turno1 + '/' + timepickerII + '/' + timepickerFF + '/' + maquina + '/' + descipcion11,
        type: "POST",
        async: true,
        success: function(data) {
            console.log(data);
            console.log(data);
            if (data == 1) {
                Materialize.toast('SE GUARDO CON ÉXITO', 1000);
            } else {
                Materialize.toast('ERROR AL GUARDAR', 1000);
            };
        }
    });
}

/****************VALIDA SI EL NUMERO DE ORDEN YA EXISTE***************************************/
/*$("#numOrden").on('change',function(event) {
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
                $('#formNuevoReporte').submit();
            };
        }
    });
});*/

/****************VALIDA SI EL NUMERO DE ORDEN YA EXISTE***************************************/
$("#numOrden").on('change', function(event) {
    var numOrden = $('#numOrden').val();
    $.ajax({
        url: "validarReporte/" + numOrden,
        type: "POST",
        async: true,
        success: function(data) {
            if (data == true) {
                swal({
                    title: " ",
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

function cambiaStatusRpt(idOrden, numOrden, estado) {
    var idOrd = idOrden;
    var numOrd = numOrden;
    var status = estado;
    var miMSS = "";

    switch (estado) {
        case 0:
            $.ajax({
                url: "validaRpt/" + numOrd,
                async: true,
                success: function(data) {
                    if (data == true) {
                        swal({
                            title: ' ',
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
            });
            break;
        case 1:
            $.ajax({
                url: "validarNoOrden",
                type: "POST",
                async: true,
                success: function(data) {
                    if (data == true) {
                        swal({
                            title: 'Ya existe una orden activa',
                            text: '¿Desea dar de baja a la anterior y agregar esta como orden activa?',
                            type: 'warning',
                            showCloseButton: true,
                            showCancelButton: true,
                            confirmButtonColor: '#831F82',
                            confirmButtonText: 'ACEPTAR',
                            cancelButtonText: 'CANCELAR'
                        }).then(function() {
                            $.ajax({
                                url: "FechaInicio/" + numOrd,
                                type: "post",
                                async: true,
                                success: function(data) {
                                    var fecha3 = moment(data).format('DD/MM/YYYY');
                                    var fec2 = new Date();
                                    var fecha4 = moment(fec2).format('DD/MM/YYYY');
                                    if (fecha3 >= fecha4) {
                                        cambiaOrdenActiva(idOrd, 3);
                                    } else {
                                        swal({
                                            title: "",
                                            text: 'Esta orden no puede ser seleccionada como activa porque su fecha de inicio ya caduco',
                                            type: 'warning',
                                            confirmButtonColor: '#831F82',
                                            confirmButtonText: 'CERRAR'
                                        }).then()
                                    };
                                }
                            });

                        });
                    } else { cambiaOrdenActiva(idOrd, 3); }
                }
            });
            break;
        case 2:
            swal({
                title: "CAMBIAR ESTADO",
                text: '¿Desea cerrar esta orden?',
                type: 'warning',
                showCloseButton: true,
                confirmButtonColor: '#831F82',
                confirmButtonText: 'CERRAR',
                showCancelButton: true,
                cancelButtonText: 'Cancelar',
            }).then(function() {
                $.ajax({
                    url: "cambiarEstadoRpt/" + idOrd + "/" + status,
                    type: "post",
                    async: true,
                    success: function() {
                        swal({
                            title: "EL ESTADO DE LA ORDEN SE CAMBIO CORECTAMENTE!",
                            type: "success",
                            confirmButtonText: "CERRAR",
                        }).then(
                            function() { gotopage("reporte"); }
                        )
                    }
                })
            });
            break;
    }
}
/****************FUNCION PARA CAMBIAR STATUS DE LA ORDEN DE PRODUCCION********************/
function confirmacionCambioStatus(mensaje, textbutton, idOrden, status) {
    swal({
        title: "CAMBIAR ESTADO",
        text: mensaje,
        type: 'warning',
        showCloseButton: true,
        confirmButtonColor: '#831F82',
        confirmButtonText: textbutton,
        showCancelButton: true,
        cancelButtonText: 'Cancelar',
    }).then(function() {
        $.ajax({
            url: "cambiarEstadoRpt/" + idOrden + "/" + status,
            type: "post",
            async: true,
            success: function() {
                swal({
                    title: "EL ESTADO DE LA ORDEN SE CAMBIO CORECTAMENTE!",
                    type: "success",
                    confirmButtonText: "CERRAR",
                }).then(
                    function() { gotopage("reporte"); }
                )
            }
        });
    })
}

/*function cambiaStatusRpt(idReporte1, estado) {
    if (estado == 1) {
        var miMSS = "¿DESEA CAMBIAR EL ESTADO ACTIVO DEL REPORTE?";
    } else { var miMSS = "¿DESEA CAMBIAR EL ESTADO INACTIVO DEL REPORTE?"; }

    swal({
        title: " ",
        text: miMSS,
        type: 'warning',
        showCloseButton: true,
        confirmButtonColor: '#831F82',
        confirmButtonText: 'CAMBIAR'
    }).then(function() {
        $.ajax({
            url: "cambiarEstadoRpt/" + idReporte1 + "/" + estado,
            type: "post",
            async: true,
            success: function() {
                swal({
                    title: "EL ESTADO DEL REPORTE SE CAMBIO CORECTAMENTE!",
                    type: "success",
                    confirmButtonText: "CERRAR",
                }).then(
                    function() { gotopage("reporte_Controller"); }
                )
            }

        })
    })
}*/

/****************DANDO DE BAJA A ORDENES DE PRODUCCION******************************/
function cambiaOrdenActiva(idOrden, status) {
    var codigoUnico = idOrden;
    $.ajax({
        url: "cambiarOrdenActiva/" + codigoUnico,
        async: true,
        success: function(data) {
            if (data == true) {
                swal({
                    text: "SE CAMBIO A ACTIVA LA ORDEN SELECCIONADA",
                    type: "success",
                    confirmButtonText: "CERRAR",
                }).then(
                    function() { gotopage("reporte"); }
                )
            } else {
                swal({
                    text: "LA ORDEN SELECCIONADA NO PUEDE SER MARCADA COMO ACTIVA",
                    type: "warning",
                    confirmButtonText: "CERRAR",
                }).then()
            };
        }
    });
}

/****************ACTUALIZAR ORDEN DE PRODUCCION***************************/
$('#actualizarRpt').click(function() {
    var codUnico = $('#numOrden1').val();
    $.ajax({
        url: "validaRpt/" + codUnico,
        async: true,
        success: function(data) {
            if (data == true) {
                swal({
                    title: ' ',
                    text: 'No se puede editar esta orden ya que existen uno o más registros enlazados a ella',
                    type: 'warning',
                    showCloseButton: true,
                    confirmButtonColor: '#831F82',
                    confirmButtonText: 'ACEPTAR'
                }).then()
            } else {
                swal({
                    title: " ",
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

function buscarOrdProd(identificador) {
    var codigoUnico = identificador;
    $("#actualizarRpt").show();
    $("#title1").show();
    $("#title2").hide();
    $.ajax({
        url: "buscarOrden/" + codigoUnico,
        async: true,
        success: function(json) {
            var estadoA = "";
            $.each(JSON.parse(json), function(i, item) {
                estadoA = item['Estado'],
                    $('#identificador').val(item['IdOrden'])
                $('#numOrden1').val(item['NoOrden']),
                    $('#fechaInicio1').val(item['FechaInicio']),
                    $('#fechaFinal1').val(item['FechaFin']),
                    $('#comentario1').val(item['comentarios'])
            })
            if (estadoA == 0) {
                $("#actualizarRpt").hide();
                $("#title2").show();
                $("#title1").hide();
            };
            $("#nuevaOrdenP").openModal();
        }
    });
}


function abrirPagina() {
    $.ajax({
        url: "detalleTiempoMuerto/" + 1,
        async: true,
        type: 'post',
        success: function(json) {

            /*var estadoA="";        
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
                 };*/
            //$("#nuevaOrdenP").openModal(); 
        }
    });
}
//http://localhost:8082/phinn/index.php/
function buscarTiempoM(identificador) {
    $.ajax({
        url: "../detalleTiempoMuerto/" + identificador,
        async: true,
        success: function(json) {
            $.each(JSON.parse(json), function(i, item) {
                $('#IdReporteDiario').text(item['IdReporteDiario']),
                    $('#HoraInicio').text(item['HoraInicio']),
                    $('#HoraFin').text(item['HoraFin']),
                    $('#Maquina').text(item['Maquina']),
                    $('#Descrip').val(item['Descripcion']),
                    $('#interval').text(item['Intervalos']),
                    $('#turno').text(item['Turno']);
            })
            $("#visTiempoM").openModal();
        }
    });
}

$('.verDetalleTM').click(function() {
    alert('hola');
});

$('#cerrarMdl').click(function() {
    $("#visTiempoM").closeModal();
});

//Cargar pagina
function gotopage(mypage) {
    $(location).attr('href', mypage);
}
/*/////////////////////////////////////////////////////////////////////////////////////////
                                    FIN MIS FUNCIONES
//////////////////////////////////////////////////////////////////////////////////////////*/



/*/////////////////////////////////////////////////////////////////////////////////////////
                                FUNCIONES SOBRE Id's Tablas
//////////////////////////////////////////////////////////////////////////////////////////*/
$('#BuscarUsuarios').on('keyup', function() {
    var table = $('#TblMaster').DataTable();
    table.search(this.value).draw();

    //$("#TblMaster_filter").hide();
});

$('#BuscarUsuarios').on('keyup', function() {
    var table = $('#TblMaster').DataTable();
    table.search(this.value).draw();

    //$("#TblMaster_filter").hide();
});

$('#filtrarRep').on('keyup', function() {
    var table = $('#tlbListaRep').DataTable();
    table.search(this.value).draw();
});

$("#TblMaster").DataTable({
    "ordering": false,
    "info": false,
    "bPaginate2": false,
    "bfilter": true,
    "pagingType": "full_numbers",
    "aaSorting": [
        [0, "asc"]
    ],
    "lengthMenu": [
        [5, 10, -1],
        [5, 10, "Todo"]
    ],
    "language": {
        "emptyTable": "No hay datos disponible en la tabla",
        "lengthMenu": "_MENU_",
        //"search":'<i style="color:#039be5; font-size:40px;" class="material-icons">search</i>',
        "loadingRecords": "",
        "info": "Mostrando _START_ a _END_ de _TOTAL_ registro",
        "infoEmpty": "Mostrando 0 a 0 de 0 registro",
        "infoFiltered": "(filtrado de _MAX_ registros totales)",
        "zeroRecords": "No se han encontrado resultados para tu búsqueda",
        "paginate": {
            "first": "Primera",
            "last": "Última ",
            "next": "Anterior",
            "previous": "Siguiente"
        }
    }
});

$("#tlbListaRep").DataTable({
    "ordering": false,
    "info": false,
    "bPaginate2": false,
    "bfilter": true,
    "pagingType": "full_numbers",

    "aaSorting": [
        [2, "asc"]
    ],
    /*"lengthMenu": [
        [5, 10, -1],
        [5, 10, "Todo"]
    ],*/

    "language": {
        "emptyTable": "No hay datos disponible en la tabla",
        "lengthMenu": "_MENU_",
        //"search":'<i style="color:#039be5; font-size:40px;" class="material-icons">search</i>',
        "loadingRecords": "",
        "info": "Mostrando _START_ a _END_ de _TOTAL_ registro",
        "infoEmpty": "Mostrando 0 a 0 de 0 registro",
        "infoFiltered": "(filtrado de _MAX_ registros totales)",
        "zeroRecords": "No se han encontrado resultados para tu búsqueda",
        "paginate": {
            "first": "Primera",
            "last": "Última ",
            "next": "Anterior",
            "previous": "Siguiente"
        },
    }
});

$("#tlbTiemposMuertos").DataTable({
    "ordering": false,
    "paginate": false,
    'filter': false,
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
        "info": "Mostrando _START_ a _END_ de _TOTAL_ registro",
        "infoEmpty": "Mostrando 0 a 0 de 0 registro",
        "infoFiltered": "(filtrado de _MAX_ registros totales)",
        "zeroRecords": "No se han encontrado resultados para tu búsqueda",
        "paginate": {
            "first": "Primera",
            "last": "Última ",
            "next": "Anterior",
            "previous": "Siguiente"
        },
    }
});

$("#tlbTiemposMuertos2").DataTable({
    //"ordering": true,
    "paginate": false,
    'filter': false,
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
        "info": "Mostrando _START_ a _END_ de _TOTAL_ registro",
        "infoEmpty": "Mostrando 0 a 0 de 0 registro",
        "infoFiltered": "(filtrado de _MAX_ registros totales)",
        "zeroRecords": "No se han encontrado resultados para tu búsqueda",
        "paginate": {
            "first": "Primera",
            "last": "Última ",
            "next": "Anterior",
            "previous": "Siguiente"
        },
    }
});

$("#tablaProd").DataTable({
    "paginate": true,
    'filter': false,
    "info": false,
    "bPaginate2": false,
    "bfilter": false,
    //"pagingType": "full_numbers",
    //"aaSorting": [[2, "asc"]],
    "lengthMenu": [
        [5, 10, -1],
        [5, 10, "Todo"]
    ],
    "language": {
        "emptyTable": "No hay datos disponible en la tabla",
        "lengthMenu": "_MENU_",
        //"search":'<i style="color:#039be5; font-size:40px;" class="material-icons">search</i>',
        "loadingRecords": "",
        "info": "Mostrando _START_ a _END_ de _TOTAL_ registro",
        "infoEmpty": "Mostrando 0 a 0 de 0 registro",
        "infoFiltered": "(filtrado de _MAX_ registros totales)",
        "zeroRecords": "No se han encontrado resultados para tu búsqueda",
        "paginate": {
            "first": "Primera",
            "last": "Última ",
            "next": "Anterior",
            "previous": "Siguiente"
        },
    }
});

$("#tblpasta").DataTable({
    "paginate": false,
    'filter': false,
    "info": false,
    "bPaginate2": false,
    "bfilter": false,
    //"pagingType": "full_numbers",
    //"aaSorting": [[2, "asc"]],
    "lengthMenu": [
        [5, 10, -1],
        [5, 10, "Todo"]
    ],
    "language": {
        "emptyTable": "No hay datos disponible en la tabla",
        "lengthMenu": "_MENU_",
        //"search":'<i style="color:#039be5; font-size:40px;" class="material-icons">search</i>',
        "loadingRecords": "",
        "info": "Mostrando _START_ a _END_ de _TOTAL_ registro",
        "infoEmpty": "Mostrando 0 a 0 de 0 registro",
        "infoFiltered": "(filtrado de _MAX_ registros totales)",
        "zeroRecords": "No se han encontrado resultados para tu búsqueda",
        "paginate": {
            "first": "Primera",
            "last": "Última ",
            "next": "Anterior",
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

$("#rol").change(function() {
    if ($(this).val() == "5") {
        $("#Pass").hide();
        $("#lblPass").hide();
        $("#PassC").hide();
        $("#lblPassC").hide();
    } else {
        $("#Pass").show();
        $("#lblPass").show();
        $("#PassC").show();
        $("#lblPassC").show();
    }
});
// VALIDACION DE PASSWORD //
$("#Adduser").click(function() {
    var pass = $("#Pass").val();
    var passc = $("#PassC").val();
    var priv = $("#rol").val().trim();
    if (pass != passc) {
        swal({
            text: "Las contraseñas no coinciden, " +
                " inténtelo nuevamente",
            type: 'warning',
            confirmButtonText: 'cerrar'
        });
        event.preventDefault();
    } else if (pass.length < 6 && priv != "5") {
        swal({
            text: "La contraseña debe tener como mínimo 6 dígitos, " +
                " inténtelo nuevamente",
            type: 'info',
            confirmButtonText: 'cerrar'
        });
        event.preventDefault();
    }
});


// VALIDACION DE CAMPOS VACIOS //
$("#Adduser").click(function() {
    var user = $("#Usuario").val();
    var nomc = $("#NombreC").val();
    var priv = $("#rol").val().trim();
    var pasw = $("#Pass").val();
    if (pasw == "" && priv == "5") {
        pasw = null;
    }
    if (user == "" | nomc == "" | priv == "" | pasw == "") {
        swal({
            text: "TODOS LOS CAMPOS SON REQUERIDOS, " +
                " DEBE COMPLETAR EL CAMPO FALTANTE",
            confirmButtonText: "cerrar",
            type: "info"
        }).then(function() {
            if (user == "") {
                $("#Usuario").focus();
            }
            if (nomc == "") {
                $("#NombreC").focus();
            }
            if (pasw == "") {
                $("#Pass").focus();
            }
            if (priv == "") {
                swal({
                    text: "Debe seleccionar un Rol para el usuario",
                    type: "info",
                    confirmButtonText: "cerrar"
                });
            }
        });
        event.preventDefault();
    }
});
////// EVITAR EL DOBLE ENVIO DE FORMULARIO//////
function checksubmit(form) {
    $("#Adduser").hide();
    $("#load").show();
    return true;
}

function BorrarUsuario(IdUsuario, Estado) {

    if (Estado == 1) {
        var miMSS = "¿DESEA CAMBIAR EL ESTADO ACTIVO AL USUARIO?";
    } else { var miMSS = "¿DESEA CAMBIAR EL ESTADO INACTIVO AL USUARIO?"; }

    swal({
        title: '',
        text: miMSS,
        type: 'question',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Cambiar',
        cancelButtonText: 'Cancelar'
    }).then(function() {

        $.ajax({
            url: "EditarUsuario/" + IdUsuario + "/" + Estado,
            type: "post",
            async: true,
            success: function(json) {
                swal({
                    title: "EL USUARIO SE CAMBIO CORRECTAMENTE!",
                    type: "success",
                    confirmButtonText: "CERRAR"
                }).then(
                    function() { gotopage("Usuarios"); }
                )
            }
        });
    })
}


/*/////////////////////////////////////////////////////////////////////////////////////////
                                 FUNCIONES SOBRE ORDENES
//////////////////////////////////////////////////////////////////////////////////////////*/

$("#AddOrden").click(function() {

    var Fechainicio = $("#Fechainicio").val();
    var Fechafin = $("#Fechafin").val();
    var papel = $("#papel").val();
    var coordinador = $("#coordinador").val();
    var Turno = $('#turno option:selected').val();
    if (Fechainicio == "" | Fechafin == "" | papel == "" | coordinador == "" | Turno == "") {
        swal({
            text: "Todos los campos son requeridos",
            type: "info",
            confirmButtonText: "CERRAR"
        });
        event.preventDefault();
    }

    var fec = Fechainicio.substring(8);
    var fec1 = Fechafin.substring(8);
    if (fec > fec1) {
        swal({
            text: "La fecha de inicio no puede ser mayor a la fecha final",
            type: "info",
            confirmButtonText: "CERRAR"
        });
        event.preventDefault();
    }
});

$('#turno').change(function() {

        var Fecha = $("#Fechainicio").val();
        var turno = $('#turno option:selected').val();
        var consecutivo = $("#cons").val();
        var ajax = $.ajax({
            url: "ValidaFecha/" + Fecha + "/" + turno + "/" + consecutivo,
            type: "POST",
            async: true,
            success: function(data) {

                if (data == true) {
                    swal({
                        title: " ",
                        text: 'ya existe una registro de produccion con la misma fecha de inicio y turno ' + " para la orden " + consecutivo,
                        type: 'warning',
                        showCloseButton: true,
                        confirmButtonColor: '#831F82',
                        confirmButtonText: 'ACEPTAR'
                    });
                }
            }
        });
    })
    /*/////////////////////////////////////////////////////////////////////////////////////////
                                    FIN FUNCIONES SOBRE ORDENES
    //////////////////////////////////////////////////////////////////////////////////////////*/



/*/////////////////////////////////////////////////////////////////////////////////////////
                                 FUNCIONES SOBRE PRODUCCION
//////////////////////////////////////////////////////////////////////////////////////////*/
$("#agregarP").click(function() {
    $('#nuevaProduccion').openModal();
});


function Guardar() {
    var form_data = {
        idRptD: $("#idRptD").val(),
        NoOrden: $("#NoOrden").val(),
        timepickerII: $("#timepickerII").val(),
        timepickerFF: $("#timepickerFF").val(),
        operador: $("#operador option:selected").val(),
        maquina: $("#maquina option:selected").val(),
        Velocidad: $("#Velocidad").val(),
        peso: $("#peso").val(),
        Diametro: $("#Diametro").val(),
        pesobase: $("#pesobase").val()
    };
    var envio = $.ajax({
        url: "../GuardaProduccion",
        type: "post",
        async: true,
        data: form_data,
        beforeSend: function() {
            var horain = $("#timepickerII").val(),
                horafin = $("#timepickerFF").val(),
                oper = $("#operador option:selected").val(),
                maq = $("#maquina option:selected").val(),
                vel = $("#Velocidad").val(),
                peso = $("#peso").val(),
                diam = $("#Diametro").val(),
                pesobase = $("#pesobase").val();
            if (horain == "" | horafin == "" | oper == "" | maq == "" | peso == "" | pesobase == "" | diam == "") {
                swal({
                    type: "info",
                    text: "TODOS LOS CAMPOS SON REQUERIDOS" + ", " + "DEBE COMPLETAR EL CAMPO FALTANTE",
                    confirmButtonText: "CERRAR"
                });
                envio.abort();
                envio = null;

            }
        },
        success: function(data) {
            if (data = 1) {

                Materialize.toast('SE GUARDO CON ÉXITO', 1000);
                $("#idRptD").val("")
                $("#NoOrden").val("")
                $("#timepickerII").val("")
                $("#timepickerFF").val("")
                $("#Velocidad").val("")
                $("#peso").val("")
                $("#Diametro").val("")
                $("#pesobase").val("")
            } else {
                Materialize.toast('ERROR AL GUARDAR', 1000);
            }
        }
    });
}

function EliminarProd(elem) {
    var id = $(elem).attr("id");
    swal({
        title: '¿Estas seguro que deseas eliminar este registro?',
        text: 'esta operacion no podra revertirse',
        type: 'question',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Eliminar',
        cancelButtonText: 'Cancelar'
    }).then(function() {
        $.ajax({
            url: "../EliminarProduccion/" + id,
            async: true,
            success: function() {
                swal({
                    text: "El registro se ha elimando correctamente",
                    type: "success",
                    confirmButtonText: "CERRAR"
                }).then(
                    function() {
                        location.reload();
                    }
                )
            }
        });
    })
}

function EditarProd(Operador, Maquina, HoraInicio, HoraFin, Velocidad, Peso, Diametro, PesoBase) {
    $("#lbloperador").text(Operador);
    $("#lblmaq").text(Maquina);
    $("#lblhorain").text(HoraInicio)
    $("#lblhorafin").text(HoraFin)
    $("#lblvelocidad").text(Velocidad)
    $("#lblpeso").text(Peso)
    $("#lbldiametro").text(Diametro)
    $("#lblpesobase").text(PesoBase)
}
/*/////////////////////////////////////////////////////////////////////////////////////////
                               FIN  FUNCIONES SOBRE PRODUCCION
//////////////////////////////////////////////////////////////////////////////////////////*/

/*/////////////////////////////////////////////////////////////////////////////////////////
                                FUNCIONES SOBRE MATERIA PRIMA
//////////////////////////////////////////////////////////////////////////////////////////*/
function Guardarmp() {
    debugger;
    var form_data1 = {
        idRptD: $("#idRptD").val(),
        Tanque: $("#Tanque").val(),
        dia: $("#dia").val(),
        noche: $("#noche").val(),
        consumo: $("#consumo").val()
    };
    var AJAX = $.ajax({
        url: "../GuardarMP",
        type: "POST",
        async: true,
        data: form_data1,
        beforeSend: function(data) {
            debugger;
            var tanq = $("#Tanque").val(),
                day = $("#dia").val(),
                night = $("#noche").val(),
                consu = $("#consumo").val();
            if (tanq == "TANQUES" | day == "" | night == "" | consu == "") {
                swal({
                    text: "Todos los campos son requeridos",
                    type: "info",
                    confirmButtonText: "CERRAR"
                });
                AJAX.abort();
            }
        },
        success: function(data) {
            if (data = 1) {
                Materialize.toast('SE GUARDO CON ÉXITO', 1000);
            } else {
                Materialize.toast('ERROR AL GUARDAR', 1000);
            }
        }
    });
}

$('#Tanque').on("change", function() {
    var tanque = $('#Tanque option:selected').val(),
        ID = $("#idRptD").val();
    var ajax = $.ajax({
        url: "../ValidaPasta/" + tanque + "/" + ID,
        type: "POST",
        async: true,
        success: function(data) {
            if (data == true) {
                swal({
                    title: " ",
                    text: 'ya existe una registro con el tanque #' + tanque,
                    type: 'warning',
                    showCloseButton: true,
                    confirmButtonColor: '#831F82',
                    confirmButtonText: 'ACEPTAR'
                });
                $("#matprim").hide();
            } else {
                $("#matprim").show();
            }
        }
    });
})