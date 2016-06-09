<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FornecedoresForm.aspx.cs" Inherits="LuxCatering.FornecedoresForm" %>
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


   <div style="height:90%; width:90%; background-color:antiquewhite">
    <div id="form1" runat="server">
    
      
    
        <table class="nav-justified">
            <tr>
                <td class="auto-style1"><br />
                    <div></div>,
             <!--  <div  onclick="produto()" style="margin-left:10%;margin-top:15%; border-style:solid;border-width: 5px;border-color:brown;background-color:bisque">
                    <asp:Label ID="Label1" runat="server" Text="Introduzir Produto" style="padding: 10px;width: 60%;"></asp:Label>
               </div>
                         <br /><br />
                     <div  onclick="orcamento()" style="margin-left:10%;margin-top:15%; border-style: solid;border-width: 5px;border-color:brown;background-color:burlywood">
                    <asp:Label ID="Label2" runat="server" Text="Responder a Pedidos" style="padding: 10px;width: 60%;"></asp:Label>
                 </div>-->
                        <div style ="padding:15px">
                     <div >
                         <asp:label runat="server"  text="Label">Nome do produto:</asp:label><br />
                         <asp:textbox  id="nomeprod" runat="server"></asp:textbox>
                         </div><br />

                      <div>
                           <asp:label runat="server" text="Label">Descrição:</asp:label><br />
                          <asp:textbox id="descricaoprod" runat="server"></asp:textbox>
                         </div>
                            <br />
                
                        <asp:Button ID="btnAddRow" runat="server" Text ="Introduzir novo produto" CssClass="btn btn-primary" onclick="btnAddRow_Click" />
                    </div>
                </td>
               
                <td >
                    <br />
                    
                     <div id="produto" style="float:left;margin-left:15%;padding:5px;">
                    <h4>Tabela de Produtos:</h4>
                         <asp:Literal ID="ltError" runat="server" />
                         <asp:GridView  ID="Prod"  AllowSorting="True" CssClass="table table-striped color-table" runat="server" AutoGenerateColumns="false" OnRowDeleting="Prod_RowDeleting" OnRowEditing="Prod_RowEditing" OnRowUpdating="Prod_RowUpdating" OnRowCancelingEdit="Prod_RowCancelingEdit">
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
                         </asp:GridView>
                  


                    </div>
                       
                    &nbsp;
                    <div id="orcamento" style="float:left;margin-left:5%;padding:5px;">
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

<asp:Content ID="Content1" runat="server" contentplaceholderid="Stylesheets">
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


