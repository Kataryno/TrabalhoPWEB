<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Respostas.aspx.cs" Inherits="LuxCatering.Respostas.Respostas" %>


<asp:Content ID="ContentRepo" ContentPlaceHolderID="MainContent" runat="server">
    <div runat="server">
    <%--<asp:Label runat="server" id="email"><%: Context.User.Identity.GetUserName()  %></asp:Label>--%>
        <asp:button runat="server" text="Ver as respostas aos meus pedidos" OnClick="Unnamed1_Click" />

          <asp:GridView  ID="orcamento"  AllowSorting="True" CssClass="table table-striped color-table" runat="server" AutoGenerateColumns="false" >
                             <Columns>
                                 <asp:TemplateField>
                                     <ItemTemplate>
                                         <asp:HiddenField ID="hdProd" runat="server" Value='<%#DataBinder.Eval(Container.DataItem,"ID_ORCAMENTO")  %>' />
                                     </ItemTemplate>
                                     
                                 </asp:TemplateField>
                             <asp:BoundField DataField="ID_ORCAMENTO" HeaderText="NUM" />
                            <asp:BoundField DataField="ID_PEDIDO" HeaderText="PEDIDO" />
                             <asp:BoundField DataField="ID_FORNECEDOR" HeaderText="FORNECEDOR" />
                            <asp:BoundField DataField="NOME" HeaderText="NOME" />
                            <asp:BoundField DataField="DATA_CRIACAO" HeaderText="DATA CRIACAO" />
                            <asp:BoundField DataField="PRECO_TOTAL" HeaderText="PRECO" />
                            
                        
                             </Columns>
                         </asp:GridView>

    </div>
    </asp:Content>

