/*/////////////////////////////////////////////////////////////////////////////////////////
                                    MIS FUNCIONES
//////////////////////////////////////////////////////////////////////////////////////////*/
//Abrir los diferentes modales del sistema
$(document).ready(function() {
    /***********LISTO LAS FIBRAS EN CARGAS PULPER*********************/
    var pathname = window.location.pathname;
    if (pathname.match(/cargaspulper.*/)) {
        crearTabla();
        listarHorasMolienda();
    };
    $("#crearU").click(function() { $("#AUsuario").openModal(); });
    $("#crearT").click(function() { $("#ATrabajador").openModal(); });

    $("#agregarMP").click(function() { $("#nuevaMatPrim").openModal(); });
    $("#modinsumo").click(function() {
        $("#modalInsumo").openModal();
    });

    $("#btnAgregarf").click(function() { $("#modal11").openModal(); });
    $("#btnAgregaHM").click(function() { $("#modal12").openModal(); });
    $('#ddlts').dropdown('open');

    ///Configurar chosen////
    var config = {
        '.chosen-select': {}
    }
    for (var selector in config) {
        $(selector).chosen(config[selector]);
    }

    $('#timepicker , #timepicker1, #timepickerII, #timepickerFF, #timeHM1, #timeHM2, #timeHM12, #timeHM22').pickatime({
        default: '', // default time, 'now' or '13:14' e.g.
        donetext: 'aceptar',
        format: 'HH:i uur',
        formatSubmit: 'HH:i',
        hiddenName: true,
        min: [6, 0],
        max: [17, 00],
        disable: [
            [12, 0],
            [12, 30]
        ], // done button text
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
    $('.numeric').numeric();
    $("#Dia").numeric();
    $("#Noche").numeric();
    $("#ptadia").numeric();
    $("#ptanoche").numeric();
    $("#dia").numeric();
    $("#noche").numeric();
    $("#consumo").numeric();
    $("#peso").numeric();
    $("#pesobase").numeric();
    $("#Diametro").numeric();
    $("#Velocidad").numeric();
});

$('#cerrarCP').click(function() {
    $("#modal11").closeModal();
    location.reload();
});
$('#cerrarHM').click(function() {
    $("#modal12").closeModal();
    location.reload();
});
$('#cerrarHM1').click(function() {
    $("#modal13").closeModal();
    location.reload();
});

$('#tlbListaRep2').on('click', 'tbody .detalleNumOrd', function () {
    var table = $('#tlbListaRep2').DataTable();
    var tr = $(this).closest('tr'); $(this).addClass("detalleNumOrd");
    var row = table.row(tr);
    var data = table.row( $(this).parents('tr') ).data();//obtengo todos los datos de la fila que di click
    //alert (data[1]); //este es el dato de la segunda columna

    if (row.child.isShown()) {// esta fila ya se encuentra visible - cierrala
        row.child.hide();
        tr.removeClass('shown');
        $(this).removeClass("detalleNumOrd");            
    } else {// muestra la fila
        $('#loader'+data[1]).show();
        $('#detail'+data[1]).hide();
        format(row.child,data[1],data[1]);
        tr.addClass('shown');
    }
});
function format(callback,noOrden,div) {//funcion para traer llos datos y tabla de detalles
  var ia=0;
        $.ajax({
        url:'detalleOrdenProduccion/'+noOrden,
        dataType: "json",
        complete: function (response) {
            var data = JSON.parse(response.responseText);
            console.log(data);
               var thead = '',  tbody = '';
                for (var key in data) {
                    thead += '<th class="negra center">N° ORDEN</th>';
                    thead += '<th class="negra center">TURNO</th>';
                    thead += '<th class="negra center">FECHA INICIO</th>';
                    thead += '<th class="negra center">FECHA FIN</th>';
                    thead += '<th class="negra center">COORDINADOR</th>';
                    thead += '<th class="negra center">GRUPO</th>';
                    thead += '<th class="negra center">TIPO PAPEL</th>';
                }
               $.each(data, function (i, d) {
                  $.each(d, function (a, b) {
                     ia++;
                  });
                    for (var x=0; x<ia; x++) {
                    tbody += '<tr class="center">' +
                                  '<td>' + d[x]["NoOrder"] + '</td>'+
                                  '<td>' + d[x]["Turno"] + '</td>'+
                                  '<td>' + d[x]["FechaInicio"] + '</td>'+
                                  '<td>' + d[x]["FechaFinal"] + '</td>'+
                                  '<td>' + d[x]["Nombre"] + '</td>'+
                                  '<td>' + d[x]["Grupo"] + '</td>'+
                                  '<td>' + d[x]["TipoPapel"] + '</td>'+
                              '</tr>';
                      }                   
                });
            callback($('<table id="tlbListaRep2">' + thead + tbody + '</table>')).show();
             $('#loader'+div).hide();
             $('#detail'+div).show();
        },
        error: function () {
            $('#output').html('Hubo un error al cargar los detalles!');
        }
    });
  }
/******************CREAR Y LLENAR TABLA CARGAS PULPER**************************/
function crearTabla() {
    var cantColumns = 0;
    var cont1 = 0;
    var cont2 = 0;
    var cont3 = 0;
    var IdReporteDiario = $('#idRptD').val();
    $.ajax({
        url: "../listandoCargasPulper/" + IdReporteDiario,
        async: true,
        success: function(json) {
            if (json != 'FALSE') {
                var obj = $.parseJSON(json);
                var html = '<table class="striped" id="tblCargasPulper"><thead>';
                html += '<tr class="tblcabecera"><th>TIPO DE FIBRA (KG)</th>';
                for (var i = 0; i < obj.length; i++) {
                    if (obj[i]['IdInsumo'] == 1) {
                        cont1 = cont1 + 1;
                    } else if (obj[i]['IdInsumo'] == 2) {
                        cont2 = cont2 + 1;
                    } else if (obj[i]['IdInsumo'] == 12) {
                        cont3 = cont3 + 1;
                    };
                };
                if (cont1 >= cont2 && cont1 >= cont3) {
                    for (var i = 0; i < cont1; i++) {
                        html += '<th>' + (cantColumns = cantColumns + 1) + '</th>';
                    };
                } else if (cont2 >= cont3 && cont2 >= cont1) {
                    for (var i = 0; i < cont2; i++) {
                        html += '<th>' + (cantColumns = cantColumns + 1) + '</th>';
                    };
                } else if (cont3 >= cont2 && cont3 >= cont1) {
                    for (var i = 0; i < cont3; i++) {
                        html += '<th>' + (cantColumns = cantColumns + 1) + '</th>';
                    };
                };
                html += '</tr></thead>';
                html += '<tbody>';
                html += '<tr><td>BLANCO IMPRESO</td>';
                for (var i = 0; i < obj.length; i++) {
                    if (obj[i]['IdInsumo'] == 1) {
                        html += '<td><input class="inputCP numeric" id="cargaN' + obj[i]['IdCargaPulper'] + '" onchange="actualizandoCargasPulper(' + obj[i]['IdCargaPulper'] + ', this.value)" value="' + obj[i]['Cantidad'] + '"/></td>';
                    }
                };
                html += '</tr>';
                html += '<tr><td>MEZCLADO (COLOR)</td>';
                for (var i = 0; i < obj.length; i++) {
                    if (obj[i]['IdInsumo'] == 2) {
                        html += '<td><input class="inputCP numeric" id="cargaN' + obj[i]['IdCargaPulper'] + '" onchange="actualizandoCargasPulper(' + obj[i]['IdCargaPulper'] + ', this.value)" value="' + obj[i]['Cantidad'] + '"/></td>';
                    }
                };
                html += '<tr><td>MERMA</td>';
                for (var i = 0; i < obj.length; i++) {
                    if (obj[i]['IdInsumo'] == 12) {
                        html += '<td><input class="inputCP numeric" id="cargaN' + obj[i]['IdCargaPulper'] + '" onchange="actualizandoCargasPulper(' + obj[i]['IdCargaPulper'] + ', this.value)" value="' + obj[i]['Cantidad'] + '"/></td>';
                    }
                };
                html += '</tr>';
                html += '</tr>';
                html += '</tbody></table>';
                $("#btnAgregarf").after(html);
                $('#ocultar').hide();
            };
        }
    });
}
/**************AGREGAR HORAS MOLIENDAS******************************/
function listarHorasMolienda() {
    var cantColumns = 0;
    var IdReporteDiario = $('#idRptD').val();
    $.ajax({
        url: "../listandoHorasMolienda/" + IdReporteDiario,
        type: "POST",
        async: true,
        success: function(json) {
            if (json != 'FALSE') {
                var obj = $.parseJSON(json);
                var html = '<table class="striped" id=""><thead>';
                html += '<tr class="tblcabecera"><th>CARGA</th>'
                html += '<th>HORAS Y MINUTOS</th>';
                for (var i = 0; i < obj.length; i++) {
                    html += '<th>' + (cantColumns = cantColumns + 1);
                    html += '<a onclick="buscarHorasMolienda(' + obj[i]['IdHora'] + ')" href="#!" class="purple-text darken-4">';
                    html += '<i class="material-icons right">create</i></a>';
                    html += '</th>';
                };
                html += '</tr></thead>';
                html += '<tbody>';
                html += '<tr><td rowspan="3">BATIDO</td>'
                html += '<td>HORA INICIO</td>';
                for (var i = 0; i < obj.length; i++) {
                    html += '<td><span>' + obj[i]['horaInicio'] + '</span></td>';
                };
                html += '</tr>';
                html += '<tr><td>HORA FINAL</td>';
                for (var i = 0; i < obj.length; i++) {
                    html += '<td><span>' + obj[i]['horaFin'] + '</span></td>';
                };
                html += '</tr>';
                html += '<tr><td>TIEMPO</td>';
                for (var i = 0; i < obj.length; i++) {
                    html += '<td><span class="editar1">' + obj[i]['tiempo'] + '</span></td>';
                };
                html += '</tr>';
                html += '</tbody></table>';
                $("#btnAgregaHM").after(html);
                $('#ocultar2').hide();
            };
        }
    });
}

/****************BUSQUEDA POR ID HORAS MOLIENDA*********************/
function buscarHorasMolienda(idHoraMolienda) {
    $.ajax({
        url: "../buscarHorasMolienda/" + idHoraMolienda,
        type: 'POST',
        async: true,
        success: function(data) {
            if (data != 'FALSE') {
                $.each(JSON.parse(data), function(i, item) {
                    $('#timeHM12').val(item['horaInicio']),
                        $('#timeHM22').val(item['horaFin']),
                        $('#idHora').val(item['IdHora'])
                });
                $("#modal13").openModal();
            }
        }
    });
}
/*************ACTUALIZANDO HORA MOLIENDA***************************/
function actualizarHorasMolienda() {
    var form_data = {
        idHora: $('#idHora').val(),
        timepickerII: $('#timeHM12').val(),
        timepickerFF: $('#timeHM22').val()
    };
    $.ajax({
        url: "../actualizaHoraMolienda",
        type: "post",
        async: true,
        data: form_data,
        success: function(data) {
            console.log(data);
            if (data == 1) {
                Materialize.toast('SE GUARDO CON ÉXITO', 1000);
                $('#descipcion').val('');
            } else {
                Materialize.toast('ERROR AL GUARDAR', 1000);
            };
        }
    });
}

/****************GUARDANDO HORAS MOLIENDA**********************/
function guardarHorasMolienda() {
    var result = validarControlesTM();
    if (result != false) {
        var form_data = {
            idRptD: $('#idRptD').val(),
            timepickerII: $('#timeHM1').val(),
            timepickerFF: $('#timeHM2').val()
        };
        $.ajax({
            url: "../agregarHorasMolienda",
            type: "post",
            async: true,
            data: form_data,
            success: function(data) {
                if (data == 1) {
                    Materialize.toast('SE GUARDO CON ÉXITO', 1000);
                    $('#descipcion').val('');
                } else {
                    Materialize.toast('ERROR AL GUARDAR', 1000);
                };
            }
        });
    };
}
/****************VALIDAR TIMEPICKER HORAS MOLIENDA****************************************/
function validarControlesTM() {
    var horaInicio = $('#timeHM1').val();
    var horaFinal = $('#timeHM2').val();
    var turno = $('#ordT').text();
    if (turno == "6:00am-6:00pm") {
        var h1F = moment(horaInicio, ["h:mm A"]).format("HH:mm");
        var h2F = moment(horaFinal, ["h:mm A"]).format("HH:mm");

        var h1C = moment('06:00AM', ["h:mm A"]).format("HH:mm");
        var h2C = moment('06:00PM', ["h:mm A"]).format("HH:mm");
        if (h1F < h1C || h2F > h2C) {
            mensajeAlerta('ESCOJA UNA HORA DE INICIO Y UNA FINAL ACORDE AL TURNO ACTUAL');
            return false
        } else {
            return true;
        }
    } else if (turno == "6:00pm-6:00am") {
        var h1F = moment(horaInicio, ["h:mm A"]).format("HH:mm");
        var h2F = moment(horaFinal, ["h:mm A"]).format("HH:mm");
        var AM = horaInicio.indexOf("AM");
        var PM = horaFinal.indexOf("PM");

        var h1C = moment('06:00PM', ["h:mm A"]).format("HH:mm");
        var h2C = moment('06:00AM', ["h:mm A"]).format("HH:mm");
        if (h1F < h1C && PM > 1) {
            mensajeAlerta('ESCOJA UNA HORA DE INICIO Y UNA FINAL ACORDE AL TURNO ACTUAL');
            return false;
        } else if (h1F < h1C && AM < 1) {
            mensajeAlerta('ESCOJA UNA HORA DE INICIO Y UNA FINAL ACORDE AL TURNO ACTUAL');
        } else if (h2F > h2C && AM > 1) {
            mensajeAlerta('ESCOJA UNA HORA DE INICIO Y UNA FINAL ACORDE AL TURNO ACTUAL');
            return false;
        } else if (h2F > h2C && PM < 1) {
            mensajeAlerta('ESCOJA UNA HORA DE INICIO Y UNA FINAL ACORDE AL TURNO ACTUAL');
            return false;
        } else { return true; }
    };
}
/************ACTUALIZANDO CARGAS PULPER****************************/
function actualizandoCargasPulper(idInsumo, cantidad) {
    $.ajax({
        url: "../actualizarCargaPulper/" + idInsumo + '/' + cantidad,
        type: "POST",
        async: true,
        success: function(data) {
            if (data == true) {
                Materialize.toast('SE ACTUALIZO UN REGISTRO', 1000);
            } else {
                Materialize.toast('ERROR AL MOMENTO DE ACTUALIZAR', 1000);
            };
        }
    });
}
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
                mensajeAlerta('Esta orden no puede aceptar mas ordenes de trabajo');
            } else {
                $('#cons').val(data);
                $('#spanNoOrdenT').text(data);
                $("#ordenprod").openModal();
            };
        }
    });
});

/*alert($('#cp1').attr('id'));*/

/*******AGREGANDOLE FUNCIONES DE SUBMIT A HREF************************/
$('#guardaRpt').click(function() {
    var numOrden = $('#numOrden').val();
    var fechaInicio = $('#fechaInicio').val();
    var fechaFinal = $('#fechaFinal').val();

    if (numOrden == '' || fechaInicio == '' || fechaFinal == '') {
        mensajeAlerta('Todavia no ha rellenado los campos necesarios');
    } else {
        var f1 = new Date(fechaInicio);
        var f2 = new Date(fechaFinal);
        if (f1 > f2) {
            mensajeAlerta('La fecha inicial no puede ser mayor a la final');
        } else {
            if (numOrden.length > 4 || numOrden.length < 4) {
                mensajeAlerta('El número de reporte no tiene el formato correcto');
            } else {
                var fec11 = $('#fechaInicio').val();
                var fecha3 = moment(fec11).format('DD/MM/YYYY');

                var fec22 = new Date();
                var fecha4 = moment(fec22).format('DD/MM/YYYY');
                if (fecha3 >= fecha4) {
                    $('#formNuevoReporte').submit();
                } else {
                    mensajeAlerta('La fecha inicial no puede ser menor a la fecha actual');
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
function validarControlesTiempoMuertos() {
    var result = false;
    var horaInicio = $('#timepickerII').val();
    var horaFinal = $('#timepickerFF').val();
    var maquina = $('#maquina').val();
    var descipcion = $('#descipcion').val();
    var turno = $('#ordT').text();
    if (horaInicio == "" || horaFinal == "") {
        mensajeAlerta('ESCOJA UNA HORA DE INICIO Y UNA FINAL');
        return false;
    } else {
        if (turno == "6:00pm-6:00am") {
            var h1F = moment(horaInicio, ["h:mm A"]).format("HH:mm");
            var h2F = moment(horaFinal, ["h:mm A"]).format("HH:mm");
            var AM = horaInicio.indexOf("AM");
            var PM = horaFinal.indexOf("PM");

            var h1C = moment('06:00PM', ["h:mm A"]).format("HH:mm");
            var h2C = moment('06:00AM', ["h:mm A"]).format("HH:mm");
            if (h1F < h1C && PM > 1) {
                mensajeAlerta('ESCOJA UNA HORA DE INICIO Y UNA FINAL ACORDE AL TURNO ACTUAL');
                return false;
            } else {
                if (h1F < h1C && AM < 1) {
                    mensajeAlerta('ESCOJA UNA HORA DE INICIO Y UNA FINAL ACORDE AL TURNO ACTUAL');
                } else {
                    if (h2F > h2C && AM > 1) {
                        mensajeAlerta('ESCOJA UNA HORA DE INICIO Y UNA FINAL ACORDE AL TURNO ACTUAL');
                        return false;
                    } else {
                        if (h2F > h2C && PM < 1) {
                            mensajeAlerta('ESCOJA UNA HORA DE INICIO Y UNA FINAL ACORDE AL TURNO ACTUAL');
                            return false;
                        } else {
                            if (maquina == "") {
                                mensajeAlerta('SELECCIONE UNA MAQUINA');
                                return false;
                            } else {
                                if (descipcion == "") {
                                    mensajeAlerta('ESCRIBA UNA DESCRIPCIÓN');
                                    return false;
                                } else {};
                            };
                        };
                    }

                };

            }
        } else {
            if (turno == "6:00am-6:00pm") {
                var h1F = moment(horaInicio, ["h:mm A"]).format("HH:mm");
                var h2F = moment(horaFinal, ["h:mm A"]).format("HH:mm");

                var h1C = moment('06:00AM', ["h:mm A"]).format("HH:mm");
                var h2C = moment('06:00PM', ["h:mm A"]).format("HH:mm");
                if (h1F < h1C || h2F > h2C) {
                    mensajeAlerta('ESCOJA UNA HORA DE INICIO Y UNA FINAL ACORDE AL TURNO ACTUAL');
                    return false;
                } else {
                    if (maquina == "") {
                        mensajeAlerta('SELECCIONE UNA MAQUINA');
                        //return false;
                    } else {
                        if (descipcion == "") {
                            mensajeAlerta('ESCRIBA UNA DESCRIPCIÓN');
                            //return false;
                        } else {};
                    };
                };
            };
        }
    }
}

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
/****************GUARDANDO TIEMPOS MUERTOS**********************/
function guardarTM1() {
    var result = validarControlesTiempoMuertos();
    if (result == false) {} else {
        var form_data = {
            idRptD: $('#idRptD').val(),
            ordP1: $('#ordP1').val(),
            consecutivo: $('#consecutivo').val(),
            turno1: $('#turno1').val(),
            timepickerII: $('#timepickerII').val(),
            timepickerFF: $('#timepickerFF').val(),
            maquina: $('#maquina').val(),
            descipcion11: $('#descipcion').val()
        };
        $.ajax({
            url: "../guardarTM",
            type: "post",
            async: true,
            data: form_data,
            success: function(data) {
                if (data == 1) {
                    Materialize.toast('SE GUARDO CON ÉXITO', 1000);
                    $('#descipcion').val('');
                } else {
                    Materialize.toast('ERROR AL GUARDAR', 1000);
                };
            }

        });
    }
}

/****************GUARDAR TIEMPO MUERTO***************************/
function validarControlesTiempoMuertos() {
    var result = false;
    var horaInicio = $('#timepickerII').val();
    var horaFinal = $('#timepickerFF').val();
    var maquina = $('#maquina').val();
    var descipcion = $('#descipcion').val();
    var turno = $('#ordT').text();
    if (horaInicio == "" || horaFinal == "") {
        mensajeAlerta('ESCOJA UNA HORA DE INICIO Y UNA FINAL');
        return false;
    } else {
        if (turno == "6:00pm-6:00am") {
            var h1F = moment(horaInicio, ["h:mm A"]).format("HH:mm");
            var h2F = moment(horaFinal, ["h:mm A"]).format("HH:mm");
            var AM = horaInicio.indexOf("AM");
            var PM = horaFinal.indexOf("PM");

            var h1C = moment('06:00PM', ["h:mm A"]).format("HH:mm");
            var h2C = moment('06:00AM', ["h:mm A"]).format("HH:mm");
            if (h1F < h1C && PM > 1) {
                mensajeAlerta('ESCOJA UNA HORA DE INICIO Y UNA FINAL ACORDE AL TURNO ACTUAL');
                return false;
            } else {
                if (h1F < h1C && AM < 1) {
                    mensajeAlerta('ESCOJA UNA HORA DE INICIO Y UNA FINAL ACORDE AL TURNO ACTUAL');
                } else {
                    if (h2F > h2C && AM > 1) {
                        mensajeAlerta('ESCOJA UNA HORA DE INICIO Y UNA FINAL ACORDE AL TURNO ACTUAL');
                        return false;
                    } else {
                        if (h2F > h2C && PM < 1) {
                            mensajeAlerta('ESCOJA UNA HORA DE INICIO Y UNA FINAL ACORDE AL TURNO ACTUAL');
                            return false;
                        } else {
                            if (maquina == "") {
                                mensajeAlerta('SELECCIONE UNA MAQUINA');
                                return false;
                            } else {
                                if (descipcion == "") {
                                    mensajeAlerta('ESCRIBA UNA DESCRIPCIÓN');
                                    return false;
                                } else {};
                            };
                        };
                    }

                };

            }
        } else {
            if (turno == "6:00am-6:00pm") {
                var h1F = moment(horaInicio, ["h:mm A"]).format("HH:mm");
                var h2F = moment(horaFinal, ["h:mm A"]).format("HH:mm");

                var h1C = moment('06:00AM', ["h:mm A"]).format("HH:mm");
                var h2C = moment('06:00PM', ["h:mm A"]).format("HH:mm");
                if (h1F < h1C || h2F > h2C) {
                    mensajeAlerta('ESCOJA UNA HORA DE INICIO Y UNA FINAL ACORDE AL TURNO ACTUAL');
                    return false;
                } else {
                    if (maquina == "") {
                        mensajeAlerta('SELECCIONE UNA MAQUINA');
                        //return false;
                    } else {
                        if (descipcion == "") {
                            mensajeAlerta('ESCRIBA UNA DESCRIPCIÓN');
                            //return false;
                        } else {};
                    };
                };
            };
        }
    }
}
/****************GUARDANDO CARGAS PULPER**********************/
function guardarCargaPulper() {
    if ($('#idRptD').val() == "" || $('#tipoFibra').val() == null || $('#cantidad').val() == "") {
        mensajeAlerta('AUN NO HA RELLENADO TODOS LOS CAMPOS');
    } else {
        var form_data = {
            idReporteDiario: $('#idRptD').val(),
            tipoFibra: $('#tipoFibra').val(),
            cantidad: $('#cantidad').val()
        };
        $.ajax({
            url: "../guardarCP",
            type: "post",
            async: true,
            data: form_data,
            success: function(data) {
                if (data == 1) {
                    Materialize.toast('SE GUARDO CON ÉXITO', 1000);
                    $('#cantidad').val('');
                    $('#cantidad').focus();
                } else {
                    Materialize.toast('ERROR AL GUARDAR', 1000);
                };
            }

        });
    };
}
/****************ELIMAR TIEMPO MUERTO*********************************************************/
function eliminarTM(idTiempoMuerto) {
    swal({
        title: 'ELIMINAR',
        text: '¿Desea eliminar permanentemente este registro?',
        type: 'warning',
        showCloseButton: true,
        showCancelButton: true,
        confirmButtonColor: '#831F82',
        confirmButtonText: 'ACEPTAR',
        cancelButtonText: 'CANCELAR'
    }).then(function() {
        $.ajax({
            url: "../eliminarTM/" + idTiempoMuerto,
            type: "POST",
            async: true,
            success: function(data) {
                if (data == true) {
                    location.reload();
                }
            }
        });
    });
}
/****************VALIDA SI EL NUMERO DE ORDEN YA EXISTE***************************************/
$("#numOrden").on('change', function(event) {
    var numOrden = $('#numOrden').val();
    $.ajax({
        url: "validarReporte/" + numOrden,
        type: "POST",
        async: true,
        success: function(data) {
            if (data == true) {
                mensajeAlerta('El número de orden ya existe');
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
                        mensajeAlerta('No se puede anular esta orden ya que existen uno o más registros enlazados a ella');
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

/***************MENSAJE NOTIFICACION*****************************************/
function mensajeAlerta(mensaje) {
    swal({
        title: '',
        text: mensaje,
        type: 'warning',
        showCloseButton: true,
        confirmButtonColor: '#831F82',
        confirmButtonText: 'ACEPTAR',
    }).then();
}

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
                mensajeAlerta('No se puede editar esta orden ya que existen uno o más registros enlazados a ella');
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
$('.dropdown-button').click(function() {
    $(this).dropdown();
});

/*****************BUSCAR TIEMPO MUERTO POR ID****************************/
function buscarTiempoM(identificador) {
    $.ajax({
        url: "../detalleTiempoMuerto/" + identificador,
        async: true,
        success: function(json) {
            $.each(JSON.parse(json), function(i, item) {
                //$('#IdReporteDiario').text(item['IdReporteDiario']),
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
$('#cerrarMdl').click(function() {
    $("#visTiempoM").closeModal();
});
$('#cerrarMdl1').click(function() {
    $("#nuevoTiempoMuerto").closeModal();
    location.reload();
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

    //$("#TblMaster_filter").hide();filtrarTM
});

$('#filtrarTM').on('keyup', function() {
    var table = $('#tlbTiemposMuertos').DataTable();
    table.search(this.value).draw();

    //$("#TblMaster_filter").hide();filtrarTM
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

$("#tlbListaRep, #tlbListaRep2").DataTable({
    "ordering": false,
    "info": false,
    "bPaginate2": false,
    "bfilter": true,
    "pagingType": "full_numbers",

    "aaSorting": [
        [2, "asc"]
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
        },
    }
});

$("#tlbTiemposMuertos").DataTable({
    "ordering": false,
    "info": false,
    "bPaginate2": false,
    "bfilter": true,
    "pagingType": "full_numbers",

    "aaSorting": [
        [2, "asc"]
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
    $("#Detalles").openModal();
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

function guardaInsumos() {
    debugger;
    var form_data = {
        idRptd: $("#idRptd").val(),
        Dia: $("#Dia").val(),
        Noche: $("#Noche").val(),
        ptadia: $("#ptadia").val(),
        ptanoche: $("#ptanoche").val(),
        descripcion: $("#descripcion").val()
    };
    var AJAX = $.ajax({
        url: "../GuardarMPInsumos",
        type: "POST",
        async: true,
        data: form_data,
        beforeSend: function(data) {
            debugger;
            var Dia = $("#Dia").val(),
                Noche = $("#Noche").val(),
                ptadia = $("#ptadia").val(),
                ptanoche = $("#ptanoche").val(),
                descripcion = $("#descripcion").val();
            if (Dia == "" | Noche == "" | ptadia == "" | ptanoche == "" | descripcion == null) {
                swal({
                    text: "Todos los campos son requeridos",
                    type: "info",
                    confirmButtonText: "CERRAR"
                });
                AJAX.abort();
            }
        },
        success: function(data) {
            debugger;
            if (data = 1) {
                Materialize.toast('SE GUARDO CON ÉXITO', 1000);
            } else {
                Materialize.toast('ERROR AL GUARDAR', 1000);
            }
        }
    });
}

$('#descripcion').on("change", function() {
    var descrip = $('#descripcion option:selected').val(),
        id = $("#idRptd").val();
    var ajax = $.ajax({
        url: "../ValidaMPInsumo/" + id + "/" + descrip,
        type: "POST",
        async: true,
        success: function(data) {
            if (data == true) {
                swal({
                    title: " ",
                    text: 'ya existe una registro con la misma desripcion para este insumo',
                    type: 'warning',
                    showCloseButton: true,
                    confirmButtonColor: '#831F82',
                    confirmButtonText: 'ACEPTAR'
                });
                $("#btninsumo").hide();
            } else {
                $("#btninsumo").show();
            }
        }
    })
});

function DetalleInsumo(Descripcion, Dia, Noche, Cantidad_PTA_Agua_Dia, Cantidad_PTA_Agua_Noche) {
    $("#lblDescripcion").text(Descripcion);
    $("#lblDia").text(Dia);
    $("#lblNoche").text(Noche);
    $("#lblptadia").text(Cantidad_PTA_Agua_Dia);
    $("#lblptanoche").text(Cantidad_PTA_Agua_Noche);
    $("#DetallesIns").openModal();

}

function DetallePasta(Tanque, Dia, Noche, Consumo) {
    $("#lblTanque").text(Tanque);
    $("#lbldia").text(Dia);
    $("#lblnoche").text(Noche);
    $("#lblconsumo").text(Consumo);
    $("#DetallesPasta").openModal();

}

function EliminarInsumo(elem) {
    debugger;
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
            url: "../EliminaMPInsumos/" + id,
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

function Eliminarpasta(elem) {
    debugger;
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
            url: "../EliminaPasta/" + id,
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