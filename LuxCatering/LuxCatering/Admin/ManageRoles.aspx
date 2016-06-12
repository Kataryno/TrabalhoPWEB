<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageRoles.aspx.cs" Inherits="ManageRoles" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <b>Role: </b>
    <asp:textbox id="RoleName" runat="server"></asp:textbox>
    <br />
    <asp:button id="CreateRoleButton" runat="server" text="Críar" onclick="CreateRoleButton_Click" />
    <br />
    <br />
    <asp:gridview id="RoleList" runat="server" autogeneratecolumns="False" OnRowDeleting="RoleList_RowDeleting" >    
        <Columns>
           
        <asp:TemplateField HeaderText="Role">    
        <ItemTemplate>    
        <asp:Label runat="server" ID="RoleNameLabel" Text='<%# Container.DataItem %>' />    
        </ItemTemplate>    
        </asp:TemplateField>    
        <asp:CommandField DeleteText="Delete Role" ShowDeleteButton="True"  />     
        </Columns>    
    </asp:gridview>


</asp:Content>

