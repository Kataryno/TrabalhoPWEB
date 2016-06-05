<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FornecedoresForm.aspx.cs" Inherits="LuxCatering.FornecedoresForm" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


   <div style="height:70%; width:90%; background-color:antiquewhite">
    <div id="form1" runat="server">
    
      
    
        <table class="nav-justified">
            <tr>
                <td class="auto-style1" style="float:right;"><br />
               <div style="margin-left:10%;margin-top:15% border-style: solid;border-width: 5px;border-color: black;background-color:bisque">
                    <asp:Label ID="Label1" runat="server" Text="Introduzir Produto" style="float:center"></asp:Label>
               </div>
                         <br /><br />
                     <div style="margin-left:10%;margin-top:15% border-style: solid;border-width: 5px;border-color: black;background-color:burlywood">
                    <asp:Label ID="Label2" runat="server" Text="Responder a Orçamento"></asp:Label>
                 </div>
                  
                </td>
                <td style="float:center">
                    <br />
                    <br /> <br />
                    <h4>Tabela de Produtos:</h4>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_PRODUTO" DataSourceID="SqlDataSource1" OnRowDeleted="GridView1_RowDeleted" Width="568px">
                        <Columns>
                            <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                            <asp:BoundField DataField="DESCRICAO" HeaderText="DESCRICAO" SortExpression="DESCRICAO" />
                        </Columns>
                    </asp:GridView>
                    <br /> <br />
                    <h4>Introduzir novo produto:</h4>
                    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateInsertButton="True" AutoGenerateRows="False" DataKeyNames="ID_PRODUTO" DataSourceID="SqlDataSource1" Height="50px" Width="569px">
                        <Fields>
                            <asp:BoundField ApplyFormatInEditMode="True" DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                            <asp:BoundField ApplyFormatInEditMode="True" DataField="DESCRICAO" HeaderText="DESCRICAO" SortExpression="DESCRICAO" />
                        </Fields>
                    </asp:DetailsView>
                    <br />
                    <div id="orca" style="float:center">



                         <br /> 
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" SelectCommand="SELECT * FROM [PRODUTO]"></asp:SqlDataSource>
                        <br />

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


