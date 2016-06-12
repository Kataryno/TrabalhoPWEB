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
    <div >
    
      
    
        <table class="nav-justified">
            <tr>
                <td class="auto-style1"><br />
                    <div></div>
                         <br />
                  
                </td>
               
                <td >
                    <asp:Button ID="Button2" runat="server" Text="Criar Pedido" Width="156px" />
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
                     <p>Quantidade</p>    <asp:textbox runat="server" Width="20px"></asp:textbox><p></p>
 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Adicionar" />
    </form>

                    </div>
                       
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" SelectCommand="SELECT * FROM [PRODUTO]"></asp:SqlDataSource>
                       
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


