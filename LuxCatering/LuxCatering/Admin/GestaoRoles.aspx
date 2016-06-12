<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GestaoRoles.aspx.cs" Inherits="LuxCatering.Admin.GestaoRoles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
    <div>
        <h3>Roles existentes</h3>
        <asp:SqlDataSource ID="dsRoles" runat="server" ConnectionString="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [Name] FROM [AspNetRoles]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="dsRoles">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            </Columns>
        </asp:GridView>
        <br />
        <h3>Adicionar Role</h3>
        <asp:TextBox ID="tbNomeNovaRole" runat="server" Text="Nova role"></asp:TextBox>
        <asp:Button ID="btCriarRole" runat="server" Text="Criar Role" OnClick="CriarRole"  />
        <br /><br />
    </div>
    </form>
</body>
</html>
