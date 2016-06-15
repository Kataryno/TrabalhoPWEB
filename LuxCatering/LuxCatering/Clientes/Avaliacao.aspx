<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Avaliacao.aspx.cs" Inherits="LuxCatering.Clientes.Avaliacao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheets" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 368px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <h3>Avaliação</h3>
     <table class="nav-justified">
         <tr>
             <td  class="auto-style1"><label style="float:right; margin-right: 0px;"> Seleccione o fornecedor a avaliar</label>
   </td>
   
             <td>
        <asp:dropdownlist ID="ddlFornecedores" runat="server" datasourceid="dsFornecedoresAvaliacao" datatextfield="NOME" datavaluefield="ID_FORNECEDOR"></asp:dropdownlist>
    <asp:sqldatasource id="dsFornecedoresAvaliacao" runat="server" connectionstring="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" selectcommand="SELECT [NOME], [ID_FORNECEDOR] FROM [FORNECEDOR]"></asp:sqldatasource>
   </td>
                 </tr>
             </table>
         <table class="nav-justified">
       
        <tr>
            <td class="auto-style1"><label style="float:right; margin-right: 0px;">Comunicação</label></td>
            <td> <asp:dropdownlist id="ddlComunicacao" runat="server">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
        <asp:ListItem Value="3"></asp:ListItem>
        <asp:ListItem Value="4"></asp:ListItem>
        <asp:ListItem Value="5"></asp:ListItem>
    </asp:dropdownlist></td>
        </tr>
        <tr>
            <td class="auto-style1"><label style="float:right; margin-right: 0px;">Simpatia</label></td>
            <td> <asp:dropdownlist id="ddlSimpatia" runat="server">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
        <asp:ListItem Value="3"></asp:ListItem>
        <asp:ListItem Value="4"></asp:ListItem>
        <asp:ListItem Value="5"></asp:ListItem>
    </asp:dropdownlist></td>
        </tr>
        <tr>
            <td class="auto-style1"><label style="float:right; margin-right: 0px;">Preço</label></td>
            <td> <asp:dropdownlist id="ddlPreco" runat="server">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
        <asp:ListItem Value="3"></asp:ListItem>
        <asp:ListItem Value="4"></asp:ListItem>
        <asp:ListItem Value="5"></asp:ListItem>
    </asp:dropdownlist></td>
        </tr>
        <tr>
            <td class="auto-style1"><label style="float:right; margin-right: 0px;">Serviço</label></td>
            <td> <asp:dropdownlist id="ddlServico" runat="server">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
        <asp:ListItem Value="3"></asp:ListItem>
        <asp:ListItem Value="4"></asp:ListItem>
        <asp:ListItem Value="5"></asp:ListItem>
    </asp:dropdownlist></td>
        </tr>
        <tr>
            <td class="auto-style1"><label style="float:right; margin-right: 0px;">Global</label></td>
            <td> <asp:dropdownlist id="ddlGlobal" runat="server">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
        <asp:ListItem Value="3"></asp:ListItem>
        <asp:ListItem Value="4"></asp:ListItem>
        <asp:ListItem Value="5"></asp:ListItem>
    </asp:dropdownlist></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td><asp:button runat="server" text="Enviar Avaliação" OnClick="EnviaAvaliacao"/></td>
        </tr>
    </table>

    
</div>
</asp:Content>
