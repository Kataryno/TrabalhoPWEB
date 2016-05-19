<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientesForm.aspx.cs" Inherits="LuxCatering.ClientesForm" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


  
    <div id="form1" runat="server">
    
      
    
        <table class="nav-justified">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Solicitar Orçamento"></asp:Label>
                <br /><br />
                    <asp:Label ID="Label2" runat="server" Text="Respostas"></asp:Label>
                  <br /><br />
                       <asp:Label ID="Label3" runat="server" Text="Alterar dados"></asp:Label>
                  
                </td>
                <td>
                    <br /><br />
                    <div id="orca">



                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" SelectCommand="SELECT * FROM [PRODUTO]"></asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_PRODUTO" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="ID_PRODUTO" HeaderText="ID_PRODUTO" ReadOnly="True" SortExpression="ID_PRODUTO" />
                                <asp:BoundField DataField="ID_CATEGORIA" HeaderText="ID_CATEGORIA" SortExpression="ID_CATEGORIA" />
                                <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                                <asp:BoundField DataField="DESCRICAO" HeaderText="DESCRICAO" SortExpression="DESCRICAO" />
                            </Columns>
                        </asp:GridView>
                         <br /> <br />
                        <asp:Button ID="Button1" runat="server" Text="Solicitar Orçamento" />

                        <br />

                    </div>
                    <div id="respo">


                    </div>
                    <div id="dados">


                    </div>

                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
      
    
    </div>
    
    </asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="Stylesheets">
    <link rel="stylesheet" href="~/Content/Site.css" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 214px;
        }
    </style>
</asp:Content>


