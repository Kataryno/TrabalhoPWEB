<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Respostas.aspx.cs" Inherits="LuxCatering.Respostas.Respostas" %>


<asp:Content ID="ContentRepo" ContentPlaceHolderID="MainContent" runat="server">
    <div runat="server">
    <asp:Label runat="server" id="email"><%: Context.User.Identity.GetUserName()  %></asp:Label>
        <asp:button runat="server" text="Ver as respostas aos meus pedidos" OnClick="Unnamed1_Click" />
    </div>
    </asp:Content>

