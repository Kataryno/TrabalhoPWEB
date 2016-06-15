<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Respostas.aspx.cs" Inherits="LuxCatering.Clientes.Respostas" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <asp:Label runat="server" id="email"><%: Context.User.Identity.GetUserName()  %></asp:Label>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" SelectCommand="SELECT * FROM [CLIENTE] WHERE ([EMAIL] = @EMAIL)" >
           <SelectParameters>
               <asp:ControlParameter ControlID="email" Name="EMAIL" PropertyName="Text" Type="String" />
           </SelectParameters>
        </asp:SqlDataSource>
        <asp:gridview runat="server" ID="GridView1" AutoGenerateColumns="False" DataKeyNames="ID_CLIENTE" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ID_CLIENTE" HeaderText="ID_CLIENTE" InsertVisible="False" ReadOnly="True" SortExpression="ID_CLIENTE" />
                <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                <asp:BoundField DataField="MORADA" HeaderText="MORADA" SortExpression="MORADA" />
                <asp:BoundField DataField="NIF" HeaderText="NIF" SortExpression="NIF" />
                <asp:BoundField DataField="TELEFONE" HeaderText="TELEFONE" SortExpression="TELEFONE" />
                <asp:BoundField DataField="TELEMOVEL" HeaderText="TELEMOVEL" SortExpression="TELEMOVEL" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            </Columns>
        </asp:gridview>
        <asp:sqldatasource runat="server" ID="SqlDataSource2" ConnectionString="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" SelectCommand="SELECT * FROM [CLIENTE] WHERE ([ID_CLIENTE] = @ID_CLIENTE)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="ID_CLIENTE" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:sqldatasource>
        <asp:gridview runat="server" id="Gridview2" AutoGenerateColumns="False" DataKeyNames="ID_CLIENTE" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="ID_CLIENTE" HeaderText="ID_CLIENTE" InsertVisible="False" ReadOnly="True" SortExpression="ID_CLIENTE" />
                <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                <asp:BoundField DataField="MORADA" HeaderText="MORADA" SortExpression="MORADA" />
                <asp:BoundField DataField="NIF" HeaderText="NIF" SortExpression="NIF" />
                <asp:BoundField DataField="TELEFONE" HeaderText="TELEFONE" SortExpression="TELEFONE" />
                <asp:BoundField DataField="TELEMOVEL" HeaderText="TELEMOVEL" SortExpression="TELEMOVEL" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            </Columns>
        </asp:gridview>

        <asp:sqldatasource runat="server" ID="SqlDataSource3" ConnectionString="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" SelectCommand="SELECT * FROM [ORCAMENTO] WHERE ([ID_PEDIDO] = @ID_PEDIDO)" >
            <SelectParameters>
                <asp:ControlParameter ControlID="Gridview2" Name="ID_PEDIDO" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:sqldatasource>
        <asp:gridview runat="server" id="Gridview3" AutoGenerateColumns="False" DataKeyNames="ID_ORCAMENTO" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="ID_ORCAMENTO" HeaderText="ID_ORCAMENTO" InsertVisible="False" ReadOnly="True" SortExpression="ID_ORCAMENTO" />
                <asp:BoundField DataField="ID_PEDIDO" HeaderText="ID_PEDIDO" SortExpression="ID_PEDIDO" />
                <asp:BoundField DataField="ID_FORNECEDOR" HeaderText="ID_FORNECEDOR" SortExpression="ID_FORNECEDOR" />
                <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                <asp:BoundField DataField="DATA_CRIACAO" HeaderText="DATA_CRIACAO" SortExpression="DATA_CRIACAO" />
                <asp:BoundField DataField="PRECO_TOTAL" HeaderText="PRECO_TOTAL" SortExpression="PRECO_TOTAL" />
            </Columns>
        </asp:gridview>
    </div>
    </asp:Content>

