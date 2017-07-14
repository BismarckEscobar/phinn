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
    if (pathname.match(/reportesDiarios.*/)) {
        crearTabla();
    };
    if (pathname.match(/OrdenProduccion.*/)) {
        if($('#ordActiva').is(':checked') ) {
            $( ".OrdenAnulada" ).removeClass( "OrdenAnulada" ).addClass( "nomostrarOrdenAnul" );
            $( ".OrdenCerrada" ).removeClass( "OrdenCerrada" ).addClass( "nomostrarOrdenCerr" );
            $( ".OrdenInactiva" ).removeClass( "OrdenInactiva" ).addClass( "nomostrarOrdenInac" );
        }
    };

    $("#crearU").click(function() { $("#AUsuario").openModal(); });
    $("#crearT").click(function() { $("#ATrabajador").openModal(); });

    $("#agregaElect").click(function() { $("#agregaElectricidad").openModal(); });
    $("#agregarMP").click(function() { $("#nuevaMatPrim").openModal(); });
    $("#modinsumo").click(function() { $("#modalInsumo").openModal(); });
    $("#AddIns").click(function() { $("#Insumosmodal").openModal() });
    $("#AddMaq").click(function() { $("#Maquinasmodal").openModal(); });
    $("#btnAgregarf").click(function() { $("#modal11").openModal(); });
    $("#btnAgregaHM").click(function() { $("#modal12").openModal(); });
    $("#actualizarM").click(function() { $("#Actualizar").openModal(); });
    $("#AddPlan").click(function() { $("#PlanModal").openModal(); });
    $("#AddTan").click(function() { $("#Tanquesmodal").openModal(); });
    $("#btnAddDetPlan").click(function() { $("#DetPlanModal").openModal(); });
    $("#abrirMdlNOrd").click(function() { $("#ModalNuevaOrdProduccion").openModal(); });

    ///Configurar chosen////
    var config = {
        '.chosen-select': {}
    }
    for (var selector in config) {
        $(selector).chosen(config[selector]);
    }

    $('#timepicker , #timepicker1, #timepickerII, #timepickerFF, #horaFinalCons, #horaInicioCons, #timeHM1, #timeHM2, #timeHM12, #timeHM22').pickatime({
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
    $("#merma").numeric();
});

$('#cerrarHM1').click(function() {
    $("#modal13").closeModal();
    location.reload();
});

$('#tlbListaRep2').on('click', 'tbody .detalleNumOrd', function() {
    var table = $('#tlbListaRep2').DataTable();
    var tr = $(this).closest('tr');
    $(this).addClass("detalleNumOrdOrange");
    var row = table.row(tr);
    var data = table.row($(this).parents('tr')).data();

    if (row.child.isShown()) {
        row.child.hide();
        tr.removeClass('shown');
        $('#detail1' + data[1]).hide();
        $('#detail2' + data[1]).show();
        $(this).removeClass("detalleNumOrdOrange");
    } else {
        $('#loader' + data[1]).show();
        $('#detail1' + data[1]).show();
        $('#detail2' + data[1]).hide();

        format(row.child, data[1], data[1]);
        tr.addClass('shown');
    }
});


function format(callback, noOrden, div) {
    var ia = 0;
    $.ajax({
        url: 'detalleOrdenProduccion/' + noOrden,
        async: true,
        success: function(response) {
            var thead = '',
                tbody = '';
            var cont = 0;
            if (response != 'false') {
                var obj = $.parseJSON(response);
                thead += '<tr class="tblcabecera"><th class="negra center">N° ORDEN</th>';
                thead += '<th class="negra center">TURNO</th>';
                thead += '<th class="negra center">FECHA INICIO</th>';
                thead += '<th class="negra center">FECHA FIN</th>';
                thead += '<th class="negra center">COORDINADOR</th>';
                thead += '<th class="negra center">TIPO PAPEL</th>';
                thead += '<th class="negra center">ESTADO</th>';
                thead += '<th class="negra center">OPCIONES</th>';
                thead += '<th class="negra center">CONTROL</th></tr>';

                $.each(JSON.parse(response), function(i, item) {
                    if (item["Estado"] == 1) {
                        var html = "<a onclick='cambiaEstadoRptD(" + item["IdReporteDiario"] + ", 0)' class='btn-flat tooltipped noHover'><i style='color:#228b22; font-size:30px;' class='material-icons'>lock_open</i></a>";
                    } else if (item["Estado"] == 0) {
                        var html = "<a onclick='cambiaEstadoRptD(" + item["IdReporteDiario"] + ", 1)' class='btn-flat tooltipped noHover'><i style='color:#696969; font-size:30px;' class='material-icons'>lock</i></a>";
                    };
                    var link = "<a onclick='elimarRptDiario(" + item["IdReporteDiario"] + ")' class='btn-flat tooltipped noHover'><i style='color:#696969; font-size:30px;' class='material-icons'>delete</i></a>";
                    tbody += '<tr >' +

                        '<td><a href="../index.php/reportesDiarios/' + item["IdReporteDiario"] + '" target="_blank" class="noHover"</a>' + item["Consecutivo"] + '</td>' +
                        '<td>' + item["Turno"] + '</td>' +
                        '<td>' + item["FechaInicio"] + '</td>' +
                        '<td>' + item["FechaFinal"] + '</td>' +
                        '<td>' + item["Nombre"] + '</td>' +
                        '<td>' + item["TipoPapel"] + '</td>' +
                        '<td>' + html + '</td>' +
                        '<td>' + link + '</td>';
                    if (cont < 1) {
                        tbody += '<td rowspan="2" style="background-color:#ffe9fe; border: 1px solid #cfd8dc;"><a href="../index.php/controlPiso/' + item["Consecutivo"] + '">CONTROL DE PISO</a></td></tr>';
                        cont++;
                    } else {
                        cont = 0;
                    };

                });

                callback($('<table id="tlbListaRep3" class="striped">' + thead + tbody + '</table>')).show();
                $('#loader' + div).hide();
                $('#detail1' + div).show();
            } else {
                thead += '<tr class="tblcabecera"><th class="negra center">N° ORDEN</th>';
                thead += '<th class="negra center">TURNO</th>';
                thead += '<th class="negra center">FECHA INICIO</th>';
                thead += '<th class="negra center">FECHA FIN</th>';
                thead += '<th class="negra center">COORDINADOR</th>';
                thead += '<th class="negra center">TIPO PAPEL</th></tr>';
                tbody += '<tr >' +
                    '<td></td>' +
                    '<td></td>' +
                    '<td></td>' +
                    '<td>No hay datos disponibles</td>' +
                    '<td></td>' +
                    '<td></td>' +
                    '</tr>';
                callback($('<table id="tlbListaRep3" class="striped">' + thead + tbody + '</table>')).show();
                $('#loader' + div).hide();
                $('#detail' + div).show();
            }
        }
    });
}

/******************AGREGAR NUEVAS ROWS DATATABLE INSUMOS******************/
function agregarFilas() {
    var t = $('#tblControlPiso').DataTable();
    var idInsumo = $('#descripcionInsumo').val();
    var consecutivoHTML= $("#consecutivo").text();
    $.ajax({

        url: "../insumoDetalle/"+idInsumo+"/"+consecutivoHTML,
        type: "POST",
        async: true,
        success: function(data) {
            console.log(data);
            if (data!=1) {
                $.each(JSON.parse(data), function(i, item){
                    t.row.add( [
                        item['IdInsumo'],
                        item['Tipo'],
                        '<input class="inputControlPiso numeric" id="codigo' + item['IdInsumo'] + '" value=""/>',
                        item['Descripcion'],
                        item['UnidadMedida'],
                        '<input class="inputControlPiso numeric" id="requisado' + item['IdInsumo'] + '" onchange="calcularConsumo(' + item['IdInsumo'] + ')" value=""/>',
                        '<input class="inputControlPiso numeric" id="piso' + item['IdInsumo'] + '" onchange="calcularConsumo(' + item['IdInsumo'] + ')" value=""/>',
                        '<input class="inputControlPiso numeric" id="consumo' + item['IdInsumo'] + '" value=""/>'
                    ]).draw(false);
                });
            } else {

                mensajeAlerta('Ya existe un registro de este insumo');
            };

        }
    });
}

/****************CALCULANDO CONSUMO CONTROL DE PISO**************************/
function calcularConsumo(item) {
    var cant1 = $("#requisado" + item).val();
    var cant2 = $("#piso" + item).val();
    if (cant2 > cant1) {
        mensajeAlerta('El requisado no puede ser menor a cantidad piso');
    } else {
        var consumo = cant1 - cant2;
        $('#consumo' + item).val(consumo);
    };
}
/**********GUARDA DETALLE CONTROL PISO*****************************/
function guardarControlPiso() {
    var maquinas;
    var fecha = new Date();
    var encabezadoCPiso = new Array();
    var pos1 = 0;
    if ($('#maquina1').is(':checked') && $('#maquina2').is(':checked')) {
        maquinas = '1-2';
    } else if ($('#maquina1').is(':checked') && (!$('#maquina2').is(':checked'))) {
        maquinas = '1-0';
    } else if ($('#maquina2').is(':checked') && (!$('#maquina1').is(':checked'))) {
        maquinas = '0-2';
    } else if (!$('#maquina2').is(':checked') && (!$('#maquina1').is(':checked'))) {
        maquinas = '0-0';
    };
    var fechaCreacion = moment(new Date()).format('YYYY/MM/DD');

    var noOrden= $('#ordTrabajo').text();
    var consecutivoHTML= $("#consecutivo").text();
    var fechaInicio= $('#fechaInicio').text();
    var fechaFin= $('#fechaFin').text();
    var fechaCreacion= fechaCreacion;
    var producto= $('#tipoPapel').text();
    var grupo= $('#grupo').val();
    if (grupo=="") {
        grupo="indefinido,indefinido";
    }
    var grupo2 = grupo.replace(",", "-");
    var maquina= maquinas;
    var horaInicio= $('#horaInicio').text();
    var horaFinal= $('#horaFin').text();

    encabezadoCPiso[pos1] = noOrden+","+consecutivoHTML+","+fechaInicio+","+fechaFin+","+fechaCreacion+","+producto+","+grupo2+","+maquina+","+horaInicio+","+horaFinal;


    var table = $('#tblControlPiso').DataTable();
    var array = new Array();
    var pos = 0;
    var detalleCPiso = new Array();
    table.rows().eq(0).each(function(index) {
        var row = table.row(index);
        var data = row.data();

        var idItem=data[0];
        var codigo = $("#codigo"+idItem).val();
        if (codigo=="") {
            codigo="0";
        }
        var requisado = $("#requisado"+idItem).val();
        var piso = $("#piso"+idItem).val();
        var consumo = $("#consumo"+idItem).val();
        detalleCPiso[pos] = data[0] + "," + data[1] + "," + codigo + "," + data[3] + "," + data[4] + "," + requisado + "," + piso + "," + consumo + "," + consecutivoHTML;

        pos++;
    });

    var form_data = {
        consecutivo: consecutivoHTML,
        encabezado: encabezadoCPiso,
        detalle: detalleCPiso
    };

    $.ajax({
        url: "../guardarControlPisoDetalle",
        type: "POST",
        async: true,
        data: form_data,
        success: function(data) {
            if (data == 1) {
                Materialize.toast('SE GUARDO CON ÉXITO', 1000);
            } else {
                Materialize.toast('ERROR AL GUARDAR', 1000);
            };
        }
    });
}
/******************AGREGA Y ACTUALIZA CONSUMO ELECTRICO************************/
function agregaActualizaConsumoElec() {
    var registroElectrico = new Array();    
    var fechaInicioCons = $('#fechaInicCons').val();    
    var fechaFinCons = $('#fechaFinCons').val();
    var consecutivoHTML= $("#consecutivo").text();
    var horaInicioCons = $('#horaInicioCons').val();
    var horaFinalCons = $('#horaFinalCons').val();
    var consumoInicial = $('#consumoInicial').val();
    var consumoFinal = $('#consumoFinal').val();

    registroElectrico[0] = fechaInicioCons + "," + fechaFinCons  + "," + horaInicioCons + "," + horaFinalCons + "," + consumoInicial + "," + consumoFinal + "," + consecutivoHTML;

    var form_data = {
        consumoElectrico: registroElectrico
    };

    $.ajax({
        url: "../guardarConsumoElect",
        type: "POST",
        async: true,
        data: form_data,
        success: function(data) {
            if (data == 1) {
                Materialize.toast('SE GUARDO CON ÉXITO', 1000);
            } else {
                Materialize.toast('ERROR AL GUARDAR', 1000);
            };
        }
    });


}
/****************FILTRANDO TIPOS DE INSUMOS**********************************/
$("#tipoFibra").on('change', function(event) {
    var tipoInsumo = $('#tipoFibra').val();
    $.ajax({
        url: "../filtroInsumos/" + tipoInsumo,
        type: "POST",
        async: true,
        success: function(data) {
            $('#descripcionInsumo').empty();
            $.each(JSON.parse(data), function(i, item) {
                $("#descripcionInsumo").append('<option value="' + item['IdInsumo'] + '">' + item['Descripcion'] + '</option>');
            });
            $('#descripcionInsumo').trigger("chosen:updated");
        }
    });
});

/****************FILTRANDO ORDENES DE TRABAJO**********************************/
$("#ordProduccion").on('change', function(event) {
    var noOrden = $('#ordProduccion option:selected').text();
    $.ajax({
        url: "filtrandoReportesTrabajo/" + noOrden,
        type: "POST",
        async: true,
        success: function(data) {
            $('#ordTrabajo').empty();
            $.each(JSON.parse(data), function(i, item) {
                $("#ordTrabajo").append('<option value="' + item['IdReporteDiario'] + '">' + item['consecutivo'] + '</option>');
            });
            $('#ordTrabajo').trigger("chosen:updated");
        }
    });
});
/****************GENERAR REPORTES****************************/
function generarReportes() {
    var ordenProd = $('#ordProduccion').val();
    var IdRptDiario = $("#ordTrabajo").val();
    var html = $("#ordTrabajo option:selected").text();
    var html2 = html.split("/");
    var consecutivo = html2[0];
    if (ordenProd==null) {
        mensajeAlerta('ESCOJA UNA ORDEN DE PRODUCCIÓN');
    }else if (!$('#rptDiario').is(':checked') && (!$('#rptControlPiso').is(':checked')) && (!$('#rptConsolidado').is(':checked'))) {
        mensajeAlerta('DEBE SELECCIONAR EL TIPO DE REPORTE QUE DESEA GENERAR');
    }else {
        if ($('#rptDiario').is(':checked') ) {
            window.open('reportesDiarios/' + IdRptDiario + '', '_blank');
        }
        if ($('#rptControlPiso').is(':checked') ) {
            window.open('reporteControlPiso/' + consecutivo + '', '_blank');
        }
        if ($('#rptConsolidado').is(':checked')) {
            window.open('reporteConsolidado/' + consecutivo + '', '_blank');
        }
    }
}

/****************CAMBIA EL ESTADO DEL REPORTE DIARIO*****************************/
function cambiaEstadoRptD(idRptDiario, estado) {
    var miTexto = "";
    if (estado == 1) {
        miTexto = "¿Desea activar esta orden de trabajo?";
    } else if (estado == 0) {
        miTexto = "¿Desea cerrar esta orden de trabajo?"
    }
    swal({
        title: '',
        text: miTexto,
        type: 'warning',
        showCloseButton: true,
        showCancelButton: true,
        confirmButtonColor: '#831F82',
        confirmButtonText: 'ACEPTAR',
        cancelButtonText: 'CANCELAR'
    }).then(function() {
        $.ajax({
            url: "cambiarEstadoRptDiario/" + idRptDiario + '/' + estado,
            type: 'post',
            async: true,
            success: function(data) {
                if (data == 1) {
                    location.reload();
                } else {
                    Materialize.toast('ERROR, NO SE PUDO CAMBIAR EL ESTADO', 7000);
                }
            }
        });
    });
}
/*******************ELIMINA UN REPORTE DIARIO SIN REGISTROS********************/
function elimarRptDiario(idRptDiario) {
    swal({
        title: '',
        text: '¿ELIMINAR ESTE REGISTRO?',
        type: 'warning',
        showCloseButton: true,
        showCancelButton: true,
        confirmButtonColor: '#831F82',
        confirmButtonText: 'ACEPTAR',
        cancelButtonText: 'CANCELAR'
    }).then(function() {
        $.ajax({
            url: "validaRptDiario/" + idRptDiario,
            type: 'post',
            async: true,
            success: function(data) {
                if (data == 'TRUE') {
                    mensajeAlerta('Este registro no se puede eliminar ya que hay uno o mas datos enlazados a el');
                } else if (data == 'FALSE') {
                    location.reload();
                } else if (data == "ERROR") {
                    Materialize.toast("ERROR AL BORRAR", 7000);
                };
            }
        });
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
                        html += '<td><input class="inputCP numeric" id="cargaN' + obj[i]['IdCargaPulper'] + '" onchange="actualizandoCargasPulper(' + obj[i]['IdCargaPulper'] + ', ' + obj[i]['IdReporteDiario'] + ' ,this.value)" value="' + obj[i]['Cantidad'] + '"/></td>';
                    }
                };
                html += '</tr>';
                html += '<tr><td>MEZCLADO (COLOR)</td>';
                for (var i = 0; i < obj.length; i++) {
                    if (obj[i]['IdInsumo'] == 2) {
                        html += '<td><input class="inputCP numeric" id="cargaN' + obj[i]['IdCargaPulper'] + '" onchange="actualizandoCargasPulper(' + obj[i]['IdCargaPulper'] + ', ' + obj[i]['IdReporteDiario'] + ' , this.value)" value="' + obj[i]['Cantidad'] + '"/></td>';
                    }
                };
                html += '<tr><td>MERMA</td>';
                for (var i = 0; i < obj.length; i++) {
                    if (obj[i]['IdInsumo'] == 12) {
                        html += '<td><input class="inputCP numeric" id="cargaN' + obj[i]['IdCargaPulper'] + '" onchange="actualizandoCargasPulper(' + obj[i]['IdCargaPulper'] + ', ' + obj[i]['IdReporteDiario'] + ' ,this.value)" value="' + obj[i]['Cantidad'] + '"/></td>';
                    }
                };
                html += '</tr>';
                html += '</tr>';
                html += '</tbody></table>';
                $("#btnAgregarf").after(html);
                $('#ocultar').hide();
            } else {
                $('#cantTotalCarga').hide();
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
                var html = '<table class="striped"><thead>';
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
        idRptD: $("#idRptD").val(),
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
            if (data = 1) {
                Materialize.toast('SE ACTUALIZO CON ÉXITO', 1000);
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
function actualizandoCargasPulper(idInsumo, IdReporteDiario, cantidad) {

    $.ajax({
        url: "../actualizarCargaPulper/" + idInsumo + '/' + IdReporteDiario + "/" + cantidad,
        type: "POST",
        async: true,
        success: function(data) {
            if (data = true) {
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
/*******NUEVA ORDEN DE PRODUCCION GERENTE************************/
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
                $('#formNuevoReporte').submit();
            };
        }
    };

});
/*******NUEVA ORDEN DE PRODUCCION SUPERVISOR************************/
$('#nuevaOrdProduccion').click(function() {
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
                $('#formNuevaOrden').submit();
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
    $.ajax({
        url: "validarNoOrden",
        type: "POST",
        async: true,
        success: function(data) {
            if (data == true) {
                mensajeAlerta('Ya existe una orden activa, cierre la anterior y agrege una nueva');
            } else {
                $("#nuevoReporte").openModal();
            }
        }
    });
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
                        gotopage("ordProduccion");
                    }
                })
            } else {
                gotopage("ordProduccion");
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
                if (data = 1) {
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
function eliminarTM(idTiempoMuerto, IdReporteDiario) {

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
            url: "../eliminarTM/" + idTiempoMuerto + "/" + IdReporteDiario,
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
                $('#numOrden').val("");
            }
        }
    });
    $("#numOrden").focus();
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
                            title: '',
                            text: 'Esta orden tiene registros, ¿desea anularla de todos modos?',
                            type: 'warning',
                            showCloseButton: true,
                            showCancelButton: true,
                            confirmButtonColor: '#831F82',
                            confirmButtonText: 'ACEPTAR',
                            cancelButtonText: 'CANCELAR'
                        }).then(function() {
                            confirmacionCambioStatus('¿Desea anular esta orden de producción?', 'ANULAR', idOrd, status);
                        });
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
                            function() { location.reload(); }
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
                    function() { location.reload(); }
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
                    function() { location.reload(); }
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

/*$('#cerrarConsumoElec').click(function() {
    $("#agregaElectricidad").closeModal();
});*/
//Cargar pagina
function gotopage(mypage) {
    $(location).attr('href', mypage);
}

function cerrarModales(modal, recargar) {
    if (recargar==true) {
        $("#"+modal).closeModal();
        location.reload();
    }else {
        $("#"+modal).closeModal();
    }
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
});

$('#filtrarRpt').on('keyup', function() {
    var table = $('#tlbListaRep2').DataTable();
    table.search(this.value).draw();
});

$('#BuscarINS').on('keyup', function() {
    var table = $('#tblIns').DataTable();
    table.search(this.value).draw();

    //$("#TblMaster_filter").hide();filtrarTM
});

$('#Buscar').on('keyup', function() {
    var table = $('#tblMaquinas').DataTable();
    table.search(this.value).draw();

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

$('#BuscarTanq').on('keyup', function() {
    var table = $('#tblTanques').DataTable();
    table.search(this.value).draw();
});

$('#BuscarPlan').on('keyup', function() {
    var table = $('#tblPlan').DataTable();
    table.search(this.value).draw();
});

$('#BuscarDetPlan').on('keyup', function() {
    var table = $('#tblDetPlan').DataTable();
    table.search(this.value).draw();
})





$("#tablaProd, #tlbListaRep2, #tlbTiemposMuertos, #tlbListaRep, #tlbTiemposMuertos2, #TblMaster, #tblMaquinas, #tblIns, #tblTanques, #chkInsumo, #chkTanques, #tblDetPlan,#tblPlan").DataTable({

    "ordering": false,
    "info": false,
    "bPaginate": true,
    "bfilter": true,
    "pagingType": "full_numbers",
    "aaSorting": [
        [0, "asc"]
    ],
    "lengthMenu": [
        [20, 10, -1],
        [20, 30, "Todo"]
    ],
    "language": {
        "emptyTable": "No hay datos disponible en la tabla",
        "lengthMenu": "_MENU_",
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

$("#tblControlPiso").DataTable({
    "ordering": false,
    "info": false,
    "bPaginate": false,
    "bfilter": false,
    "pagingType": "full_numbers",
    "aaSorting": [
        [0, "asc"]
    ],
    "lengthMenu": [
        [20, 10, -1],
        [20, 30, "Todo"]
    ],
    "language": {
        "emptyTable": "No hay datos disponible en la tabla",
        "lengthMenu": "_MENU_",
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
        pesobase: $("#pesobase").val(),
        merma: $("#merma").val()
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
                pesobase = $("#pesobase").val(),
                merma = $("#merma").val();
            if (horain == "" | horafin == "" | oper == "" | maq == "" | peso == "" | pesobase == "" | diam == "" | merma == "") {
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

                swal({
                    type: "success",
                    text: "SE GUARDO CORRECTAMENTE",
                    confirmButtonText: "CERRAR"
                }).then(function() {
                    $("#timepickerII").val("")
                    $("#timepickerFF").val("")
                    $("#operador option:selected").val()
                    $("#maquina option:selected").val()
                    $("#peso").val("")
                    $("#Diametro").val("")
                    $("#pesobase").val("")
                });
            } else {
                Materialize.toast('ERROR AL GUARDAR', 1000);
            }
        }
    });
}

function EliminarProd(elem, IDretp) {
    var id = $(elem).attr("id");
    var IDretp = $("#idRptD").val();
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
            url: "../EliminarProduccion/" + id + "/" + IDretp,
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

function Actualizamerm() {
    var IdReporteDiario = $("#idRptD").val(),
        Merma = $("#Merma").val(),
        Maquina = $("#Maquina option:selected").val();
    swal({
        text: '¿Estas seguro que deseas modificar la cantidad de merma para esta maquina?',
        type: 'question',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Actualizar',
        cancelButtonText: 'Cancelar'
    }).then(function() {
        var AJAX = $.ajax({
            url: "../ActualizarMerma/" + IdReporteDiario + '/' + Merma + "/" + Maquina,
            type: "POST",
            async: true,
            beforeSend: function(data) {
                if (Merma == "" | Maquina == "") {
                    swal({
                        text: "Debe seleccionar una maquina e ingresar la cantidad de merma," +
                            " verifica  los datos e inténtalo nuevamente",
                        type: "warning",
                        confirmButtonText: "CERRAR"
                    });
                    AJAX.abort();
                }
            },
            success: function(data) {
                if (data = true) {
                    swal({
                        text: "CANTIDAD MERMA ACTUALIZADA",
                        type: "success",
                        confirmButtonText: "CERRAR"
                    }).then(
                        function() {
                            location.reload();
                        }
                    )
                } else {
                    swal({
                        text: "ERROR AL ACTUALIZAR CANTIDAD MERMA",
                        type: "error",
                        confirmButtonText: "CERRAR"
                    }).then(
                        function() {
                            location.reload();
                        }
                    )
                };
            }
        });
    })

}

/*/////////////////////////////////////////////////////////////////////////////////////////
                               FIN  FUNCIONES SOBRE PRODUCCION
//////////////////////////////////////////////////////////////////////////////////////////*/

/*/////////////////////////////////////////////////////////////////////////////////////////
                                FUNCIONES SOBRE MATERIA PRIMA
//////////////////////////////////////////////////////////////////////////////////////////*/
function Guardarmp() {

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
    var form_data = {
        idRptd: $("#idRptd").val(),
        Dia: $("#Dia").val(),
        Noche: $("#Noche").val(),
        ptadia: $("#ptadia").val(),
        ptanoche: $("#ptanoche").val(),
        descripcion: $("#descripcion option:selected").val()
    };
    var AJAX = $.ajax({
        url: "../GuardarMPInsumos",
        type: "POST",
        async: true,
        data: form_data,
        beforeSend: function(data) {
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

function EliminarInsumo(elem, idrpt) {

    var id = $(elem).attr("id");
    var idrpt = $("#idRptD").val();
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
            url: "../EliminaMPInsumos/" + id + "/" + idrpt,
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

function Eliminarpasta(elem, idrpt) {

    var id = $(elem).attr("id");
    var idrpt = $("#idRptD").val();
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
            url: "../EliminaPasta/" + id + "/" + idrpt,
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
/////////////////FUNCIONES SOBRE MAQUINAS////////////////////////////
function GuardarMaquina() {

    var form_data = {
        maquina: $("#maquina").val(),
        comentario: $("#comentario").val()
    };

    var AJAX = $.ajax({
        url: "Guardarmaquina",
        type: "POST",
        async: true,
        data: form_data,
        beforeSend: function(data) {
            var maq = $("#maquina").val();
            var com = $("#comentario").val();
            if (maq == "" | com == "") {
                swal({
                    text: "Todos los campos son requeridos",
                    type: "info",
                    confirmButtonText: "CERRAR",
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

function EliminaMaquina(elem) {
    var id = $(elem).attr('id');
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
            url: "Eliminarmaquina/" + id,
            async: true,
            success: (function() {
                swal({
                    text: "El registro se ha elimando correctamente",
                    type: "success",
                    confirmButtonText: "CERRAR"
                }).then(
                    function() {
                        location.reload();
                    }
                )
            })
        });
    })

}

function cerrarModalMaq() {
    $("#Maquinasmodal").closeModal();
    location.reload();
}

/////////////////FUNCIONES SOBRE INSUMOS////////////////////////////

function Guardarinsumos() {

    var form_data = {
        Descripcion: $("#Descripcion").val(),
        categoria: $("#categoria").val(),
        unidadmedida: $("#unidadmedida").val(),
        tipo: $("#tipo").val()
    };

    var AJAX = $.ajax({
        url: "GuardaInsumos",
        type: "POST",
        async: true,
        data: form_data,
        beforeSend: function(data) {
            var desc = $("#Descripcion").val();
            var cat = $("#categoria").val();
            var unidad = $("#unidadmedida").val();
            var tipo = $("#tipo").val();
            if (desc == "" | cat == "") {
                swal({
                    text: "Todos los campos son requeridos",
                    type: "info",
                    confirmButtonText: "CERRAR",
                });
                AJAX.abort();
            }
        },
        success: function(data) {

            if (data = 1) {
                Materialize.toast('SE GUARDO CON ÉXITO', 1000);
                $("#Descripcion").val("");
                $("#categoria").val("");
            } else {
                Materialize.toast('ERROR AL GUARDAR', 1000);
            }
        }
    });
}

function cerrarModalIns() {
    $("#Insumosmodal").closeModal();
    location.reload();
}

function EliminaINS(elem) {
    var id = $(elem).attr('id');
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
            url: "EliminaInsumo/" + id,
            async: true,
            success: (function() {
                swal({
                    text: "El registro se ha elimando correctamente",
                    type: "success",
                    confirmButtonText: "CERRAR"
                }).then(
                    function() {
                        location.reload();
                    }
                )
            })
        });
    })

}
/*******************FILTRA POR ESTADOS DE ORDENES DE PRODUCCION*******************************/
    $("#ordActiva").on( 'change', function() {
        if(!$(this).is(':checked') ) {
            $( ".OrdenActiva" ).removeClass( "OrdenActiva" ).addClass( "nomostrarOrdenAct" );
        }else {
            $( ".nomostrarOrdenAct" ).removeClass( "nomostrarOrdenAct" ).addClass( "OrdenActiva" );
        }
    });
    $("#ordCerrada").on( 'change', function() {
        if($(this).is(':checked') ) {
            $( ".nomostrarOrdenCerr" ).removeClass( "nomostrarOrdenCerr" ).addClass( "OrdenCerrada" );
        }else {
            $( ".OrdenCerrada" ).removeClass( "OrdenCerrada" ).addClass( "nomostrarOrdenCerr" );
        }
    });
    $("#ordAnulada").on( 'change', function() {
        if($(this).is(':checked') ) {
            $( ".nomostrarOrdenAnul" ).removeClass( "nomostrarOrdenAnul" ).addClass( "OrdenAnulada" );
        }else {
            $( ".OrdenAnulada" ).removeClass( "OrdenAnulada" ).addClass( "nomostrarOrdenAnul" );
        }
    });
    $("#ordInactiva").on( 'change', function() {
        if($(this).is(':checked') ) {
            $( ".nomostrarOrdenInac" ).removeClass( "nomostrarOrdenInac" ).addClass( "OrdenInactiva" );
        }else {
            $( ".OrdenInactiva" ).removeClass( "OrdenInactiva" ).addClass( "nomostrarOrdenInac" );
        }
    });

/****************************************FUNCIONES SOIBRE PLANES********************************************************/
function guardaplan() {
    var form_data = {
        fecha: $("#fecha").val(),
        comentario: $("#comentario").val()
    };
    $.ajax({
        url: "Guardaplan",
        type: "POST",
        async: true,
        data: form_data,
        beforeSend: function(data) {
            var fecha = $("#fecha").val();
            var comentario = $("#comentario").val();
            if (fecha == "" || comentario == "") {
                swal({
                    text: "Todos los campos son requeridos",
                    type: "warning",
                    confirmButtonText: "CERRAR"
                });
                $.ajax.abort();
            }
        },
        success: function(data) {
            swal({
                text: "Guardado con exito",
                type: "success",
                confirmButtonText: "CERRAR"
            }).then(
                function() {
                    location.reload();
                }
            );
        }
    });
}

function EditarPlan(IdPlan, Fecha, Comentario) {
    $("#IdPlan").val(IdPlan);
    $("#Fecha").val(Fecha);
    $("#Comentario").val(Comentario);
    $("#ModalPlanEdit").openModal();

}

function actualizaPlan() {

    var form_data = {
        IdPlan: $("#IdPlan").val(),
        Fecha: $("#Fecha").val(),
        Comentario: $("#Comentario").val()
    };
    $.ajax({
        url: "ActualizaPlan",
        type: "POST",
        data: form_data,
        async: true,
        success: function(data) {

            if (data == "FALSE") {
                swal({
                    text: "Este plan no se puede modificar ya que hay uno o mas datos enlazados a el",
                    type: "error",
                    confirmButtonText: "CERRAR"
                });
            } else if (data == "TRUE") {
                swal({
                    text: "Se actualizo correctamente",
                    type: "success",
                    confirmButtonText: "CERRAR"
                }).then(function() {
                    location.reload();
                });
            } else if (data = "ERROR") {
                swal({
                    text: "No se pudo actualizar el plan",
                    type: "error",
                    confirmButtonText: "CERRAR"
                });
            }
        }
    });
}

/***************FUNCIONES SOBRE TANQUES****************** */
function guardatanque() {
    var form_data = {
        tanque: $("#tanque").val()
    };
    $.ajax({
        url: "GuardaTanques",
        type: "POST",
        data: form_data,
        async: true,
        beforeSend: function(data) {
            var tanque = $("#tanque").val();
            if (tanque == "") {
                swal({
                    text: "No puede dejar vacio este campo",
                    type: "warning",
                    confirmButtonText: "CERRAR"
                });
                $.ajax.abort();
            }

        },
        success: function(data) {
            swal({
                text: "Guardado con exito",
                type: "success",
                confirmButtonText: "CERRAR"
            }).then(
                function() {
                    location.reload();
                }
            );
        }
    });
}

function DeleteTanq(elem) {
    var id = $(elem).attr('id');
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
            url: "EliminarTanques/" + id,
            type: "POST",
            async: true,
            success: function() {
                swal({
                    text: "El tanque se elimino correctamente",
                    type: "success",
                    confirmButtonText: "CERRAR"
                }).then(function() {
                    location.reload();
                });
            }
        });
    })
}

/***************FIN FUNCIONES SOBRE TANQUES****************** */
function GuardaDetPlan() {
    var table = $('#chkInsumo').DataTable();
    var insumos1 = new Array();
    var insumos2 = new Array();
    var insumos3 = new Array();
    var tanques = new Array();
    var Posi = 0;
    table.rows().eq(0).each(function(index) {
        var id = $("#idplan").val();
        var cat = $("#categorias").val();
        var row = table.row(index);
        var data = row.data();
        var idInsumo = data[0];
        if ($('#chkinsumo' + data[0]).is(':checked')) {
            insumos1[Posi] = id + "," + cat + "," + data[0];
            Posi++;
        }
    });

    var table = $('#chkInsumo2').DataTable();
    var Posi = 0;
    table.rows().eq(0).each(function(index) {
        var id = $("#idplan").val();
        var cat = $("#categorias").val();
        var row = table.row(index);
        var data = row.data();
        var idInsumo = data[0];
        if ($('#chkinsumo' + data[0]).is(':checked')) {
            insumos2[Posi] = id + "," + cat + "," + data[0];
            Posi++;
        }
    });

    var table = $('#chkInsumo3').DataTable();
    var Posi = 0;
    table.rows().eq(0).each(function(index) {
        var id = $("#idplan").val();
        var cat = $("#categorias").val();
        var row = table.row(index);
        var data = row.data();
        var idInsumo = data[0];
        if ($('#chkinsumo' + data[0]).is(':checked')) {
            insumos3[Posi] = id + "," + cat + "," + data[0];
            Posi++;
        }
    });

    var table = $('#chktanques').DataTable();
    var Posi = 0;
    table.rows().eq(0).each(function(index) {
        var id = $("#idplan").val();
        var cat = $("#categorias").val();
        var row = table.row(index);
        var data = row.data();
        var idTanque = data[0];
        if ($('#chk' + data[0]).is(':checked')) {
            tanques[Posi] = id + "," + cat + "," + data[0];
            Posi++;
        }
    });

    var form_data = {
        insumos1: insumos1,
        insumos2: insumos2,
        insumos3: insumos3,
        tanques: tanques
    };
    $.ajax({
        url: "../GuardarDetalles",
        type: "POST",
        async: true,
        data: form_data,
        beforeSend: function(data) {

            var cat = $("#categorias").val();
            if (cat == null) {
                swal({
                    text: "Debe seleccionar una categoria",
                    type: "warning",
                    confirmButtonText: "CERRAR"
                });
                $.ajax.abort();
            }
        },
        success: function(data) {
            if (data = 1) {
                swal({
                    text: "Guardado con exito",
                    type: "success",
                    confirmButtonText: "CERRAR"
                }).then(
                    function() {
                        location.reload();
                    }
                );
                console.log(form_data);
            }
        }
    });
}

function EliminaDetPlan(elem) {
    var id = $(elem).attr('id');
    swal({
        text: '¿ELIMINAR ESTE REGISTRO?',
        type: 'warning',
        showCloseButton: true,
        showCancelButton: true,
        confirmButtonText: 'ELIMINAR',
        cancelButtonColor: "#d32f2f ",
        cancelButtonText: 'CANCELAR'
    }).then(function() {
        $.ajax({
            url: "../EliminaDetalles/" + id,
            type: "POST",
            async: true,
            success: function() {
                swal({
                    text: "El registro se ha eliminado",
                    type: "success",
                    confirmButtonText: "cerrar"
                }).then(function() {
                    location.reload();
                });
            }
        });
    })
}