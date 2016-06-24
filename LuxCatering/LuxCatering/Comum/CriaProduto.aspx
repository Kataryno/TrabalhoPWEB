<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CriaProduto.aspx.cs" Inherits="LuxCatering.FornecedoresForm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript">
        function produto() {
            document.getElementById('orcamento').style.visibility = 'hidden';
            document.getElementById('orcamento').style.display = 'none';
            document.getElementById('produto').style.visibility = 'visible';
            document.getElementById('produto').style.display = 'block';
        }
        function orcamento() {
            document.getElementById('produto').style.visibility = 'hidden';
            document.getElementById('produto').style.display = 'none';
            document.getElementById('orcamento').style.visibility = 'visible';
            document.getElementById('orcamento').style.display = 'block';
        }
    </script>

    <div id="backgroudform">
        <div id="form1" runat="server">
            <table class="nav-justified">
                <tr>
                    <td class="auto-style1">
                        <br />
                        <div></div>
                        <div style="padding: 15px">
                            <div>
                                <asp:label runat="server" text="Label">Nome do produto:</asp:label>
                                <br />
                                <asp:textbox id="nomeprod" runat="server"></asp:textbox>
                            </div>
                            <br />

                            <div>
                                <asp:label runat="server" text="Label">Descrição:</asp:label>
                                <br />
                                <asp:textbox id="descricaoprod" runat="server"></asp:textbox>
                            </div>
                            <br />

                            <asp:button id="btnAddRow" runat="server" text="Introduzir novo produto" cssclass="btn btn-primary" onclick="btnAddRow_Click" />
                        </div>
                    </td>

                    <td>
                        <br />

                        <div id="produto" style="float: left; margin-left: 15%; padding: 5px;">
                            <h4>Tabela de Produtos:</h4>
                            <asp:literal id="ltError" runat="server" />
                            <asp:gridview id="Prod" allowsorting="True" cssclass="table table-striped color-table" runat="server" autogeneratecolumns="false" onrowdeleting="Prod_RowDeleting" onrowediting="Prod_RowEditing" onrowupdating="Prod_RowUpdating" onrowcancelingedit="Prod_RowCancelingEdit">
                             <Columns>
                                 <asp:TemplateField>
                                     <ItemTemplate>
                                         <asp:HiddenField ID="hdProd" runat="server" Value='<%#DataBinder.Eval(Container.DataItem,"ID_PRODUTO")  %>' />
                                     </ItemTemplate>
                                 </asp:TemplateField>
                             <asp:BoundField DataField="Nome" HeaderText="Nome" />
                            <asp:BoundField DataField="Descricao" HeaderText="Descricao" />
                            <asp:CommandField ShowEditButton="true" />
                            <asp:CommandField ShowDeleteButton="true" />
                            </Columns>
                         </asp:gridview>
                        </div>
                        &nbsp;
                    <div id="orcamento" style="float: left; margin-left: 5%; padding: 5px;">
                        <br />
                    </div>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="Stylesheets">
    <link rel="stylesheet" href="~/Content/Site.css" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            float: right;
            width: 102px;
        }

        .auto-style2 {
            width: 102px;
        }
    </style>
</asp:Content>