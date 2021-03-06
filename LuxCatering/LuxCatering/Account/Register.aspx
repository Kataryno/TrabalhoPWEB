﻿<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LuxCatering.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <div id="frameregisto">
        <h1>Registo</h1>
        <p class="text-danger">
            <asp:literal runat="server" id="ErrorMessage" />
        </p>
              
            <h4>Criar nova conta</h4>
            <hr />
            <div class="form-group">
            <asp:label runat="server" cssclass="col-md-2 control-label" Font-Bold="true" text="Nome"></asp:label>
            <asp:textbox runat="server" id="nome" cssclass="form-control" />
            <br />
            <asp:label runat="server" cssclass="col-md-2 control-label" Font-Bold="true" text="NIF"></asp:label>
            <asp:textbox runat="server" id="nif" cssclass="form-control" />
            <br />
            <asp:label runat="server" cssclass="col-md-2 control-label" Font-Bold="true" text="Morada"></asp:label>
            <asp:textbox runat="server" id="morada" cssclass="form-control" />
            <br />
            <asp:label runat="server" cssclass="col-md-2 control-label" Font-Bold="true" text="Telefone"></asp:label>
            <asp:textbox runat="server" id="telefone" cssclass="form-control" />
            <br />
            <asp:label runat="server" cssclass="col-md-2 control-label" Font-Bold="true" text="Telemóvel"></asp:label>
            <asp:textbox runat="server" id="telemovel" cssclass="form-control" />
            <br />


            <asp:validationsummary runat="server" cssclass="text-danger" />
            
                <asp:label runat="server" associatedcontrolid="Email" cssclass="col-md-2 control-label">Email</asp:label>
                <div class="col-md-10">
                    <asp:textbox runat="server" id="Email" cssclass="form-control" textmode="Email" />
                    <asp:requiredfieldvalidator runat="server" controltovalidate="Email"
                        cssclass="text-danger" errormessage="The email field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:label runat="server" associatedcontrolid="Password" cssclass="col-md-2 control-label">Password</asp:label>
                <div class="col-md-10">
                    <asp:textbox runat="server" id="Password" textmode="Password" cssclass="form-control" />
                    <asp:requiredfieldvalidator runat="server" controltovalidate="Password"
                        cssclass="text-danger" errormessage="The password field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:label runat="server" associatedcontrolid="ConfirmPassword" cssclass="col-md-2 control-label">Confirmar password</asp:label>
                <div class="col-md-10">
                    <asp:textbox runat="server" id="ConfirmPassword" textmode="Password" cssclass="form-control" />
                    <asp:requiredfieldvalidator runat="server" controltovalidate="ConfirmPassword"
                        cssclass="text-danger" display="Dynamic" errormessage="The confirm password field is required." />
                    <asp:comparevalidator runat="server" controltocompare="Password" controltovalidate="ConfirmPassword"
                        cssclass="text-danger" display="Dynamic" errormessage="The password and confirmation password do not match." />
                    <asp:radiobuttonlist id="rblPerfil" runat="server" repeatdirection="Horizontal" repeatlayout="Table" textalign="Right">
                  <asp:ListItem Text="Cliente" Selected="True" />
                  <asp:ListItem Text="Fornecedor" />
                </asp:radiobuttonlist>
                </div>
            </div>
            <div id="userlog" runat="server">
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:button runat="server" onclick="CreateUser_Click" text="Registar" cssclass="btn btn-default" />
                </div>
            </div>
        </div>
    
</asp:Content>
