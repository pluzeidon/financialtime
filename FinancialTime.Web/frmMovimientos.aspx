<%@ Page Title="" Language="C#" MasterPageFile="~/FinancialTime.Master" AutoEventWireup="true" CodeBehind="frmMovimientos.aspx.cs" Inherits="FinancialTime.Web.frmMovimientos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:HiddenField ID="hdndfusu_id" ClientIDMode="Static" runat="server" />
                <asp:HiddenField ID="hdndfmov_id" ClientIDMode="Static" runat="server" />
                <div class="row">
                    <div class="col-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Movimientos registrados</h4>
                                <div class="form-group row input-daterange d-flex">

                                    <div class="col">
                                        <label>Desde</label>
                                        <input type="text" class="form-control" id="dfmov_fechaDesde">
                                    </div>
                                    <div class="col">
                                        <label>Hasta</label>
                                        <input type="text" class="form-control" id="dfmov_fechaHasta">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="cmbBancosFiltro">Banco</label>
                                    <select id="cmbBancosFiltro" name="cmbBancosFiltro" class="form-control">
                                    </select>
                                </div>

                                <div class="text-center">
                                    <button type="button" class="btn btn-success btn-sm" onclick="CargaTabla();" data-dismiss="modal">Refrescar<i class="mdi mdi-refresh ml-1"></i></button>
                                    <button type="button" class="btn btn-primary btn-sm" onclick="LimpiaModal();" data-toggle="modal" data-target="#movimientoModal">Nuevo<i class="mdi mdi-plus-circle ml-1"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 grid-margin">
                        <div class="card">
                            <div class="card-body">
                                <%--                                <h4 class="card-title">Movimientos</h4>--%>
                                <div class="table-responsive">
                                    <table id="tblMovimientos" class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Acción</th>
                                                <th>Categoria</th>
                                                <th>Importe</th>
                                                <th>Descripcion</th>
                                                <th>Fecha</th>
                                                <th>Banco</th>
                                            </tr>
                                        </thead>

                                    </table>

                                </div>
                                <!-- Modal starts -->

                                <div class="modal fade" id="movimientoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Movimientos</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">

                                                <div class="col-12 grid-margin stretch-card">
                                                    <div class="card">
                                                        <div class="card-body">
                                                            <div class="form-group">
                                                                <label for="cmbBancos">Banco</label>
                                                                <select id="cmbBancos" name="cmbBancos" class="form-control">
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="cmbCategorias">Categoría</label>
                                                                <select id="cmbCategorias" name="cmbCategorias" class="form-control">
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="dfmov_descripcion">Descripción</label>
                                                                <textarea class="form-control" rows="4" id="dfmov_descripcion" name="mov_descripcion" required></textarea>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="datepicker-popup">Fecha</label>
                                                                <div id="datepicker-popup" class="input-group date datepicker">
                                                                    <input type="text" id="dfmov_fecha" class="form-control">
                                                                    <span class="input-group-addon input-group-append border-left">
                                                                        <span class="mdi mdi-calendar input-group-text"></span>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Importe</label>
                                                                <input class="form-control" id="dfmov_importe" data-inputmask="'alias': 'currency', 'autoUnmask' : true" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-success" onclick="GuardaMovimiento();">Guardar</button>
                                                <button type="button" class="btn btn-light" data-dismiss="modal">Cancelar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Modal Ends -->
                            </div>
                        </div>
                    </div>
                </div>

            </ContentTemplate>
        </asp:UpdatePanel>
    </form>


    <script
        src="https://code.jquery.com/jquery-3.4.1.js"
        integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
        crossorigin="anonymous">
    </script>
    <script type="text/javascript">

        $(function () {
            $('#tblMovimientos').DataTable({
                "aLengthMenu": [
                    [5, 10, 15, -1],
                    [5, 10, 15, "All"]
                ],
                "iDisplayLength": 10,
                "language": {
                    search: ""
                }, "paging": false,
                'columnDefs': [{
                    "targets": 0,
                    "className": "text-left"
                },
                {
                    "targets": 2,
                    "className": "text-right",
                }]
            });
            $('#tblMovimientos').each(function () {
                var datatable = $(this);
                // SEARCH - Add the placeholder for Search and Turn this into in-line form control
                var search_input = datatable.closest('.dataTables_wrapper').find('div[id$=_filter] input');
                search_input.attr('placeholder', 'Buscar');
                search_input.removeClass('form-control-sm');
                // LENGTH - Inline-Form control
                var length_sel = datatable.closest('.dataTables_wrapper').find('div[id$=_length] select');
                length_sel.removeClass('form-control-sm');
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
            CargaComboBancosFiltro();
            window.setTimeout(CargaTabla, 2000);
            CargaComboBancos();
            CargaComboCategorias();
            SetFechas();
        });

        //
        //  EDICION MOVIMIENTOS
        //  Permite la edision de un movimiento
        //
        function EditarMovimiento(mov_id) {
            LimpiaModal();
            //window.setTimeout(ObtenRegistro(mov_id), 3000);
            //window.setTimeout($("#movimientoModal").modal('show'), 3000);
            ObtenRegistro(mov_id);
            $("#movimientoModal").modal('show');
        }
        //
        //  EDICION MOVIMIENTOS
        //  Llama el WebService que obtiene los datos del movimiento a editar
        //
        function ObtenRegistro(mov_id) {
            var params = new Object();
            var data = new Object();
            params.nusu_id = $("#<%=hdndfusu_id.ClientID%>").val();
            params.nmov_id = mov_id;
            params = JSON.stringify(params);
            const url = 'Servicios/Servicios.asmx/GetMovimiento';
            $.ajax({
                type: 'POST',
                url: url,
                data: params,
                contentType: 'application/json; utf-8',
                dataType: 'json',
                success: function (data) {
                    AsignaDatos(data);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    alert('Uncaught Error: ' + jqXHR.responseText)
                }
            })
        }
        //
        //  EDICION MOVIMIENTOS
        //  Asigna el registro obtenido en el webservice a los objetos dentro del Modal
        //
        function AsignaDatos(result) {
            var items = result.d || result;
            for (var i = 0; i < items.length; i++) {
                var hdndfmov_id = items[i].mov_id;
                var $mov_fecha = $('#dfmov_fecha');
                var ban_id = items[i].ban_id;
                var cat_id = items[i].cat_id;
                $mov_fecha.datepicker();
                $mov_fecha.datepicker('setDate', new Date(parseInt(items[i].mov_fecha.replace(/(^.*\()|([+-].*$)/g, ''))));
                $('#cmbBancos option[value=' + ban_id + ']').attr("selected", "selected");
                $('#cmbCategorias option[value=' + cat_id + ']').attr("selected", "selected");
                $("#dfmov_descripcion").val(items[i].mov_descripcion);
                $("#dfmov_importe").val(items[i].mov_importe * items[i].cat_signo);
                $("#hdndfmov_id").val(hdndfmov_id);
            }
        }

        function CargaTabla() {
            var params = new Object();
            var data = new Object();
            params.nusu_id = $("#<%=hdndfusu_id.ClientID%>").val();
            params.dmov_fechaDesde = $("#dfmov_fechaDesde").val();
            params.dmov_fechaHasta = $("#dfmov_fechaHasta").val();
            params.nban_id = $('#cmbBancosFiltro').find(":selected").val();
            params = JSON.stringify(params);
            const url = 'Servicios/Servicios.asmx/GetMovimientos';
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



        function FillTabla(result) {
            var table = $('#tblMovimientos').dataTable();

            table.dataTable().fnClearTable();

            var items = result.d || result;
            for (var i = 0; i < items.length; i++) {
                var mov_id = items[i].mov_id;
                var value = new Date(parseInt(items[i].mov_fecha.replace(/(^.*\()|([+-].*$)/g, '')));
                var mov_fecha = value.getMonth() + 1 + "/" + value.getDate() + "/" + value.getFullYear();
                var cat_descripcion = items[i].cat_descripcion;
                var ban_nombre = items[i].ban_nombre;
                var mov_descripcion = items[i].mov_descripcion;
                var mov_importe = formatCurrency(items[i].mov_importe);
                var sbutton = "<a class='btn btn-xs btn-primary' onclick='EditarMovimiento(" + mov_id + ");' href='#'><i class='mdi mdi-table-edit ml-1'></i></a>&nbsp;&nbsp;<a class='btn btn-xs btn-danger' onclick='ConfirmarBorrar(" + mov_id + ");' href='#'><i class='mdi mdi-close-circle-outline ml-1'></i></a>"
                table.fnAddData([sbutton, cat_descripcion, mov_importe, mov_descripcion, mov_fecha, ban_nombre]);
            }

        }


        function GuardaMovimiento() {
            var ban_id = $('#cmbBancos').find(":selected").val();
            var cat_id = $('#cmbCategorias').find(":selected").val();
            var mov_importe = $("#dfmov_importe").val();
            if (ban_id == 'Seleccione el Banco') {
                $('#cmbBancos').focus();
                alert('Debe seleccionar un Banco...');
            } else if (cat_id == 'Seleccione la Categoría') {
                $('#cmbCategorias').focus();
                alert('Debe seleccionar una Categoría...');
            } else if (mov_importe == '') {
                $('#dfmov_importe').focus();
                alert('El importe debe ser mayor a 0...');
            } else {
                var params = new Object();
                var data = new Object();
                var url = '';
                if ($("#hdndfmov_id").val() != '') {
                    url = 'Servicios/Servicios.asmx/UpdMovimiento';
                    params.nmov_id = $("#hdndfmov_id").val();
                } else {
                    url = 'Servicios/Servicios.asmx/InsMovimiento';
                }
                $("#hdndfmov_id").val('');
                params.nusu_id = $("#hdndfusu_id").val();
                params.nban_id = ban_id;
                params.ncat_id = cat_id;
                params.smov_descripcion = $("#dfmov_descripcion").val();
                params.dmov_fecha = $("#dfmov_fecha").val();
                params.nmov_importe = $("#dfmov_importe").val();
                params = JSON.stringify(params);
                $.ajax({
                    type: 'POST',
                    url: url,
                    data: params,
                    contentType: 'application/json; utf-8',
                    dataType: 'json',
                    success: function (data) {
                        CargaTabla();
                        LimpiaModal();
                        $("#movimientoModal").modal('hide');
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        alert('Uncaught Error: ' + jqXHR.responseText)
                    }
                })
            }
        }

        function SetFechas() {
            var $mov_fecha = $('#dfmov_fecha');
            $mov_fecha.datepicker();
            $mov_fecha.datepicker('setDate', new Date());

            var $mov_fechaDesde = $('#dfmov_fechaDesde');
            $mov_fechaDesde.datepicker();
            $mov_fechaDesde.datepicker('setDate', new Date());

            var $mov_fechaHasta = $('#dfmov_fechaHasta');
            $mov_fechaHasta.datepicker();
            $mov_fechaHasta.datepicker('setDate', new Date());
        }

        function LimpiaModal() {
            var $mov_fecha = $('#dfmov_fecha');
            $mov_fecha.datepicker();
            $mov_fecha.datepicker('setDate', new Date());
            CargaComboBancos();
            CargaComboCategorias();
            $("#dfmov_descripcion").val('');
            $("#dfmov_importe").val('');
        }

        function CargaComboBancosFiltro() {
            var params = new Object();
            var data = new Object();
            params.nusu_id = $("#<%=hdndfusu_id.ClientID%>").val();
            params = JSON.stringify(params);
            const url = 'Servicios/Servicios.asmx/GetBancos';
            $.ajax({
                type: 'POST',
                url: url,
                data: params,
                contentType: 'application/json; utf-8',
                dataType: 'json',
                success: function (data) {
                    FillComboBancosFiltro(data);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    alert('Uncaught Error: ' + jqXHR.responseText)
                }
            })
        }

        function CargaComboBancos() {
            var params = new Object();
            var data = new Object();
            params.nusu_id = $("#<%=hdndfusu_id.ClientID%>").val();
            params = JSON.stringify(params);
            const url = 'Servicios/Servicios.asmx/GetBancos';
            $.ajax({
                type: 'POST',
                url: url,
                data: params,
                contentType: 'application/json; utf-8',
                dataType: 'json',
                success: function (data) {
                    FillComboBancos(data);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    alert('Uncaught Error: ' + jqXHR.responseText)
                }
            })
        }

        function FillComboBancos(result) {
            let dropdown = $('#cmbBancos');
            dropdown.empty();
            dropdown.append('<option selected="true" disabled>Seleccione el Banco</option>');
            dropdown.prop('selectedIndex', 0);
            var items = result.d || result;
            for (var i = 0; i < items.length; i++) {
                var sban_id = items[i].ban_id;
                var ban_nombre = items[i].ban_nombre;
                dropdown.append($('<option></option>').attr('value', sban_id).text(ban_nombre));
            }
        }

        function FillComboBancosFiltro(result) {
            let dropdown = $('#cmbBancosFiltro');
            dropdown.empty();
            dropdown.append('<option value="0" selected="true">Todos</option>');
            dropdown.prop('selectedIndex', 0);
            var items = result.d || result;
            for (var i = 0; i < items.length; i++) {
                var sban_id = items[i].ban_id;
                var ban_nombre = items[i].ban_nombre;
                dropdown.append($('<option></option>').attr('value', sban_id).text(ban_nombre));
            }
        }

        function CargaComboCategorias() {
            var params = new Object();
            var data = new Object();
            params.nusu_id = $("#<%=hdndfusu_id.ClientID%>").val();
            params.ncat_id = 0;
            params = JSON.stringify(params);
            const url = 'Servicios/Servicios.asmx/GetCategorias';
            $.ajax({
                type: 'POST',
                url: url,
                data: params,
                contentType: 'application/json; utf-8',
                dataType: 'json',
                success: function (data) {
                    FillComboCategorias(data);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    alert('Uncaught Error: ' + jqXHR.responseText)
                }
            })
        }

        function FillComboCategorias(result) {
            let dropdown = $('#cmbCategorias');
            dropdown.empty();
            dropdown.append('<option selected="true" disabled>Seleccione la Categoría</option>');
            dropdown.prop('selectedIndex', 0);
            var items = result.d || result;
            for (var i = 0; i < items.length; i++) {
                var cat_id = items[i].cat_id;
                var cat_descripcion = items[i].cat_descripcion;
                dropdown.append($('<option></option>').attr('value', cat_id).text(cat_descripcion));
            }
        }

        function formatCurrency(total) {
            var neg = false;
            if (total < 0) {
                neg = true;
                total = Math.abs(total);
            }
            return (neg ? "-$" : '$') + parseFloat(total, 10).toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, "$1,").toString();
        }
    </script>

</asp:Content>
