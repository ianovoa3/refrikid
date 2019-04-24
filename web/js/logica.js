function validate(){
    console.log(document.getElementById("primernombre").value)
    if(document.getElementById("primernombre").value == "" ){
        alert("Ingrese su primer nombre");
    }
    else if(document.getElementById("primerapellido").value == "" ){
        alert("Ingrese su primer apellido");
    }
    else if(document.getElementById("segundoapellido").value == "" ){
        alert("Ingrese su segundo apellido");
    }
    else if(document.getElementById("documentoacu").value == "" ){
        alert("Ingrese su tipo de documento");
    }
    else if(document.getElementById("numerodocumento").value == "" ){
        alert("Ingrese su número de documento");
    }
    else if(document.getElementById("telefono").value == "" ){
        alert("Ingrese su número de teléfono");
    }
    else if(document.getElementById("direccion").value == "" ){
        alert("Ingrese su dirección");
    }
    else if(document.getElementById("nombreusuario").value == "" ){
        alert("Ingrese su correo");
    }
    else if(document.getElementById("correo").value == "" ){
        alert("Ingrese la confimación del correo");
    }
    else if(document.getElementById("clave1").value == "" ){
        alert("Ingrese su contraseña");
    }
    else if(document.getElementById("clave2").value == "" ){
        alert("Ingrese la confirmación de contraseña");
    }
    else if(document.getElementById("primernombrebeneficiario").value == "" ){
        alert("Ingrese el primer nombre del beneficiario");
    }
    else if(document.getElementById("primerapellidobeneficiario").value == "" ){
        alert("Ingrese el primer apellido del beneficiario");
    }
    else if(document.getElementById("segundoapellidobeneficiario").value == "" ){
        alert("Ingrese el segundo apellido del beneficiario");
    }
    else if(document.getElementById("documentoben").value == "" ){
        alert("Ingrese el tipo de documento del beneficiario");
    }
    else if(document.getElementById("numerodocumentoben").value == "" ){
        alert("Ingrese el número de documento del beneficiario");
    }
    else if(document.getElementById("generobene").value == "" ){
        alert("Ingrese el género del beneficiario");
    }
    else if(document.getElementById("fechanacimiento").value == "" ){
        alert("Ingrese la fecha de nacimiento del beneficiario");
    }
    else if(document.getElementById("rh").value == "" ){
        alert("Ingrese el RH del beneficiario");
    }
    else {
        document.getElementById("formSubmit").submit();
    }
}

document.getElementById("btnenviar").addEventListener("click", function(event){
  event.preventDefault()
});