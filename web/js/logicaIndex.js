function validate(){
    console.log(document.getElementById("asunto").value)
        if(document.getElementById("asunto").value == "" ){
            alert("Ingrese el asunto");
        }
        else if(document.getElementById("mensaje").value == "" ){
            alert("Ingrese el mensaje");
        }
        else {
            document.getElementById("formSubmit").submit();
        }
    }

document.getElementById("btnenviar").addEventListener("click", function(event){
  event.preventDefault()
});
