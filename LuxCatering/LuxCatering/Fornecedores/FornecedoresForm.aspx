﻿<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FornecedoresForm.aspx.cs" Inherits="LuxCatering.ClientesForm" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


  
    <div id="form1" runat="server">
    
      
    
        <table class="nav-justified">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Solicitar Orçamento"></asp:Label>
                <br /><br />
                    <asp:Label ID="Label2" runat="server" Text="Respostas"></asp:Label>
                  <br /><br />
                       <asp:Label ID="Label3" runat="server" Text="Alterar dados"></asp:Label>
                  
                </td>
                <td>
                    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ID_PRODUTO" DataSourceID="SqlDataSource1" Height="137px">
                        <EditItemTemplate>
                            ID_PRODUTO:
                            <asp:Label ID="ID_PRODUTOLabel1" runat="server" Text='<%# Eval("ID_PRODUTO") %>' />
                            <br />
                            ID_CATEGORIA:
                            <asp:TextBox ID="ID_CATEGORIATextBox" runat="server" Text='<%# Bind("ID_CATEGORIA") %>' />
                            <br />
                            NOME:
                            <asp:TextBox ID="NOMETextBox" runat="server" Text='<%# Bind("NOME") %>' />
                            <br />
                            DESCRICAO:
                            <asp:TextBox ID="DESCRICAOTextBox" runat="server" Text='<%# Bind("DESCRICAO") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            ID_PRODUTO:
                            <asp:TextBox ID="ID_PRODUTOTextBox" runat="server" Text='<%# Bind("ID_PRODUTO") %>' />
                            <br />
                            ID_CATEGORIA:
                            <asp:TextBox ID="ID_CATEGORIATextBox" runat="server" Text='<%# Bind("ID_CATEGORIA") %>' />
                            <br />
                            NOME:
                            <asp:TextBox ID="NOMETextBox" runat="server" Text='<%# Bind("NOME") %>' />
                            <br />
                            DESCRICAO:
                            <asp:TextBox ID="DESCRICAOTextBox" runat="server" Text='<%# Bind("DESCRICAO") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            ID_PRODUTO:
                            <asp:Label ID="ID_PRODUTOLabel" runat="server" Text='<%# Eval("ID_PRODUTO") %>' />
                            <br />
                            ID_CATEGORIA:
                            <asp:Label ID="ID_CATEGORIALabel" runat="server" Text='<%# Bind("ID_CATEGORIA") %>' />
                            <br />
                            NOME:
                            <asp:Label ID="NOMELabel" runat="server" Text='<%# Bind("NOME") %>' />
                            <br />
                            DESCRICAO:
                            <asp:Label ID="DESCRICAOLabel" runat="server" Text='<%# Bind("DESCRICAO") %>' />
                            <br />

                        </ItemTemplate>
                    </asp:FormView>
                    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateInsertButton="True" AutoGenerateRows="False" DataKeyNames="ID_PRODUTO" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                        <Fields>
                            <asp:BoundField ApplyFormatInEditMode="True" DataField="ID_PRODUTO" HeaderText="ID_PRODUTO" ReadOnly="True" SortExpression="ID_PRODUTO" />
                            <asp:BoundField ApplyFormatInEditMode="True" DataField="ID_CATEGORIA" HeaderText="ID_CATEGORIA" SortExpression="ID_CATEGORIA" />
                            <asp:BoundField ApplyFormatInEditMode="True" DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                            <asp:BoundField ApplyFormatInEditMode="True" DataField="DESCRICAO" HeaderText="DESCRICAO" SortExpression="DESCRICAO" />
                        </Fields>
                    </asp:DetailsView>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_PRODUTO" DataSourceID="SqlDataSource1" OnRowDeleted="GridView1_RowDeleted">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="ID_PRODUTO" HeaderText="ID_PRODUTO" ReadOnly="True" SortExpression="ID_PRODUTO" />
                            <asp:BoundField DataField="ID_CATEGORIA" HeaderText="ID_CATEGORIA" SortExpression="ID_CATEGORIA" />
                            <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                            <asp:BoundField DataField="DESCRICAO" HeaderText="DESCRICAO" SortExpression="DESCRICAO" />
                        </Columns>
                    </asp:GridView>
                    <br />
                    <div id="orca">



                         <br /> 
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" SelectCommand="SELECT * FROM [PRODUTO]"></asp:SqlDataSource>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Solicitar Orçamento" />

                        <br />

                    </div>
                    <div id="respo">


                    </div>
                    <div id="dados">


                    </div>

                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
      
    
    </div>
    
    </asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="Stylesheets">
    <link rel="stylesheet" href="~/Content/Site.css" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 214px;
        }
    </style>
</asp:Content>


