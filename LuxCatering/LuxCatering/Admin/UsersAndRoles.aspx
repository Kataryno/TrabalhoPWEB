<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UsersAndRoles.aspx.cs" Inherits="UsersAndRoles" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <h3>Manage Roles By User</h3>

    <p>
        <b>Select a User:</b>
        <asp:dropdownlist id="UserList" runat="server" autopostback="True"
            datatextfield="UserName" datavaluefield="UserName" DataSourceID="SqlDataSourceUsers"> 

     </asp:dropdownlist>
        <asp:SqlDataSource ID="SqlDataSourceUsers" runat="server" ConnectionString="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" SelectCommand="SELECT [UserName] FROM [AspNetUsers]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:repeater id="UsersRoleList" runat="server" DataSourceID="SqlDataSourceRoles"> 
          <ItemTemplate> 
               <asp:CheckBox runat="server" ID="RoleCheckBox" AutoPostBack="true" 

                    Text='<%# Container.DataItem %>' /> 
               <br /> 
          </ItemTemplate> 
     </asp:repeater>
        <asp:SqlDataSource ID="SqlDataSourceRoles" runat="server" ConnectionString="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" SelectCommand="SELECT [RoleName] FROM [Roles] ORDER BY [RoleName]"></asp:SqlDataSource>
    </p>

    <p align="center">

        <asp:label id="ActionStatus" runat="server" cssclass="Important"></asp:label>
    </p>
</asp:Content>
