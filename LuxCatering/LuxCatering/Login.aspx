<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LuxCatering.User" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


  
    <div id="form1" runat="server">
    <div class="auto-style1">
     <table class="auto-style1">
            <tr>
                <td class="auto-style4">Nome de utilizador:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TBUserName" runat="server" Width="180px" OnTextChanged="TBUserName_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TBUserName" ErrorMessage="Necessario o nome do utilizador" ForeColor="Red"></asp:RequiredFieldValidator>
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
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="81px" />
                   
                <td>
                    <asp:Login ID="Login1" runat="server">
                    </asp:Login>
                </td>
            </tr>
        </table>
    
    </div>
 </div>
    
    </asp:Content>
