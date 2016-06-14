<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Avaliacao.aspx.cs" Inherits="LuxCatering.Clientes.Avaliacao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheets" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Avaliação</h3>
    Seleccione o fornecedor a avaliar
        <asp:dropdownlist ID="ddlFornecedores" runat="server" datasourceid="dsFornecedoresAvaliacao" datatextfield="NOME" datavaluefield="ID_FORNECEDOR"></asp:dropdownlist>
    <asp:sqldatasource id="dsFornecedoresAvaliacao" runat="server" connectionstring="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" selectcommand="SELECT [NOME], [ID_FORNECEDOR] FROM [FORNECEDOR]"></asp:sqldatasource>
    <br />
    <br />
    Comunicação
    <asp:dropdownlist id="ddlComunicacao" runat="server">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
        <asp:ListItem Value="3"></asp:ListItem>
        <asp:ListItem Value="4"></asp:ListItem>
        <asp:ListItem Value="5"></asp:ListItem>
    </asp:dropdownlist>
    <br />
    <br />
    Simpatia
    <asp:dropdownlist id="ddlSimpatia" runat="server">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
        <asp:ListItem Value="3"></asp:ListItem>
        <asp:ListItem Value="4"></asp:ListItem>
        <asp:ListItem Value="5"></asp:ListItem>
    </asp:dropdownlist>
    <br />
    <br />
    Preço
    <asp:dropdownlist id="ddlPreco" runat="server">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
        <asp:ListItem Value="3"></asp:ListItem>
        <asp:ListItem Value="4"></asp:ListItem>
        <asp:ListItem Value="5"></asp:ListItem>
    </asp:dropdownlist>
    <br />
    <br />
    Serviço
    <asp:dropdownlist id="ddlServico" runat="server">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
        <asp:ListItem Value="3"></asp:ListItem>
        <asp:ListItem Value="4"></asp:ListItem>
        <asp:ListItem Value="5"></asp:ListItem>
    </asp:dropdownlist>
    <br />
    <br />
    Global
    <asp:dropdownlist id="ddlGlobal" runat="server">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
        <asp:ListItem Value="3"></asp:ListItem>
        <asp:ListItem Value="4"></asp:ListItem>
        <asp:ListItem Value="5"></asp:ListItem>
    </asp:dropdownlist>

      <br />
    <br />
    <asp:button runat="server" text="Enviar Avaliação" OnClick="EnviaAvaliacao"/>
</asp:Content>
