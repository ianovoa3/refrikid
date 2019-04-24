<%-- 
    Document   : index
    Created on : 15-nov-2018, 18:19:42
    Author     : FAMILIA NOVOA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Registrate</title>
        <link rel="stylesheet" href="css/styleRegistro.css">
        <link rel="shortcut icon" href="img/favicon.png"/>
    </head>

    <body>
        <div class="wrapper1 fadeInDown">
            <div id="formulario">
                <img src="img/logo.png"><br>
                <h2 class="inactive underlineHover"><a href="ingresar.jsp">Iniciar Sesión</a></h2>
                <h2 class="active">Registrar</h2>
                <form method="post" action="Usuario" id="formSubmit">
                    <h3 class="titulo">Registrar Acudiente</h3><br>
                    <input type="text" id="primernombre" class="fadeIn second " name="primernombre" placeholder="Ingrese su primer nombre *" >
                    <input type="text" id="segundonombre" class="fadeIn second " name="segundonombre" placeholder="Ingrese su segundo nombre">
                    <input type="text" id="primerapellido" class="fadeIn second " name="primerapellido" placeholder="Ingrese su primer apellido *" >
                    <input type="text" id="segundoapellido" class="fadeIn second " name="segundoapellido" placeholder="Ingrese su segundo apellido *">  
                    <select name="documentoacu" id="documentoacu" class="fadeIn second " >
                        <option id="default">:: Tipo de Documento :: *</option>
                        <option>Cédula de Ciudadania</option> 
                        <option>Pasaporte</option>
                        <option>NIT</option>
                    </select>
                    <input type="text" id="numerodocumento" class="fadeIn second " name="numerodocumento" placeholder="Ingrese su número de documento *" >
                    <input type="number" id="telefono" class="fadeIn second "  name="telefono" placeholder="Ingrese su número de teléfono *" >
                    <input type="text" id="direccion" class="fadeIn second " name="direccion" placeholder="Ingrese su dirección *" >                        
                    <input type="email" id="nombreusuario" class="fadeIn second " name="nombreusuario" placeholder="Ingrese su correo *" >
                    <input type="email" id="correo" class="fadeIn second "  name="correo" placeholder="Ingrese la confirmación del correo *" > 
                    <input type="password" id="clave1" class="fadeIn third " name="clave1" placeholder="Ingrese su contraseña *" >
                    <input type="password" id="clave2" class="fadeIn third " name="clave2" placeholder="Ingrese la confirmación de la contraseña *" >
                <br>
                    <h3 class="titulo">Registrar Beneficiario</h3><br>
                    <input type="text" id="primernombrebeneficiario" class="fadeIn second " name="primernombrebeneficiario" placeholder="Ingrese el primer nombre *" >
                    <input type="text" id="segundonombrebeneficiario" class="fadeIn second " name="segundonombrebeneficiario" placeholder="Ingrese el segundo nombre ">
                    <input type="text" id="primerapellidobeneficiario" class="fadeIn second " name="primerapellidobeneficiario" placeholder="Ingrese el primer apellido *" >
                    <input type="text" id="segundoapellidobeneficiario" class="fadeIn second " name="segundoapellidobeneficiario" placeholder="Ingrese el segundo apellido *" >
                    <select name="documentoben" id="documentoben" class="fadeIn second ">
                        <option id="default">:: Tipo de Documento :: *</option>
                        <option>Registro Civil</option> 
                        <option>Tarjeta de Identidad</option>
                    </select>
                    <input type="number" id="numerodocumentoben" class="fadeIn second " name="numerodocumentoben" placeholder="Ingrese el número de documento *" >
                    <select name="genero" id="generobene" class="fadeIn second " >
                        <option>:: Género :: *</option>
                        <option>Masculino</option>
                        <option>Femenino</option>
                    </select>
                    <input type="date" id="fechanacimiento" class="fadeIn second " name="fechanacimiento" >
                    <select name="rh" id="rh">
                        <option>:: RH :: *</option>
                        <option>A+</option>
                        <option>A-</option>
                        <option>B+</option>
                        <option>B-</option>
                        <option>AB+</option>
                        <option>AB-</option>
                        <option>O+</option>
                        <option>O-</option>
                    </select>
                <br>
                    <input type="reset" class="fadeIn fourth" value="Restablecer">
                    <input type="hidden" name="opcion" value="1">
                    <input type="button" id="btnenviar" class="fadeIn fourth" onclick="validate()" value="Registrar">
                </form>
            </div>
        </div>
        <script src="js/logica.js" type="text/javascript"></script>
    </body> 
</html>
