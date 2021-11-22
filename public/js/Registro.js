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

        //Campo Apellido

        let campoApellido = document.querySelector("input.apellido");

            if(campoApellido.value == " "){
                error.push("Este campo es obligatorio completarlo")
                
                } else if (campoApellido.value.length < 2) {
                    error.push("Debe de tener al menos 2 caracteres")
            }

        //Campo Email

        let campoEmail = document.querySelector("input.email");

            if(campoEmail.value == " "){
                error.push("Este campo es obligatorio completarlo")
            
                } else if (campoEmail.value == "???") {
                    error.push("Deberá de ser un e-mail válido")}

        //Campo Contraseña

        let campoContraseña = document.querySelector("input.password")

            if(campoContraseña == " "){
                error.push("Este campo es obligatorio completarlo")
                } else if (campoContraseña.value.length < 8)
                    error.push("Deberá tener al menos 8 caracteres")

        //Campo Imagen

        let campoImagen = document.querySelector("input.image")

            if(campoImagen == " ")
                error.push("Este campo deberá de contener un archivo JPG, JPEG, PNG, GIF")
                

        for (let i = 0; i < error.length; i++) {}
    });
})