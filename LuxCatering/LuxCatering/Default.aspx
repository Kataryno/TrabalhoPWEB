<%@ Page Title="Lux Catering" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LuxCatering._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 style="text-align:center">Bem vindo à Lux Catering</h1>
        <p class="lead">&nbsp;</p>
    </div>

    <div class="row">
        <div class="col-md-4" >
            
                <h2 style="text-align:center">Vai dar uma festa?</h2>
                <p style="text-align: justify">Preocupe-se apenas com a diversão! Através do Lux Catering poderá encontrar o melhor parceiro para o seu evento. Mais de 20 fornecedores registados e certificados na área da restauração.Registe-se ou inicie a sessão para começar a pedir orçamentos para aquele momento especial!  </p> <br />
            <a class="btn btn-info btn-block" href="Account/Register.aspx" >Registar &raquo;</a>
            
        </div>
        <div class="col-md-4">
            <h2 style="text-align:center">Expandir o seu negócio?</h2>
            <p style="text-align: justify">
                Será um prazer contar consigo. Pode registar-se gratuitamente. A nossa plataforma irá ajudá-lo a encontrar clientes, aumentar as suas receitas e a expandir o seu negócio. 
            </p>
            <br /><br />
            <a class="btn btn-info btn-block" href="" >Saiba mais &raquo;</a>
           
        </div>
        <div class="col-md-4">
            <h2 style="text-align:center">Localização e Contactos</h2>
            <p style="text-align: justify">
                Sede:
                Biblioteca DEIS, Gabinete 5
                <br />
                Rua Pedro Nunes, 3030-199 Coimbra<br />
                239 123 456
                geral@luxcatering.pt
                &nbsp;
            </p>
            <br /><br /><br />
            <p>
                <a class="btn btn-info btn-block" href="Contact.aspx">Contactos &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
