function validate(){
    console.log(document.getElementById("nombreProducto").value)
        if(document.getElementById("nombreProducto").value == ""){
            alert("Ingrese el nombre del producto");
        }else if(document.getElementById("categoria").value == "-- SELECCIONE --"){
            alert("Seleccione alguna categoria");
        }else if(document.getElementById("calorias").value == "" ){
            alert("Ingrese cantidad de calorias");
        }else if(document.getElementById("hidratos").value == "" ){
            alert("Ingrese cantidad de hidratos");
        }else if(document.getElementById("grasas").value == "" ){
            alert("Ingrese cantidad de grasas");
        }else if(document.getElementById("proteinas").value == "" ){
            alert("Ingrese cantidad de proteinas");
        }else{
            document.getElementById("formSubmit").submit(); 
        }
    }                               
document.getElementById("btnenviar").addEventListener("click", function(event){
  event.preventDefault()
});


