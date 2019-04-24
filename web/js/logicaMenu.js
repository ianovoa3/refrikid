function validate(){
    console.log(document.getElementById("vegetal").value)
        if(document.getElementById("vegetal").value == "-- SELECCIONE --" && document.getElementById("legumbre").value == "-- SELECCIONE --" && document.getElementById("fruta").value == "-- SELECCIONE --" && document.getElementById("carne").value == "-- SELECCIONE --" && document.getElementById("lacteo").value == "-- SELECCIONE --" && document.getElementById("pescado").value == "-- SELECCIONE --" && document.getElementById("cereal").value == "-- SELECCIONE --" && document.getElementById("embutido").value == "-- SELECCIONE --" && document.getElementById("bebida").value == "-- SELECCIONE --" ){
            alert("Seleccione algun alimento");
        }else if(document.getElementById("horario").value == "-- SELECCIONE --"){
            alert("Seleccione el horario de la comida");
        }else{
            document.getElementById("formView").submit(); 
        }
    }                               

document.getElementById("btnvisualizar").addEventListener("click", function(event){
  event.preventDefault()
});


