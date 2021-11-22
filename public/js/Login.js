window.addEventListener("load", function() {
    let formulario = document.querySelector("form.reservation");

    let error = [];

    formulario.addEventListener("submit",function(e) {
        e.preventDefault(); 
        
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
            }

    });
})