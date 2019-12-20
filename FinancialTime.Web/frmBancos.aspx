<%@ Page Title="" Language="C#" MasterPageFile="~/FinancialTime.Master" AutoEventWireup="true" CodeBehind="frmBancos.aspx.cs" Inherits="FinancialTime.Web.frmBancos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:HiddenField ID="hdndfusu_id" ClientIDMode="Static" runat="server" />
                <asp:HiddenField ID="hdndfban_id" ClientIDMode="Static" runat="server" />
                <div class="row">
                    <div class="col-12 grid-margin stretch-card">
                    </div>
                    <div class="col-12 grid-margin">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title d-flex">Bancos
                                        <small class="ml-auto align-self-end">
                                            <button type="button" class="btn btn-primary btn-sm" onclick="LimpiaModal();" data-toggle="modal" data-target="#movimientoModal">Nuevo<i class="mdi mdi-plus-circle ml-1"></i></button>
                                        </small>
                                </h4>
                                
                                <div class="table-responsive">
                                    <table id="tblBancos" class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Accion</th>
                                                <th>Nombre</th>                                   
                                            </tr>
                                        </thead>

                                    </table>

                                </div>
                                <!-- Modal starts -->
                                <div class="modal fade" id="movimientoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Banco</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">

                                                <div class="col-12 grid-margin stretch-card">
                                                    <div class="card">
                                                        <div class="card-body">
                                                            <div class="form-group">
                                                                <label for="dfban_nombre">Nombre</label>
                                                                <input type="text" class="form-control" value="" id="dfban_nombre" name="ban_nombre" required></input>
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
        });
        //
        //  EDICION MOVIMIENTOS
        //  Permite la confirmacion del borrado del registro
        //
        function ConfirmarBorrar(ban_id) {
            $("#hdndfban_id").val(ban_id);
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
            params.nban_id = $("#hdndfban_id").val();
            $("#hdndfban_id").val('');
            params = JSON.stringify(params);
            const url = 'Servicios/Servicios.asmx/delBanco';
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
                    if (jqXHR.responseText.indexOf("The DELETE statement conflicted with the REFERENCE constraint") >= 0) {
                        alert('El Banco, tiene movimientos asociados, para borrarlo, es encesario que elimine primero sus movimientos...');
                    }
                    else {
                        alert('Uncaught Error: ' + jqXHR.responseText);
                    }
                }
            })

        }
        //
        //  EDICION MOVIMIENTOS
        //  Permite la edision de un movimiento
        //
        function EditarRegistro(ban_id) {
            LimpiaModal();
            ObtenRegistro(ban_id);
            $("#movimientoModal").modal('show');
        }
        //
        //  EDICION MOVIMIENTOS
        //  Llama el WebService que obtiene los datos del movimiento a editar
        //
        function ObtenRegistro(ban_id) {
            var params = new Object();
            var data = new Object();
            params.nusu_id = $("#<%=hdndfusu_id.ClientID%>").val();
            params.nban_id = ban_id;
            params = JSON.stringify(params);
            const url = 'Servicios/Servicios.asmx/GetBanco';
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
                var ban_id = items[i].ban_id;
                var ban_nombre = items[i].ban_nombre;
                $("#dfban_nombre").val(ban_nombre);
                $("#hdndfban_id").val(ban_id);
            }
        }
        //
        //  EDICION MOVIMIENTOS
        //  Verifica que la Banco no tenga movimientos asociados
        //
        function ExisteMovimientosXBanco(ban_id) {
            var params = new Object();
            var data = new Object();
            params.nusu_id = $("#<%=hdndfusu_id.ClientID%>").val();
            params.nban_id = ban_id;
            params = JSON.stringify(params);
            const url = 'Servicios/Servicios.asmx/GetMovimientosXBanco';
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
            params = JSON.stringify(params);
            const url = 'Servicios/Servicios.asmx/GetBancos';
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
            var table = $('#tblBancos').dataTable();
            table.dataTable().fnClearTable();
            var items = result.d || result;
            for (var i = 0; i < items.length; i++) {
                var ban_id = items[i].ban_id;
                var ban_nombre = items[i].ban_nombre;
                var sbutton = "<a class='btn btn-xs btn-primary' onclick='EditarRegistro(" + ban_id + ");' href='#'><i class='mdi mdi-table-edit ml-1'></i></a>&nbsp;&nbsp;<a class='btn btn-xs btn-danger' onclick='ConfirmarBorrar(" + ban_id + ");' href='#'><i class='mdi mdi-close-circle-outline ml-1'></i></a>"
                table.fnAddData([sbutton, ban_nombre]);
            }
        }


        function GuardaRegistro() {
            if ('#dfban_nombre' == '') {
                $('#dfban_nombre').focus();
                alert('El Nombre es requerida...');
            } else {
                var params = new Object();
                var data = new Object();
                var url = '';
                if ($("#hdndfban_id").val() != '') {
                    url = 'Servicios/Servicios.asmx/UpdBanco';
                    params.nban_id = $("#hdndfban_id").val();
                } else {
                    url = 'Servicios/Servicios.asmx/InsBanco';
                    params.nban_id = '0';
                }
                params.nusu_id = $("#hdndfusu_id").val();
                params.sban_nombre = $("#dfban_nombre").val();

                $("#hdndfban_id").val('');
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
            $("#dfban_nombre").val('');
        }

    </script>
</asp:Content>

