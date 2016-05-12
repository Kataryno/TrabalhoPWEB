<%@ Page Title="Lux Catering" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LuxCatering._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Bem vindo à Lux Catering</h1>
        <p class="lead">&nbsp;</p>
    </div>

    <div class="row">
        <div class="col-md-4" style="background:white;" >
            
                <h2>Vai dar uma festa?</h2>
                <p style="text-align: justify">Preocupe-se apenas com a diversão! Através do Lux Catering poderá encontrar o melhor parceiro para o seu evento. Mais de 20 fornecedores registados e certificados na área da restauração.Registe-se ou inicie a sessão para começar a pedir orçamentos para aquele momento especial!  </p>
            
        </div>
        <div class="col-md-4" style="background:white;">
            <h2>Expandir o seu negócio?</h2>
            <p style="text-align: justify">
                Será um prazer contar consigo. Pode registar-se gratuitamente. A nossa plataforma irá ajudá-lo a encontrar clientes, aumentar as suas receitas e a expandir o seu negócio. 
            </p>

            <a class="btn btn-default" href="~/Account/Register.aspx">Registar &raquo;</a>
            </p>
        </div>
        <div class="col-md-4 style="background:white;">
            <h2>Localização e Contactos</h2>
            <p style="text-align: justify">
                Sede:
                Biblioteca DEIS, Gabinete 5
                <br />
                Rua Pedro Nunes, 3030-199 Coimbra<br />
                239 123 456
                geral@luxcatering.pt
                &nbsp;
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
