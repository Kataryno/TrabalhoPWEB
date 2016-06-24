<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="LuxCatering.Manager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <h3>Gestão de Utilizadores</h3>
    <asp:gridview runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceUsers">
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
        </Columns>
    </asp:gridview>
    <asp:SqlDataSource ID="SqlDataSourceUsers" runat="server" ConnectionString="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" SelectCommand="SELECT [UserName] FROM [AspNetUsers]"></asp:SqlDataSource>
    <br />
</asp:Content>
