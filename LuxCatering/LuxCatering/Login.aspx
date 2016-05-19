<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LuxCatering.Login" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


  
    <div id="form1" runat="server">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">Nome de utilizador:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TBUserName" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TBUserName" ErrorMessage="Necessario o nome do utilizador" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">E-mail:</td>
                <td>
                    <asp:TextBox ID="TBEmail" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
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
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TBPassword" ErrorMessage="Necessario a password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Confirme a Password:</td>
                <td>
                    <asp:TextBox ID="TBCPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>
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
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Necessario localidade" ForeColor="Red" InitialValue="Selecciona Localidade"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submeter" />
                    <input id="Reset1" type="reset" value="reset" /></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    
    </asp:Content>

