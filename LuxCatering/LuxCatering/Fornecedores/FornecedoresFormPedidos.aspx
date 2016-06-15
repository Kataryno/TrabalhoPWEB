<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FornecedoresFormPedidos.aspx.cs" Inherits="LuxCatering.FornecedoresFormPedidos" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript">
        function produto() {
            document.getElementById('orcamento').style.visibility = 'hidden';
            document.getElementById('orcamento').style.display = 'none';
            document.getElementById('produto').style.visibility = 'visible';
            document.getElementById('produto').style.display = 'block';
        }
        function orcamento() {
            document.getElementById('produto').style.visibility = 'hidden';
            document.getElementById('produto').style.display = 'none';
            document.getElementById('orcamento').style.visibility = 'visible';
            document.getElementById('orcamento').style.display = 'block';
        }
    </script>


   <div id="backgroudform">
    <div id="form_1" runat="server">
    
      
    
        <table class="nav-justified">
            <tr>
                <td class="auto-style1"><br />
                    <div></div>,
             <!--  <div  onclick="produto()" style="margin-left:10%;margin-top:15%; border-style:solid;border-width: 5px;border-color:brown;background-color:bisque">
                    <asp:Label ID="Label1" runat="server" Text="Introduzir Produto" style="padding: 10px;width: 60%;"></asp:Label>
               </div>
                         <br /><br />
                     <div  onclick="orcamento()" style="margin-left:10%;margin-top:15%; border-style: solid;border-width: 5px;border-color:brown;background-color:burlywood">
                    <asp:Label ID="Label2" runat="server" Text="Responder a Pedidos" style="padding: 10px;width: 60%;"></asp:Label>
                 </div>-->
                </td>
               
                <td >
                       
                    &nbsp;
                    <div id="orcamento" style="float:left;margin-left:5%;padding:5px;">
                        <br />
                        <h4>Pedidos de Clientes:</h4>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_PEDIDO" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="757px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="ID_PEDIDO" HeaderText="ID_PEDIDO" ReadOnly="True" SortExpression="ID_PEDIDO" />
                                <asp:BoundField DataField="ID_CLIENTE" HeaderText="ID_CLIENTE" SortExpression="ID_CLIENTE" />
                                <asp:BoundField DataField="ID_LOCAL" HeaderText="ID_LOCAL" SortExpression="ID_LOCAL" />
                                <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                                <asp:BoundField DataField="DATA_CRIACAO" HeaderText="DATA_CRIACAO" SortExpression="DATA_CRIACAO" />
                                <asp:BoundField DataField="NUM_PESSOAS" HeaderText="NUM_PESSOAS" SortExpression="NUM_PESSOAS" />
                                <asp:BoundField DataField="DATA_EVENTO" HeaderText="DATA_EVENTO" SortExpression="DATA_EVENTO" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                            </asp:GridView>
                        
                        <h4>Detalhe do pedido:</h4>
                       

                   
                   
                       
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" SelectCommand="SELECT * FROM [PEDIDO]" DeleteCommand="DELETE FROM [PEDIDO] WHERE [ID_PEDIDO] = @ID_PEDIDO" InsertCommand="INSERT INTO [PEDIDO] ([ID_PEDIDO], [ID_CLIENTE], [ID_LOCAL], [NOME], [DATA_CRIACAO], [NUM_PESSOAS], [DATA_EVENTO]) VALUES (@ID_PEDIDO, @ID_CLIENTE, @ID_LOCAL, @NOME, @DATA_CRIACAO, @NUM_PESSOAS, @DATA_EVENTO)" UpdateCommand="UPDATE [PEDIDO] SET [ID_CLIENTE] = @ID_CLIENTE, [ID_LOCAL] = @ID_LOCAL, [NOME] = @NOME, [DATA_CRIACAO] = @DATA_CRIACAO, [NUM_PESSOAS] = @NUM_PESSOAS, [DATA_EVENTO] = @DATA_EVENTO WHERE [ID_PEDIDO] = @ID_PEDIDO">
                        <DeleteParameters>
                            <asp:Parameter Name="ID_PEDIDO" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ID_PEDIDO" Type="Int32" />
                            <asp:Parameter Name="ID_CLIENTE" Type="Int32" />
                            <asp:Parameter Name="ID_LOCAL" Type="Int32" />
                            <asp:Parameter Name="NOME" Type="String" />
                            <asp:Parameter Name="DATA_CRIACAO" Type="DateTime" />
                            <asp:Parameter Name="NUM_PESSOAS" Type="Int32" />
                            <asp:Parameter Name="DATA_EVENTO" Type="DateTime" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ID_CLIENTE" Type="Int32" />
                            <asp:Parameter Name="ID_LOCAL" Type="Int32" />
                            <asp:Parameter Name="NOME" Type="String" />
                            <asp:Parameter Name="DATA_CRIACAO" Type="DateTime" />
                            <asp:Parameter Name="NUM_PESSOAS" Type="Int32" />
                            <asp:Parameter Name="DATA_EVENTO" Type="DateTime" />
                            <asp:Parameter Name="ID_PEDIDO" Type="Int32" />
                        </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" Width="764px" DataKeyNames="ID_PEDIDO,ID_LINHA_PEDIDO">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="ID_PEDIDO" HeaderText="ID_PEDIDO" SortExpression="ID_PEDIDO" ReadOnly="True" />
                                <asp:BoundField DataField="ID_LINHA_PEDIDO" HeaderText="ID_LINHA_PEDIDO" ReadOnly="True" SortExpression="ID_LINHA_PEDIDO" />
                                <asp:BoundField DataField="ID_PRODUTO" HeaderText="ID_PRODUTO" SortExpression="ID_PRODUTO" />
                                <asp:BoundField DataField="QTD_PRODUTO" HeaderText="QTD_PRODUTO" SortExpression="QTD_PRODUTO" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <asp:Label runat="server" id="email"><%: Context.User.Identity.GetUserName()  %></asp:Label>
                         <asp:label id="pedidoLabel"
        forecolor="Black"
        runat="server"/><br />
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" SelectCommand="SELECT * FROM [LINHA_PEDIDO] WHERE ([ID_PEDIDO] = @ID_PEDIDO)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView2" Name="ID_PEDIDO" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" SelectCommand="SELECT * FROM [ORCAMENTO] WHERE (([ID_PEDIDO] = @ID_PEDIDO) AND ([ID_FORNECEDOR] = @ID_FORNECEDOR))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView3" Name="ID_PEDIDO" PropertyName="SelectedValue" Type="Int32" />
                                <asp:ControlParameter ControlID="GridView4" Name="ID_FORNECEDOR" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                         <br />
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" SelectCommand="SELECT * FROM [ORCAMENTO] WHERE ([ID_PEDIDO] = @ID_PEDIDO)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView2" Name="ID_PEDIDO" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_ORCAMENTO" DataSourceID="SqlDataSource6" CellPadding="4" ForeColor="#333333" GridLines="None" Width="776px">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="ID_ORCAMENTO" HeaderText="ID_ORCAMENTO" InsertVisible="False" ReadOnly="True" SortExpression="ID_ORCAMENTO" />
                                <asp:BoundField DataField="ID_PEDIDO" HeaderText="ID_PEDIDO" SortExpression="ID_PEDIDO" />
                                <asp:BoundField DataField="ID_FORNECEDOR" HeaderText="ID_FORNECEDOR" SortExpression="ID_FORNECEDOR" />
                                <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                                <asp:BoundField DataField="DATA_CRIACAO" HeaderText="DATA_CRIACAO" SortExpression="DATA_CRIACAO" />
                                <asp:BoundField DataField="PRECO_TOTAL" HeaderText="PRECO_TOTAL" SortExpression="PRECO_TOTAL" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                         <h4>Valor a atribuir:</h4>

                        <div runat="server" id="precoorca">
                        <asp:textbox id="preco" runat="server"></asp:textbox>
                        <asp:button runat="server" text="Enviar Orçamento" OnClick="Unnamed2_Click" />
                            </div>
                    </div>
                  
                       
                </td>
               
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
      
    
    </div>
  </div>  
    </asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="Stylesheets">
    <link rel="stylesheet" href="~/Content/Site.css" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            float: right;
            width: 102px;
        }
        .auto-style2 {
            width: 102px;
        }
    </style>
</asp:Content>


