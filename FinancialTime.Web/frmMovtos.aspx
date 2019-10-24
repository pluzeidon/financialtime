<%@ Page Title="" Language="C#" MasterPageFile="~/FinancialTime.Master" AutoEventWireup="true" CodeBehind="frmMovtos.aspx.cs" Inherits="FinancialTime.Web.frmMovtos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Movimientos</h4>
                    <div class="row">
                        <div class="col-12">
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
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
