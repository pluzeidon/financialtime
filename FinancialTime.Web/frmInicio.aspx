<%@ Page Title="" Language="C#" MasterPageFile="~/FinancialTime.Master" AutoEventWireup="true" CodeBehind="frmInicio.aspx.cs" Inherits="FinancialTime.Web.frmInicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <input id="hdndfusu_id" name="hdndfusu_id" type="hidden" value="">
    <div class="row">
        <div class="col-md-12 grid-margin">
            <div class="card bg-white">
                <div class="card-body d-flex align-items-center justify-content-between">
                    <h4 class="mt-1 mb-1">Hola, Carlos!</h4>
                    <%--<button class="btn btn-info d-none d-md-block">Registrar Movimiento</button>--%>
                </div>
            </div>
        </div>
    </div>
    <div class="row saldos">
        <%--<div class="col-md-3 grid-margin stretch-card">
            <div class="card border-0 border-radius-2 bg-success">
                <div class="card-body">
                    <div class="d-flex flex-md-column flex-xl-row flex-wrap  align-items-center justify-content-between">
                        <div class="icon-rounded-inverse-success icon-rounded-lg">
                            <i class="mdi mdi-bank"></i>
                        </div>
                        <div class="text-white">
                            <p class="font-weight-medium mt-md-2 mt-xl-0 text-md-center text-xl-left">Banamex</p>
                            <div class="d-flex flex-md-column flex-xl-row flex-wrap align-items-baseline align-items-md-center align-items-xl-baseline">
                                <h3 class="mb-0 mb-md-1 mb-lg-0 mr-1">$508</h3>
                                <small class="mb-0">Saldo</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 grid-margin stretch-card">
            <div class="card border-0 border-radius-2 bg-info">
                <div class="card-body">
                    <div class="d-flex flex-md-column flex-xl-row flex-wrap  align-items-center justify-content-between">
                        <div class="icon-rounded-inverse-info icon-rounded-lg">
                            <i class="mdi mdi-bank"></i>
                        </div>
                        <div class="text-white">
                            <p class="font-weight-medium mt-md-2 mt-xl-0 text-md-center text-xl-left">Bancomer</p>
                            <div class="d-flex flex-md-column flex-xl-row flex-wrap align-items-baseline align-items-md-center align-items-xl-baseline">
                                <h3 class="mb-0 mb-md-1 mb-lg-0 mr-1">$387</h3>
                                <small class="mb-0">Saldo</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 grid-margin stretch-card">
            <div class="card border-0 border-radius-2 bg-danger">
                <div class="card-body">
                    <div class="d-flex flex-md-column flex-xl-row flex-wrap  align-items-center justify-content-between">
                        <div class="icon-rounded-inverse-danger icon-rounded-lg">
                            <i class="mdi mdi-bank"></i>
                        </div>
                        <div class="text-white">
                            <p class="font-weight-medium mt-md-2 mt-xl-0 text-md-center text-xl-left">HSBC</p>
                            <div class="d-flex flex-md-column flex-xl-row flex-wrap align-items-baseline align-items-md-center align-items-xl-baseline">
                                <h3 class="mb-0 mb-md-1 mb-lg-0 mr-1">$161</h3>
                                <small class="mb-0">Saldo</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 grid-margin stretch-card">
            <div class="card border-0 border-radius-2 bg-warning">
                <div class="card-body">
                    <div class="d-flex flex-md-column flex-xl-row flex-wrap  align-items-center justify-content-between">
                        <div class="icon-rounded-inverse-warning icon-rounded-lg">
                            <i class="mdi mdi-currency-usd"></i>
                        </div>
                        <div class="text-white">
                            <p class="font-weight-medium mt-md-2 mt-xl-0 text-md-center text-xl-left">Efectivo</p>
                            <div class="d-flex flex-md-column flex-xl-row flex-wrap align-items-baseline align-items-md-center align-items-xl-baseline">
                                <h3 class="mb-0 mb-md-1 mb-lg-0 mr-1">$231</h3>
                                <small class="mb-0">Saldo</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 grid-margin stretch-card">
            <div class="card border-0 border-radius-2 bg-warning">
                <div class="card-body">
                    <div class="d-flex flex-md-column flex-xl-row flex-wrap  align-items-center justify-content-between">
                        <div class="icon-rounded-inverse-warning icon-rounded-lg">
                            <i class="mdi mdi-currency-usd"></i>
                        </div>
                        <div class="text-white">
                            <p class="font-weight-medium mt-md-2 mt-xl-0 text-md-center text-xl-left">Efectivo</p>
                            <div class="d-flex flex-md-column flex-xl-row flex-wrap align-items-baseline align-items-md-center align-items-xl-baseline">
                                <h3 class="mb-0 mb-md-1 mb-lg-0 mr-1">$231</h3>
                                <small class="mb-0">Saldo</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
    </div>
    <div class="row">
        <div class="col-md-12 grid-margin">
            <div class="card">
                <div class="card-body">
                    <p class="card-title">Ultimos Movimientos</p>
                    <div class="row">
                        <div class="col-md-12">
                            <p class="text-muted mb-3">Estos son los ultimos 10 movimientos registrados</p>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table id="tblUltimosMovimientos" class="table table-striped">
                            <thead>
                                <tr class="border-top-0">
                                    <th>Categoria</th>
                                    <th>Importe</th>
                                    <th>Descripcion</th>
                                    <th>Fecha</th>
                                    <th>Banco</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xl-12 grid-margin grid-margin-xl-0 stretch-card">
            <div class="card">
                <div class="card-body pb-0">
                    <p class="card-title mb-xl-0">Distribución de Gastos</p>
                </div>
                <canvas id="distribution-chart"></canvas>
                <div class="card-body">
                    <div id="distribution-legend" class="distribution-chart-legend pt-4 pb-3"></div>
                    <button class="btn btn-outline-light text-dark d-block mx-auto mt-2">Ver mas</button>
                </div>
            </div>
        </div>
<%--        <div class="col-xl-9 stretch-card">
            <div class="card">
                <div class="row">
                    <div class="col-md-7 col-lg-6 col-xl-7">
                        <div class="card-body h-100 d-flex flex-column">
                            <p class="card-title">Reporte de Movimientos</p>
                            <p class="text-muted mb-4">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia id beatae sint dolorum quod ducimus quisquam ut minima atque quaerat.</p>
                            <canvas id="sale-report-chart"></canvas>
                        </div>
                    </div>
                    <div class="col-md-5 col-lg-6 col-xl-5">
                        <div class="card-body">
                            <p class="card-title">Sales report overview</p>
                            <p class="pb-2 text-muted">Sale information on advertising, exhibitions, market research, online media, customer desires, PR and much more</p>
                            <div class="d-flex flex-wrap justify-content-start mt-3 mr-4">
                                <div class="mr-3">
                                    <p class="mb-0">Downloads</p>
                                    <h4>13,956</h4>
                                </div>
                                <div class="mr-3">
                                    <p class="mb-0">Purchases</p>
                                    <h4>55,123</h4>
                                </div>
                                <div class="mr-3">
                                    <p class="mb-0">Users</p>
                                    <h4>29829</h4>
                                </div>
                            </div>
                            <div class="d-flex mb-3">
                                <i class="mdi mdi-arrow-expand-up mb-0 text-success mr-2 mt-1"></i>
                                <p class="mb-0 text-dark">15% more than last week</p>
                            </div>
                            <div class="d-flex flex-wrap mb-5">
                                <button class="btn btn-info mt-3 mr-2">Update</button>
                                <button class="btn btn-outline-light mt-3 text-dark">More</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
    </div>
    <script
        src="https://code.jquery.com/jquery-3.4.1.js"
        integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
        crossorigin="anonymous">
    </script>
    <script type="text/javascript">

        $(function () {
            $('#tblUltimosMovimientos').DataTable({
                searching: false, paging: false, info: false, "paging": false,
                'columnDefs': [{
                    "targets": 0,
                    "className": "text-left"
                },
                {
                    "targets": 1,
                    "className": "text-right",
                }]
            });
            
        });


        //  GENERAL
        //  Funcion que se dispara cuando se cargo completamente la pagina
        //  Pone las fechas de la pagina al dia actual
        //  Formatea la columna de importe en la DataTable
        //  Carga los movimientos al DataTable
        //  Carga el combo de Bancos
        //  Carga el combo de Categorías
        //
        $(document).ready(function () {
            $("#hdndfusu_id").val('<%=Session["usu_id"] %>');
            CargaTabla();
            fnCargaTabla();
        });
        //
        //  SALDOS
        //  Ejecuta el Web Services que obtiene los saldos por banco
        //
        function CargaTabla() {
            var params = new Object();
            var data = new Object();
            params.nusu_id = $("#hdndfusu_id").val();
            params = JSON.stringify(params);
            const url = 'Servicios/Servicios.asmx/GetBancosSaldo';
            $.ajax({
                type: 'POST',
                url: url,
                data: params,
                contentType: 'application/json; utf-8',
                dataType: 'json',
                success: function (data) {
                    FillTabla(data);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    alert('Uncaught Error: ' + jqXHR.responseText)
                }
            })
        }
        //
        //  EDICION MOVIMIENTOS
        //  Asigna los valores a las columnas del Grid
        //
        function FillTabla(result) {
            var colors = ["bg-success", "bg-info", "bg-danger", "bg-warning", "bg-dark","bg-success", "bg-info", "bg-danger", "bg-warning", "bg-dark"];
            var colorsIcons = ["icon-rounded-inverse-success", "icon-rounded-inverse-info", "icon-rounded-inverse-danger", "icon-rounded-inverse-warning", "icon-rounded-inverse-dark","icon-rounded-inverse-success", "icon-rounded-inverse-info", "icon-rounded-inverse-danger", "icon-rounded-inverse-warning", "icon-rounded-inverse-dark"];
            var items = result.d || result;
            for (var i = 0; i < items.length; i++) {
                var ban_nombre = items[i].ban_nombre;
                var ban_saldo = items[i].ban_saldo;
                var icono = '';
                if (i == 0) icono = 'mdi-currency-usd'
                else icono = 'mdi-bank';
                var divSaldo = '<div class="col-md-3 grid-margin stretch-card">';
                divSaldo += '<div class="card border-0 border-radius-2 ' + colors[i] + '">';
                divSaldo += '    <div class="card-body">';
                divSaldo += '        <div class="d-flex flex-md-column flex-xl-row flex-wrap  align-items-center justify-content-between">';
                divSaldo += '            <div class="' + colorsIcons[i] + ' icon-rounded-lg">';
                divSaldo += '                <i class="mdi ' + icono + '"></i>';
                divSaldo += '            </div>';
                divSaldo += '            <div class="text-white">';
                divSaldo += '                <p class="font-weight-medium mt-md-2 mt-xl-0 text-md-center text-xl-left">' + ban_nombre + '</p>';
                divSaldo += '                <div class="d-flex flex-md-column flex-xl-row flex-wrap align-items-baseline align-items-md-center align-items-xl-baseline">';
                divSaldo += '                    <h3 class="mb-0 mb-md-1 mb-lg-0 mr-1">$' + formatMoney(ban_saldo) + '</h3>';
                divSaldo += '                    <small class="mb-0">Saldo</small>';
                divSaldo += '                </div>';
                divSaldo += '            </div>';
                divSaldo += '        </div>';
                divSaldo += '    </div>';
                divSaldo += '</div>';
                divSaldo += '</div>';
                $(".saldos").append(divSaldo);
            }
        }

        function formatMoney(number, decPlaces, decSep, thouSep) {
            decPlaces = isNaN(decPlaces = Math.abs(decPlaces)) ? 2 : decPlaces,
                decSep = typeof decSep === "undefined" ? "." : decSep;
            thouSep = typeof thouSep === "undefined" ? "," : thouSep;
            var sign = number < 0 ? "-" : "";
            var i = String(parseInt(number = Math.abs(Number(number) || 0).toFixed(decPlaces)));
            var j = (j = i.length) > 3 ? j % 3 : 0;

            return sign +
                (j ? i.substr(0, j) + thouSep : "") +
                i.substr(j).replace(/(\decSep{3})(?=\decSep)/g, "$1" + thouSep) +
                (decPlaces ? decSep + Math.abs(number - i).toFixed(decPlaces).slice(2) : "");
        }

        function fnCargaTabla() {
            var params = new Object();
            var data = new Object();
            params.nusu_id = $("#hdndfusu_id").val();
            params = JSON.stringify(params);
            const url = 'Servicios/Servicios.asmx/GetUltimosMovimientos';
            $.ajax({
                type: 'POST',
                url: url,
                data: params,
                contentType: 'application/json; utf-8',
                dataType: 'json',
                success: function (data) {
                    fnFillTabla(data);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    alert('Uncaught Error: ' + jqXHR.responseText)
                }
            })
        }

        function fnFillTabla(result) {
            var table = $('#tblUltimosMovimientos').dataTable();
            table.dataTable().fnClearTable();

            var items = result.d || result;
            for (var i = 0; i < items.length; i++) {
                var mov_id = items[i].mov_id;
                var value = new Date(parseInt(items[i].mov_fecha.replace(/(^.*\()|([+-].*$)/g, '')));
                var mov_fecha = value.getMonth() + 1 + "/" + value.getDate() + "/" + value.getFullYear();
                var cat_descripcion = items[i].cat_descripcion;
                var ban_nombre = items[i].ban_nombre;
                var mov_descripcion = items[i].mov_descripcion;
                var mov_importe = formatMoney(items[i].mov_importe);
                table.fnAddData([cat_descripcion, mov_importe, mov_descripcion, mov_fecha, ban_nombre]);
            }

        }

    </script>

</asp:Content>
