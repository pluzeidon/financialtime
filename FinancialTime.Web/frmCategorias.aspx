<%@ Page Title="" Language="C#" MasterPageFile="~/FinancialTime.Master" AutoEventWireup="true" CodeBehind="frmCategorias.aspx.cs" Inherits="FinancialTime.Web.frmCategorias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:HiddenField ID="hdndfusu_id" ClientIDMode="Static" runat="server" />
                <asp:HiddenField ID="hdndfcat_id" ClientIDMode="Static" runat="server" />
                <div class="row">
                    <div class="col-12 grid-margin stretch-card">
                    </div>
                    <div class="col-12 grid-margin">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title d-flex">Categorias
                                        <small class="ml-auto align-self-end">
                                            <button type="button" class="btn btn-primary btn-sm" onclick="LimpiaModal();" data-toggle="modal" data-target="#movimientoModal">Nuevo<i class="mdi mdi-plus-circle ml-1"></i></button>
                                        </small>
                                </h4>
                                
                                <div class="table-responsive">
                                    <table id="tblCategorias" class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Descripcion</th>
                                                <th>Tipo</th>
                                                <th>Accion</th>
                                            </tr>
                                        </thead>

                                    </table>

                                </div>
                                <!-- Modal starts -->
                                <div class="modal fade" id="movimientoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Categoria</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">

                                                <div class="col-12 grid-margin stretch-card">
                                                    <div class="card">
                                                        <div class="card-body">
                                                            <div class="form-group">
                                                                <label for="dfcat_descripcion">Descripción</label>
                                                                <input type="text" class="form-control" value="" id="dfcat_descripcion" name="cat_descripcion" required></input>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="cmbcargo_abono">Tipo</label>
                                                                <select id="cmbcargo_abono" name="cmbcargo_abono" class="form-control">
                                                                    <option selected disabled>Seleccione el Tipo</option>
                                                                    <option value='1'>Ingreso</option>
                                                                    <option value='2'>Gasto</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-success" onclick="GuardaRegistro();">Guardar</button>
                                                <button type="button" class="btn btn-light" data-dismiss="modal">Cancelar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Modal Ends -->

                                <!-- Modal starts -->
                                <div class="modal fade" id="ModalConfirmarBorrar" tabindex="-1" role="dialog" aria-labelledby="ModalConfirmarBorrar" aria-hidden="true">
                                    <div class="modal-dialog modal-sm" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="ModalConfirmarBorrar">Confirmación</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <p>¿Esta seguro de borrar el registro?</p>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-success" onclick="BorrarRegistro();">Confirmar</button>
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
        var primise = new Promise(function (resolve, reject) {
            if (ExisteMovimientosXCategoria($("#hdndfcat_id").val())) {
                resolve(true);
            }
            else {
                resolve(false);
            }
        })
        //  GENERAL
        //  Funcion que se dispara cuando se cargo completamente la pagina
        //  Pone las fechas de la pagina al dia actual
        //  Formatea la columna de importe en la DataTable
        //  Carga los movimientos al DataTable
        //  Carga el combo de Bancos
        //  Carga el combo de Categorías
        //
        $(document).ready(function () {
            $("#<%=hdndfusu_id.ClientID%>").val("1");
            CargaTabla();
        });
        //
        //  EDICION MOVIMIENTOS
        //  Permite la confirmacion del borrado del registro
        //
        function ConfirmarBorrar(cat_id) {
            $("#hdndfcat_id").val(cat_id);
            $("#ModalConfirmarBorrar").modal('show');
        }
        //
        //  EDICION MOVIMIENTOS
        //  Ejecuta el WebService que borra el registro
        //
        function BorrarRegistro() {
            $("#ModalConfirmarBorrar").modal('hide');

            

            var params = new Object();
            var data = new Object();
            params.ncat_id = $("#hdndfcat_id").val();
            $("#hdndfcat_id").val('');
            params = JSON.stringify(params);
            const url = 'Servicios/Servicios.asmx/delCategoria';
            $.ajax({
                type: 'POST',
                url: url,
                data: params,
                contentType: 'application/json; utf-8',
                dataType: 'json',
                success: function (data) {
                    CargaTabla();
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    alert('Uncaught Error: ' + jqXHR.responseText)
                }
            })

        }
        //
        //  EDICION MOVIMIENTOS
        //  Permite la edision de un movimiento
        //
        function EditarRegistro(cat_id) {
            LimpiaModal();
            ObtenRegistro(cat_id);
            $("#movimientoModal").modal('show');
        }
        //
        //  EDICION MOVIMIENTOS
        //  Llama el WebService que obtiene los datos del movimiento a editar
        //
        function ObtenRegistro(cat_id) {
            var params = new Object();
            var data = new Object();
            params.nusu_id = $("#<%=hdndfusu_id.ClientID%>").val();
            params.ncat_id = cat_id;
            params = JSON.stringify(params);
            const url = 'Servicios/Servicios.asmx/GetCategorias';
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
                var cat_id = items[i].cat_id;
                var cat_cargo_abono = items[i].cat_cargo_abono;
                $("#dfcat_descripcion").val(items[i].cat_descripcion);
                $('#cmbcargo_abono option[value=' + cat_cargo_abono + ']').attr("selected", "selected");
                $("#hdndfcat_id").val(cat_id);
            }
        }
        //
        //  EDICION MOVIMIENTOS
        //  Verifica que la categoria no tenga movimientos asociados
        //
        function ExisteMovimientosXCategoria(cat_id) {
            var params = new Object();
            var data = new Object();
            params.nusu_id = $("#<%=hdndfusu_id.ClientID%>").val();
            params.ncat_id = cat_id;
            params = JSON.stringify(params);
            const url = 'Servicios/Servicios.asmx/GetMovimientosXCategoria';
            $.ajax({
                type: 'POST',
                url: url,
                data: params,
                contentType: 'application/json; utf-8',
                dataType: 'json',
                success: function (data) {
                    var items = data.d || data;
                    if (items.length > 0) {
                        return true;
                    }
                    else {
                        return false;
                    }
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    alert('Uncaught Error: ' + jqXHR.responseText)
                }
            })
        }
        //
        //  EDICION MOVIMIENTOS
        //  Carga el grid 
        //
        function CargaTabla() {
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
                    FillTabla(data);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    alert('Uncaught Error: ' + jqXHR.responseText)
                }
            })
        }

        function FillTabla(result) {
            var table = $('#tblCategorias').dataTable();

            table.dataTable().fnClearTable();

            var items = result.d || result;
            for (var i = 0; i < items.length; i++) {
                var cat_id = items[i].cat_id;
                var cat_descripcion = items[i].cat_descripcion;
                var cat_cargo_abono = items[i].cat_cargo_abono;
                var scat_cargo_abono = '';
                if (cat_cargo_abono == '1') {
                    scat_cargo_abono = 'Ingreso';
                }
                else {
                    scat_cargo_abono = 'Gasto';
                }
                var sbutton = "<a class='btn btn-xs btn-primary' onclick='EditarRegistro(" + cat_id + ");' href='#'><i class='mdi mdi-table-edit ml-1'></i></a>&nbsp;&nbsp;<a class='btn btn-xs btn-danger' onclick='ConfirmarBorrar(" + cat_id + ");' href='#'><i class='mdi mdi-close-circle-outline ml-1'></i></a>"
                table.fnAddData([cat_descripcion, scat_cargo_abono, sbutton]);
            }

        }


        function GuardaRegistro() {
            var cargo_abono = $('#cmbcargo_abono').find(":selected").val();
            if (cargo_abono == 'Seleccione el Tipo') {
                $('#cmbcargo_abono').focus();
                alert('Debe seleccionar un Tipo...');
            } else if ('#dfcat_descripcion' == '') {
                $('#dfcat_descripcion').focus();
                alert('La descripción es requerida...');
            } else {
                var params = new Object();
                var data = new Object();
                var url = '';
                if ($("#hdndfcat_id").val() != '') {
                    url = 'Servicios/Servicios.asmx/UpdCategoria';
                    params.ncat_id = $("#hdndfcat_id").val();
                } else {
                    url = 'Servicios/Servicios.asmx/InsCategoria';
                    params.ncat_id = '0';
                }
                params.nusu_id = $("#hdndfusu_id").val();
                params.scat_descripcion = $("#dfcat_descripcion").val();
                params.ncargo_abono = cargo_abono;

                $("#hdndfcat_id").val('');
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


        function LimpiaModal() {
            $("#dfcat_descripcion").val('');
            $("#cmbcargo_abono").val($("#cmbcargo_abono option:first").val());
        }

    </script>
</asp:Content>

