<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="LuxCatering.Contact" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        function initialize() {
        var mapProp = {
        center:new google.maps.LatLng(40.1922037,-8.4122693),
        zoom:18,
        mapTypeId: google.maps.MapTypeId.SATELLITE
        };
         var map=new google.maps.Map(document.getElementById("googleMap"), mapProp);
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
    <h2><%: Title %>.</h2>
    <div id="googleMap" style="width:500px;height:380px;float:right; margin-right:30%"></div> 
    <h3>  </h3>
    <address>

        Biblioteca DEIS, Gabinete 5<br />
        Rua Pedro Nunes, 3030-199 Coimbra<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>
</asp:Content>
