<%@Page Title="Cliente"  Language="C#"   AutoEventWireup="true" CodeBehind="ClientesForm.aspx.cs" Inherits="LuxCatering.ClientesForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href ="Content/Site.css" />
    <title></title>
<script >

    function show() {
   
            document.getElementById('pratos').style.display = 'block';
            document.getElementById('bebidas').style.display = 'block';
            document.getElementById('aperitivos').style.display = 'block';
            document.getElementById('sobremesa').style.display = 'block';
        
    }
    function hide(){
        
            document.getElementById('pratos').style.display = 'none';
            document.getElementById('bebidas').style.display = 'none';
            document.getElementById('aperitivos').style.display = 'none';
            document.getElementById('sobremesa').style.display = 'none';
        
    }

</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="jumbotron">
        <h1>&nbsp;</h1>
        <h1 onclick="show()">LuxCatering - Pedido Novo</h1>
        <p class="lead">&nbsp;</p>
        <div class="col-md-4">
      
        </div>
    </div>
        </div>
        <h2 onclick="hide()" >Categorias</h2>
        <div id="pratos"  class ="col-md-4" >
             <h3>Pratos</h3>
            <h4>Pratos de Carne</h4>
            <h4>Pratos de Peixe</h4>
            <h4>Pratos de Marisco</h4>

        </div>
         <div id="bebidas"  class ="col-md-4">
            <h3>Bebidas</h3>
             <h4>Vinhos maduros</h4>
             <h5>Vinhos maduros branco</h5>
             <h5>Vinhos maduros tinto</h5>
            <h4>Vinhos verdes</h4>
             <h5>Vinhos verdes branco</h5>
             <h5>Vinhos verdes tinto</h5>
           

        </div>
        <div id="aperitivos"  class ="col-md-4">
             <h3>Aperitivos</h3>
        </div>
        <div id="sobremesa"  class ="col-md-4">
             <h3>Sobremesa</h3>
        </div>
    </form>
</body>
</html>
