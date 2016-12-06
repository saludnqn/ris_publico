<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InformeEstudio.aspx.cs"
    Inherits="RIS_Publico.InformeEstudio" MasterPageFile="~/Site.Master" %>


<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">

</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
    <ol class="round">
        <li>
            <h4>Detalle del estudio</h4>

            <p>                
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>                
            </p>

            <p>                
                <asp:Label ID="Label4" runat="server" Text="Investigadores / as" Font-Bold="True"></asp:Label></br>                
                                <asp:GridView ID="gvListaInvestigadores" runat="server" AutoGenerateColumns="False" 
                                CellPadding="5" DataKeyNames="idInvestigador" EmptyDataText="No hay datos para listar." 
                                EnableTheming="True" Font-Bold="False" Font-Names="Arial" Font-Size="10pt" 
                                ForeColor="#333333" Width="100%" >
                                <RowStyle BackColor="#F7F6F3" Font-Names="Arial" Font-Size="10pt" 
                                    ForeColor="#333333" />
                                <Columns>
                                    <asp:BoundField DataField="idEstudio" HeaderText="idEstudio" Visible="False" />
                                    <asp:BoundField DataField="idEstudioInvestigador" HeaderText="idEstudioInvestigador" Visible="False" />
                                    <asp:BoundField DataField="idInvestigador" HeaderText="idInvestigador" Visible="False" />
                                    <asp:BoundField DataField="apellido" HeaderText="Apellido" />
                                    <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                                    <asp:BoundField DataField="numeroDocumento" HeaderText="Documento" />
                                    <asp:BoundField DataField="numeroMatricula" HeaderText="Matricula" />
                                </Columns>
                                <FooterStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#990000" ForeColor="White" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#333333" Font-Bold="False" Font-Italic="False" 
                                    Font-Names="Arial" Font-Size="10pt" ForeColor="White" />
                                <EditRowStyle BackColor="#999999" />
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            </asp:GridView>                
            </p>

            <p>                
                <asp:Label ID="Label3" runat="server" Text="Datos generales" Font-Bold="True"></asp:Label></br>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></br>                                             
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></br>
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></br>
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></br>
                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></br>
                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></br>
            </p>

            <p>
                <asp:Label ID="Label11" runat="server" Text="Consentimientos" Font-Bold="True"></asp:Label></br>                
                                <asp:GridView ID="gvListaConsentimiento" runat="server" AutoGenerateColumns="False" 
                                CellPadding="5" DataKeyNames="idConcentimiento" EmptyDataText="No hay datos para listar." 
                                EnableTheming="True" Font-Bold="False" Font-Names="Arial" Font-Size="10pt" 
                                ForeColor="#333333" Width="100%">
                                <RowStyle BackColor="#F7F6F3" Font-Names="Arial" Font-Size="10pt" 
                                    ForeColor="#333333" />
                                <Columns>                                    
                                    <asp:BoundField DataField="idConcentimiento" HeaderText="idConcentimiento" Visible="False" />
                                    <asp:BoundField DataField="idEstudio" HeaderText="idEstudio" Visible="False" />
                                    <asp:BoundField DataField="version" HeaderText="Versión" />
                                    <asp:BoundField DataField="fecha" HeaderText="Fecha" />
                                </Columns>
                                <FooterStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#990000" ForeColor="White" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#333333" Font-Bold="False" Font-Italic="False" 
                                    Font-Names="Arial" Font-Size="10pt" ForeColor="White" />
                                <EditRowStyle BackColor="#999999" />
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            </asp:GridView>
            </p>

            <p>
                <asp:Label ID="Label12" runat="server" Text="Enmiendas" Font-Bold="True"></asp:Label></br>                
                                <asp:GridView ID="gvListaEnmiendas" runat="server" AutoGenerateColumns="False" 
                                CellPadding="5" DataKeyNames="idEnmienda" EmptyDataText="No hay datos para listar." 
                                EnableTheming="True" Font-Bold="False" Font-Names="Arial" Font-Size="10pt" 
                                ForeColor="#333333" Width="100%">
                                <RowStyle BackColor="#F7F6F3" Font-Names="Arial" Font-Size="10pt" 
                                    ForeColor="#333333" />
                                <Columns>
                                    <asp:BoundField DataField="idEnmienda" HeaderText="idEnmienda" Visible="False" />
                                    <asp:BoundField DataField="idEstudio" HeaderText="idEstudio" Visible="False" />
                                    <asp:BoundField DataField="modificacion" HeaderText="Modificación" />
                                    <asp:BoundField DataField="dictamen" HeaderText="Dictámen" />
                                    <asp:BoundField DataField="fechaDictamen" HeaderText="Fecha del dictámen" />
                                    <asp:BoundField DataField="observaciones" HeaderText="Observaciones" />
                                </Columns>
                                <FooterStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#990000" ForeColor="White" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#333333" Font-Bold="False" Font-Italic="False" 
                                    Font-Names="Arial" Font-Size="10pt" ForeColor="White" />
                                <EditRowStyle BackColor="#999999" />
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            </asp:GridView>
            </p>

            <p>
                <asp:Label ID="Label13" runat="server" Text="Institución de referencia" Font-Bold="True"></asp:Label></br>
                <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label></br>                                             
                <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label></br>
                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label></br>
                <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label></br>
                <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label></br>
            </p>

            <p>
                <asp:Label ID="Label26" runat="server" Text="Lugares de realización" Font-Bold="True"></asp:Label></br>                
                                <asp:GridView ID="gvListaLugaresDeRealizacion" runat="server" AutoGenerateColumns="False" 
                                CellPadding="5" DataKeyNames="idLugarRealizacion" EmptyDataText="No hay datos para listar." 
                                EnableTheming="True" Font-Bold="False" Font-Names="Arial" Font-Size="10pt" 
                                ForeColor="#333333" Width="100%">
                                <RowStyle BackColor="#F7F6F3" Font-Names="Arial" Font-Size="10pt" 
                                    ForeColor="#333333" />
                                    
                                <Columns>
                                    <asp:BoundField DataField="idLugarRealizacion" HeaderText="idLugarRealizacion" Visible="False" />
                                    <asp:BoundField DataField="idEstudio" HeaderText="idEstudio" Visible="False" />
                                    <asp:BoundField DataField="descripcion" HeaderText="Lugar" />
                                    <asp:BoundField DataField="ambito" HeaderText="Ambito" />
                                    <asp:BoundField DataField="domicilio" HeaderText="Domicilio" />
                                    <asp:BoundField DataField="cp" HeaderText="CP" />
                                    <asp:BoundField DataField="ciudad" HeaderText="Ciudad" />
                                    <asp:BoundField DataField="email" HeaderText="Mail" />
                                    <asp:BoundField DataField="responsable" HeaderText="Responsable" />
                                    <asp:BoundField DataField="cargo" HeaderText="Cargo" />
                                </Columns>
                                
                                <FooterStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#990000" ForeColor="White" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#333333" Font-Bold="False" Font-Italic="False" 
                                    Font-Names="Arial" Font-Size="10pt" ForeColor="White" />
                                <EditRowStyle BackColor="#999999" />
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            </asp:GridView>
            </p>

            <p>
                <asp:Label ID="Label27" runat="server" Text="Seguros de daños" Font-Bold="True"></asp:Label></br>                
                                <asp:GridView ID="gvListaAseguradora" runat="server" AutoGenerateColumns="False" 
                                CellPadding="5" DataKeyNames="idEstudioAseguradora" EmptyDataText="No hay datos para listar." 
                                EnableTheming="True" Font-Bold="False" Font-Names="Arial" Font-Size="10pt" 
                                ForeColor="#333333" Width="100%">
                                <RowStyle BackColor="#F7F6F3" Font-Names="Arial" Font-Size="10pt" 
                                    ForeColor="#333333" />
                                    
                                <Columns>
                                    <asp:BoundField DataField="idEstudioAseguradora" HeaderText="idEstudioAseguradora" Visible="False" />
                                    <asp:BoundField DataField="idEstudio" HeaderText="idEstudio" Visible="False" />
                                    <asp:BoundField DataField="idAseguradora" HeaderText="idAseguradora" Visible="False" />
                                    <asp:BoundField DataField="descripcion" HeaderText="Aseguradora" />
                                    <asp:BoundField DataField="numeroPoliza" HeaderText="Número de póliza" />
                                    <asp:BoundField DataField="fechaVencimiento" HeaderText="Fch. de vto." />
                                </Columns>
                                
                                <FooterStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#990000" ForeColor="White" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#333333" Font-Bold="False" Font-Italic="False" 
                                    Font-Names="Arial" Font-Size="10pt" ForeColor="White" />
                                <EditRowStyle BackColor="#999999" />
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            </asp:GridView>
            </p>

            <p>
                <asp:Label ID="Label28" runat="server" Text="Comité/s de ética de Investigación" Font-Bold="True"></asp:Label></br>                
                                <asp:GridView ID="gvListaComiteEtica" runat="server" AutoGenerateColumns="False" 
                                CellPadding="5" DataKeyNames="idEstudioComiteEtica" EmptyDataText="No hay datos para listar." 
                                EnableTheming="True" Font-Bold="False" Font-Names="Arial" Font-Size="10pt" 
                                ForeColor="#333333" Width="100%">
                                <RowStyle BackColor="#F7F6F3" Font-Names="Arial" Font-Size="10pt" 
                                    ForeColor="#333333" />
                                    
                                <Columns>                                
                                    <asp:BoundField DataField="idEstudioComiteEtica" HeaderText="idEstudioComiteEtica" Visible="False" />
                                    <asp:BoundField DataField="idEstudio" HeaderText="idEstudio" Visible="False" />
                                    <asp:BoundField DataField="idComiteEtica" HeaderText="idComiteEtica" Visible="False" />
                                    <asp:BoundField DataField="descripcion" HeaderText="Comité" />
                                    <asp:BoundField DataField="dictamen" HeaderText="Dictamen" />
                                    <asp:BoundField DataField="fechaDictamen" HeaderText="Fch. del dictamen" />
                                </Columns>
                                
                                <FooterStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#990000" ForeColor="White" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#333333" Font-Bold="False" Font-Italic="False" 
                                    Font-Names="Arial" Font-Size="10pt" ForeColor="White" />
                                <EditRowStyle BackColor="#999999" />
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            </asp:GridView>
            </p>

            <p>
                <asp:Label ID="Label29" runat="server" Text="Informe de la comisión de investigaciones biomédicas en seres humanos (CAIBSH)" Font-Bold="True"></asp:Label></br>
                <asp:Label ID="Label30" runat="server" Text="Label"></asp:Label></br></br>  

                <asp:Label ID="Label32" runat="server" Text="Historial"></asp:Label></br>  
                
                                <asp:GridView ID="gvListaInformeAprobado" runat="server" AutoGenerateColumns="False" 
                                CellPadding="5" DataKeyNames="idEstudioItemAprobado" EmptyDataText="No hay datos para listar." 
                                EnableTheming="True" Font-Bold="False" Font-Names="Arial" Font-Size="10pt" 
                                ForeColor="#333333" Width="100%">
                                <RowStyle BackColor="#F7F6F3" Font-Names="Arial" Font-Size="10pt" 
                                    ForeColor="#333333" />
                                    
                                <Columns>
                                    <asp:BoundField DataField="idEstudioItemAprobado" HeaderText="idEstudioItemAprobado" Visible="False" />
                                    <asp:BoundField DataField="idEstudio" HeaderText="idEstudio" Visible="False" />
                                    <asp:BoundField DataField="idItemAprobado" HeaderText="idItemAprobado" Visible="False" />
                                    <asp:BoundField DataField="descripcion" HeaderText="Descripción" />
                                    <asp:BoundField DataField="fecha" HeaderText="Fecha" />
                                </Columns>
                                
                                <FooterStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#990000" ForeColor="White" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#333333" Font-Bold="False" Font-Italic="False" 
                                    Font-Names="Arial" Font-Size="10pt" ForeColor="White" />
                                <EditRowStyle BackColor="#999999" />
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            </asp:GridView>
            </p>

            <p>
                <h3><a href="javascript:history.back()">Cerrar</a></h3>
            </p>

        </li>


    </ol>
</asp:Content>


