<%@ Page Title="" Language="C#" MasterPageFile="~/FinancialTime.Master" AutoEventWireup="true" CodeBehind="frmMovtos.aspx.cs" Inherits="FinancialTime.Web.frmMovtos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <p class="card-description">Movimientos registrados de</p>
                        <div class="input-group input-daterange d-flex align-items-center">
                            <input type="text" class="form-control" value="2012-04-05">
                            <div class="input-group-addon mx-4">a</div>
                            <input type="text" class="form-control" value="2012-04-19">
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Movimientos</h4>
                        <div class="table-responsive">
                            <asp:GridView ID="gvMovimientos"
                                runat="server"
                                AllowPaging="True"
                                ShowFooter="False" Width="100%"
                                PageSize="10"
                                CssClass="table table-striped" GridLines="None"
                                ShowHeaderWhenEmpty="True"
                                EmptyDataText="Sin Registros"
                                AutoGenerateColumns="False"
                                OnPageIndexChanging="gvMovimientos_PageIndexChanging"
                                OnRowCommand="gvMovimientos_RowCommand"
                                OnSelectedIndexChanging="gvMovimientos_SelectedIndexChanging"
                                OnRowDataBound="gvMovimientos_RowDataBound">
                                <HeaderStyle BackColor="#f8f8f8" Font-Bold="True" ForeColor="#666666" />
                                <EditRowStyle BackColor="#ffffcc" />
                                <RowStyle BackColor="#ffffff" />
                                <EmptyDataRowStyle ForeColor="DarkGray" CssClass="table table-bordered" />
                                <PagerStyle CssClass="pagination-ys" />
                                <PagerSettings Mode="NumericFirstLast"
                                    FirstPageText="<< Primero"
                                    LastPageText="Ultimo >>"
                                    Position="Bottom"
                                    NextPageText="Siguiente ->"
                                    PreviousPageText="<- Anterior"
                                    PageButtonCount="4" />
                                <RowStyle CssClass="    " />
                                <Columns>

                                    <asp:TemplateField HeaderText="Id" Visible="false">
                                        <HeaderTemplate>
                                            <asp:LinkButton ID="lnktar_clave" runat="server" CommandArgument="mov_id"
                                                CommandName="Sort">
                                                <asp:Label ID="Clave" ForeColor="White" runat="server" Text='Clave'></asp:Label>
                                            </asp:LinkButton>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lbltar_clave" runat="server" Text='<%# Bind("mov_id") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="50px" />
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Fecha">
                                        <HeaderTemplate>
                                            <asp:LinkButton ID="lnkmov_fecha" runat="server" CommandArgument="mov_fecha"
                                                CommandName="Sort">
                                                <asp:Label ID="hdrmov_fecha" ForeColor="#777777" runat="server" Text='Fecha' Width="120px" Style="word-wrap: normal; word-break: break-all;"></asp:Label>
                                            </asp:LinkButton>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblmov_fecha" runat="server" Text='<%# Bind("mov_fecha", "{0:dd/MM/yyyy HH:mm:ss}") %>'></asp:Label>
                                        </ItemTemplate>
                                        <%--                                            <ItemStyle Width="120px" />--%>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Categoría">
                                        <HeaderTemplate>
                                            <asp:LinkButton ID="lnkcat_descripcion" runat="server" CommandArgument="cat_descripcion"
                                                CommandName="Sort">
                                                <asp:Label ID="hdrcat_descripcion" ForeColor="#777777" runat="server" Text='Categoría'></asp:Label>
                                            </asp:LinkButton>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblcat_descripcion" runat="server" Text='<%# Bind("cat_descripcion") %>'></asp:Label>
                                        </ItemTemplate>
                                        <%--                                            <ItemStyle Width="300px" Wrap="false" />--%>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Descripción">
                                        <HeaderTemplate>
                                            <asp:LinkButton ID="lnkmov_descripcion" runat="server" CommandArgument="mov_descripcion"
                                                CommandName="Sort">
                                                <asp:Label ID="hdrmov_descripcion" ForeColor="#777777" runat="server" Text='Descripción'></asp:Label>
                                            </asp:LinkButton>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblmov_descripcion" runat="server" Text='<%# Bind("mov_descripcion") %>'></asp:Label>
                                        </ItemTemplate>
                                        <%--                                            <ItemStyle Width="300px" Wrap="false" />--%>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Importe">
                                        <HeaderTemplate>
                                            <asp:LinkButton ID="lnkmov_importe" runat="server" CommandArgument="mov_importe"
                                                CommandName="Sort">
                                                <asp:Label ID="hdrmov_importe" ForeColor="#777777" runat="server" Text='Importe'></asp:Label>
                                            </asp:LinkButton>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblmov_importe" runat="server" Text='<%# Bind("mov_importe","{0:C}") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Right" />
                                    </asp:TemplateField>

                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <asp:HiddenField ID="hdnAltaRegistro" runat="server" />
                        <p runat="server" id="dfRegistros" class="card-description">Registros</p>
                        <asp:LinkButton
                            ID="btnNuevo"
                            runat="server"
                            OnClick="btnNuevo_Click"
                            CssClass="btn btn-primary btn-sm">
                            <i class="mdi mdi-plus" aria-hidden="true"></i>&nbsp;<asp:Label ID="lblAdd" runat="server" Text="Nuevo"></asp:Label>
                        </asp:LinkButton>
                    </div>
                </div>
            </div>

        </ContentTemplate>
    </asp:UpdatePanel>

    <!-- Modal starts -->
    <asp:UpdatePanel ID="upEditarRegistro" runat="server">
        <ContentTemplate>
            <div class="modal fade" id="ModalEditarRegistro" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel-2" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel-2">Movimiento</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-12 grid-margin stretch-card">
                                    <div class="card">
                                        <div class="card-body">

                                            <div class="form-group">
                                                <label for="firstname">Cuenta</label>
                                                <asp:DropDownList ID="cmbBanco" ClientIDMode="Static" runat="server" class="form-control">
                                                </asp:DropDownList>
                                            </div>
                                            <div class="form-group">
                                                <label for="lastname">Categoría</label>
                                                <asp:DropDownList ID="cmbCategoria" ClientIDMode="Static" runat="server" class="form-control">
                                                </asp:DropDownList>
                                            </div>
                                            <div class="form-group">
                                                <label for="username">Descripción</label>
                                                <asp:TextBox ID="dfmov_descripcion" TextMode="MultiLine" ClientIDMode="Static" Rows="4" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label for="password">Fecha</label>
                                                <div id="datepicker-popup" class="input-group date datepicker">
                                                    <input type="text" class="form-control">
                                                    <span class="input-group-addon input-group-append border-left">
                                                        <span class="mdi mdi-calendar input-group-text"></span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="confirm_password">Importe</label>
                                                <input class="form-control" data-inputmask="'alias': 'currency'" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-success">Guardar</button>
                            <button type="button" class="btn btn-light" data-dismiss="modal">Cancelar</button>
                        </div>
                    </div>
                </div>
            </div>

        </ContentTemplate>
    </asp:UpdatePanel>
    <!-- Modal Ends -->

</asp:Content>
