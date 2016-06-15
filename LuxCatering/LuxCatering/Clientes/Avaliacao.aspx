<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Avaliacao.aspx.cs" Inherits="LuxCatering.Clientes.Avaliacao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheets" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <asp:Label id="email" runat="server"><%: Context.User.Identity.GetUserName()  %></asp:Label>
        <asp:gridview runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            </Columns>
        </asp:gridview>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" SelectCommand="SELECT [Id] FROM [AspNetUsers] WHERE ([Email] = @Email)">
            <SelectParameters>
                <asp:ControlParameter ControlID="email" Name="Email" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_PEDIDO" DataSourceID="SqlDataSource3">
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" SelectCommand="SELECT * FROM [PEDIDO] WHERE ([ID_PEDIDO] = @ID_PEDIDO)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="ID_PEDIDO" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:gridview runat="server" AutoGenerateColumns="False" DataKeyNames="ID_ORCAMENTO" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ID_ORCAMENTO" HeaderText="ID_ORCAMENTO" ReadOnly="True" SortExpression="ID_ORCAMENTO" />
                <asp:BoundField DataField="ID_PEDIDO" HeaderText="ID_PEDIDO" SortExpression="ID_PEDIDO" />
                <asp:BoundField DataField="ID_FORNECEDOR" HeaderText="ID_FORNECEDOR" SortExpression="ID_FORNECEDOR" />
                <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                <asp:BoundField DataField="DATA_CRIACAO" HeaderText="DATA_CRIACAO" SortExpression="DATA_CRIACAO" />
                <asp:BoundField DataField="PRECO_TOTAL" HeaderText="PRECO_TOTAL" SortExpression="PRECO_TOTAL" />
            </Columns>
        </asp:gridview>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" SelectCommand="SELECT * FROM [ORCAMENTO] WHERE ([ID_PEDIDO] = @ID_PEDIDO)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="ID_PEDIDO" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>


    </div>
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
