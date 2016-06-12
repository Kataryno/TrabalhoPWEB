<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientesForm.aspx.cs" Inherits="LuxCatering.ClientesForm" %>
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


   <div style="height:90%; width:90%; background-color:antiquewhite">
       <div id="form1" runat="server">
    
      
    
        <table class="nav-justified">
            <tr>
                <td class="auto-style1"><br />
                    <div></div>
                         <br />
                  
                </td>
               
                <td ><h5>Data do evento</h5>
                    <asp:TextBox ID="dataevento" type="date" runat="server"></asp:TextBox><br />
                    <h5>Numero de Pessoas</h5>
                    <asp:TextBox ID="pessoasevento" runat="server" Width="43px"></asp:TextBox><br />
                    <h5>Nome</h5>
                    <asp:TextBox ID="nomeevento" runat="server" Width="268px"></asp:TextBox><br /><br />
                    <h5>Local</h5>
                    <asp:TextBox ID="localevento" runat="server" Width="268px"></asp:TextBox><br /><br />
                    <asp:Button ID="Button2" runat="server" Text="Criar Pedido" Width="156px" OnClick="Button2_Click" />
                    <asp:GridView ID="GridView3" runat="server" OnSelectedIndexChanged="GridView3_SelectedIndexChanged1" AutoGenerateColumns="False" DataKeyNames="ID_PEDIDO" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="ID_PEDIDO" HeaderText="ID_PEDIDO" ReadOnly="True" SortExpression="ID_PEDIDO" />
                            <asp:BoundField DataField="ID_CLIENTE" HeaderText="ID_CLIENTE" SortExpression="ID_CLIENTE" />
                            <asp:BoundField DataField="ID_LOCAL" HeaderText="ID_LOCAL" SortExpression="ID_LOCAL" />
                            <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                            <asp:BoundField DataField="DATA_CRIACAO" HeaderText="DATA_CRIACAO" SortExpression="DATA_CRIACAO" />
                            <asp:BoundField DataField="NUM_PESSOAS" HeaderText="NUM_PESSOAS" SortExpression="NUM_PESSOAS" />
                            <asp:BoundField DataField="DATA_EVENTO" HeaderText="DATA_EVENTO" SortExpression="DATA_EVENTO" />
                        </Columns>
                    </asp:GridView>
                    <asp:Label ID="ID_pedido" runat="server" ></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" SelectCommand="SELECT * FROM [PEDIDO] WHERE ([ID_PEDIDO] = @ID_PEDIDO)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ID_pedido" Name="ID_PEDIDO" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    
                     <div id="produto" style="float:left;padding:5px;">
                    <h4>Tabela de Produtos:</h4>
                    
                             

     <h3>GridView Select Example</h3>

     <asp:gridview id="GridView2" 
       datasourceid="SqlDataSource1" 
       autogeneratecolumns="False"
       autogenerateselectbutton="True"
       selectedindex="1"
       onselectedindexchanged="GridView2_SelectedIndexChanged"
       onselectedindexchanging="GridView2_SelectedIndexChanging"   
       runat="server" DataKeyNames="ID_PRODUTO" AllowPaging="True">

         <Columns>
             <asp:BoundField DataField="ID_PRODUTO" HeaderText="ID_PRODUTO" ReadOnly="True" SortExpression="ID_PRODUTO" />
             <asp:BoundField DataField="ID_CATEGORIA" HeaderText="ID_CATEGORIA" SortExpression="ID_CATEGORIA" />
             <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
             <asp:BoundField DataField="DESCRICAO" HeaderText="DESCRICAO" SortExpression="DESCRICAO" />
         </Columns>

       <selectedrowstyle backcolor="LightCyan"
         forecolor="DarkBlue"
         font-bold="true"/>  

     </asp:gridview>

                   

      <br/>

      <asp:label id="MessageLabel"
        forecolor="Black"
        runat="server"/><br />

      <!-- This example uses Microsoft SQL Server and connects  -->
      <!-- to the sample database. Use an ASP.NET     -->
      <!-- expression to retrieve the connection string value   -->
      <!-- from the Web.config file.                            -->
                       
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" SelectCommand="SELECT * FROM [PRODUTO]"></asp:SqlDataSource>
                       
                     <p>Quantidade</p>    <asp:textbox runat="server" Width="20px"></asp:textbox><p></p>
 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Adicionar" />
    </form>

                    </div>
                       
                    &nbsp;&nbsp;</td>
               
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


