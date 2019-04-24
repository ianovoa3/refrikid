function validate(){
    console.log(document.getElementById("fecha").value)
        if(document.getElementById("fecha").value == "" ){
            alert("Ingrese una fecha para buscar");
        }else if(document.getElementById("peso").value == "" ){
            alert("Ingrese un peso");
        }else if(document.getElementById("estatura").value == "" ){
            alert("Ingresela estatura");
        }else {
        document.getElementById("formSubmit").submit();
    }
}
document.getElementById("btnenviar").addEventListener("click", function(event){
  event.preventDefault()
});


