<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LuxCatering.Login" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


  
    <div id="form1" runat="server">
    
        <br />
        <br />
        <br />
    
        <table class="auto-style1" >
            <tr>
                <td class="auto-style3">Nome de utilizador:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TBUserName" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TBUserName" ErrorMessage="Necessario o nome do utilizador" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">E-mail:</td>
                <td>
                    <asp:TextBox ID="TBEmail" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TBEmail" ErrorMessage="Necessario o e-mail" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TBEmail" ErrorMessage="deve ser valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password:</td>
                <td>
                    <asp:TextBox ID="TBPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TBPassword" ErrorMessage="Necessario a password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Confirme a Password:</td>
                <td>
                    <asp:TextBox ID="TBCPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TBCPassword" ErrorMessage="Deve ser igual a password" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TBPassword" ControlToValidate="TBCPassword" ErrorMessage="devem ser iguais"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Localidade:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="180px">
                        <asp:ListItem>Selecciona Localidade</asp:ListItem>
                        <asp:ListItem>Norte</asp:ListItem>
                        <asp:ListItem>Centro</asp:ListItem>
                        <asp:ListItem>Sul</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Necessario localidade" ForeColor="Red" InitialValue="Selecciona Localidade"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <td class="auto-style3">NIF:</td>
                <td>
                    <asp:TextBox ID="NIF" runat="server"  Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="NIF" ErrorMessage="Necessario a NIF" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submeter" />
                    <input id="Reset1" type="reset" value="reset" /></td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    
    </asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="Stylesheets">
        <link rel="stylesheet" href="~/Content/Site.css" type="text/css" />
    <style type="text/css">
        #form1 {
            height: 901px;
            width: 1254px;
        }
        .auto-style1 {
            width: 77px;
        }
        .auto-style2 {
            width: 106px;
        }
        .auto-style3 {
            width: 143px;
        }
        .auto-style4 {
            width: 165px;
        }
    </style>
</asp:Content>


