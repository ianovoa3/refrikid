<%-- 
    Document   : historialclinico.jsp
    Created on : 14/11/2018, 07:39:13 AM
    Author     : a
--%>
<%-- 
    Document   : reporte
    Created on : 28-nov-2018, 16:37:33
    Author     : FAMILIA NOVOA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >

    <head>
        <meta charset="UTF-8">
        <title>Actualización de Datos</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="wrapper fadeInDown">
            <div id="formContent">
                <!-- Icon -->
                <div class="fadeIn first">
                  <img src="img/logo.png" id="icon" />
                </div>
                <!-- Tabs Titles -->
                <h2 class="active">Actualizacion del Beneficiario </h2><br><br>
                <!-- Login Form -->
                <form action="Usuario" method="POST" >
                    <input type="text" id="login" class="fadeIn second" name="identificacion" placeholder="Ingrese la identificación del beneficiario">
                    <input type="hidden" name="opcion" value="5">
                    <input type="submit" class="fadeIn fourth" value="Consultar">
                </form>
                <!-- Remind Passowrd -->
                <div id="formFooter">
                    <a class="underlineHover" href="usuario.jsp">Volver</a>
                </div>
            </div>
        </div>
    </body>
</html>

