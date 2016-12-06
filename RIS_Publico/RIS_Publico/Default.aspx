<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
    Inherits="RIS_Publico.Default" MasterPageFile="~/Site.Master" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <ol class="round">
        <li>
            <h5>Buscador de estudios por Entidades, Investigadores y Lugares de Realización</h5>
            <p>
                <table style="width: 100%;">
                    <tr>
                        <td>
                            <asp:TextBox ID="txtCriterioBusqueda" runat="server"></asp:TextBox>
                            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </p>
            No se consideran mayúsculas y/o minúsculas
        </li>

        <li>

            <asp:GridView ID="gvListaEstudiosEncontrados" runat="server" AutoGenerateColumns="False"
                CellPadding="5" DataKeyNames="idEstudio" EmptyDataText="No hay Estudios que correspondan con los criterios de búsqueda utilizados. Verifique los datos ingresados e intente nuevamente."
                EnableTheming="True" Font-Bold="False" Font-Names="Arial" Font-Size="10pt"
                ForeColor="#333333" Width="100%"
                OnPageIndexChanging="gvListaEstudiosEncontrados_PageIndexChanging"
                OnRowCommand="gvListaEstudiosEncontrados_RowCommand"
                OnRowDataBound="gvListaEstudiosEncontrados_RowDataBound">
                <RowStyle BackColor="#F7F6F3" Font-Names="Arial" Font-Size="10pt"
                    ForeColor="#333333" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ID="detalleEstudio" runat="server" CommandName="detalleEstudio"
                                ImageUrl="~/Images/detalleEstudio.png" Height="20px" Width="20px" />
                        </ItemTemplate>
                        <ItemStyle Height="20px" HorizontalAlign="Center" Width="20px" />
                    </asp:TemplateField>

                    <asp:BoundField DataField="idEstudio" HeaderText="idEstudio" Visible="False" />                    
                    <asp:BoundField DataField="investigador" HeaderText="Investigador" />
                    <asp:BoundField DataField="tituloInvestigacion" HeaderText="Título" />
                    <asp:BoundField DataField="nombreInstitucionAfiliacion" HeaderText="Institución de referencia" />
                    <asp:BoundField DataField="tipoEstudio" HeaderText="Categorización" />
                </Columns>
                <FooterStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#990000" ForeColor="White" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#333333" Font-Bold="False" Font-Italic="False"
                    Font-Names="Arial" Font-Size="10pt" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>

        </li>
    </ol>
</asp:Content>
