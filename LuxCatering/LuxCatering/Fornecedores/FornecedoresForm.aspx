<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FornecedoresForm.aspx.cs" Inherits="LuxCatering.FornecedoresForm" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


   <div style="height:70%; width:90%; background-color:antiquewhite">
    <div id="form1" runat="server">
    
      
    
        <table class="nav-justified">
            <tr>
                <td class="auto-style1" style="float:right;"><br />
                    <div></div>,
               <div style="margin-left:10%;margin-top:15%; border-style:solid;border-width: 5px;border-color:brown;background-color:bisque">
                    <asp:Label ID="Label1" runat="server" Text="Introduzir Produto" style="padding: 10px;width: 60%;"></asp:Label>
               </div>
                         <br /><br />
                     <div style="margin-left:10%;margin-top:15%; border-style: solid;border-width: 5px;border-color:brown;background-color:burlywood">
                    <asp:Label ID="Label2" runat="server" Text="Responder a Orçamento" style="padding: 10px;width: 60%;"></asp:Label>
                 </div>
                  
                </td>
               
                <td >
                    <br />
                    <br /> <br />
                     <div style="float:right;margin-right:15%">
                    <h4>Tabela de Produtos:</h4>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_PRODUTO" DataSourceID="SqlDataSource1" OnRowDeleted="GridView1_RowDeleted" Width="568px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                        <Columns>
                            <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                            <asp:BoundField DataField="DESCRICAO" HeaderText="DESCRICAO" SortExpression="DESCRICAO" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                    <br /> <br />
                    <h4>Introduzir novo produto:</h4>
                    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateInsertButton="True" AutoGenerateRows="False" DataKeyNames="ID_PRODUTO" DataSourceID="SqlDataSource1" Height="50px" Width="569px" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField ApplyFormatInEditMode="True" DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                            <asp:BoundField ApplyFormatInEditMode="True" DataField="DESCRICAO" HeaderText="DESCRICAO" SortExpression="DESCRICAO" />
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                    <br />
                    <div id="orca" style="float:center">



                         <br /> 
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LuxCatering-DBConnectionString %>" SelectCommand="SELECT * FROM [PRODUTO]"></asp:SqlDataSource>
                        <br />

                        <br />

                    </div>
                    <div id="respo">


                    </div>
                    <div id="dados">


                    </div>
                          </div>
                    &nbsp;</td>
               
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
      
    
    </div>
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


