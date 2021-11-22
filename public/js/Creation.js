window.addEventListener("load", function() {
    let formulario = document.querySelector("form.reservation");

    let error = [];

    formulario.addEventListener("submit",function(e) {
        e.preventDefault(); 

        //Campo Nombre//

        let campoNombre = document.querySelector("input.nombre");

            if(campoNombre.value == " "){
                error.push("Este campo es obligatorio completar")

                } else if (campoNombre.value.length < 2) {
                    error.push("Debe de tener al menos 2 caracteres")
            }

        //Campo Descripción

        let campoDescripción = document.querySelector("input.email");

            if(campoDescripción.value == " "){
                error.push("Este campo es obligatorio completarlo")
            
                } else if (campoDescripción.value.length < 20) {
                    error.push("Deberá tener al menos 20 caracteres")}

        //Campo Imagen

        let campoImagen = document.querySelector("input.image")

            if(campoImagen == " ")
                error.push("Este campo deberá de contener un archivo JPG, JPEG, PNG, GIF")
                

        for (let i = 0; i < error.length; i++) {}
    });
})