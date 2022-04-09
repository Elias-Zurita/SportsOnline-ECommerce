const path = require ('path')
const {check} = require('express-validator');
const bcrypt = require('bcryptjs');
const db = require('../db/models'); 

const validations = {
    register:[
        check ("nombre").notEmpty().withMessage("Tienes que escribir un nombre"), // valida el nombre ("NAME" en formulario de register) no este vacio //
        check ("apellido").notEmpty().withMessage("Tienes que escribir un apellido"),
        check ("email")
        .notEmpty().withMessage("Tienes que escribir un email").bail() // valida que el campo de email no este vacio //
        .isEmail().withMessage("Debes escribir una direccion de correo electronico válida"), // valida que sea realmente un email y no cualquier texto //
        check ("perfil").notEmpty().withMessage("Tienes que seleccionar un perfil"),
        check ("contraseña").notEmpty().withMessage("Tienes que escribir una contraseña"),
        check('avatar').custom((value, { req }) => { 
            let file = req.file;
            let acceptedExtensions = ['.jpg', '.png', '.gif', 'jpeg']; // Tipos de archivos que se podran subir //
            
            if (!file) {
                throw new Error("Debe de ser un archivo valido (JPG, JPEG, PNG, GIF)"); // Si no tengo un archivo envio ese msj //
            } else {
                let fileExtension = path.extname(file.originalname);
                if (!acceptedExtensions.includes(fileExtension)) { //Valida el tipo de archivo //
                    throw new Error(`Las extensiones de archivo permitidas son ${acceptedExtensions.join(', ')}`);
                }
            }

            return true; 
        })
    ],
    
    login:[
        check ("email")
        .notEmpty().withMessage("Tienes que escribir un email").bail() // valida que el campo de email no este vacio //
        .isEmail().withMessage("Debes escribir una direccion de correo electronico válida"), // valida que sea realmente un email y no cualquier texto //
       check ('contraseña').notEmpty().withMessage("Tienes que escribir una contraseña"),
       // FALTA LA VALIDACION DE LA CONTRASEÑA!!! //
       


        /*
        if (userToLogin){
                let isOkThePassword = bcryptjs.compareSync(req.body.contraseña, userToLogin.contraseña) // Declara como "isOkThePassword" cuando la contraseña ingresada es la misma cargada en la base de datos (la compara con el brycrpt.compareSync por que esta encriptada)
                console.log(isOkThePassword)
                if (isOkThePassword){
                    delete userToLogin.contraseña; // elimina la contraseña de lo que se visualiza en la consola o en inspeccionar  
                    req.session.userLogged = userToLogin
                        
                    if (req.body.recordarUsuario) {  // Si se tildo el boton de recordarme (su name en el ejs es recordarUsuario)
                        res.cookie("recordarUsuario", req.body.email, {maxAge: 1000 * 60 * 60} )    // la cookie va a dejar logueado al usuario por 2 minutos (1000 milisegundos x 2) por mas que cierre el navegador
                    }
                        console.log("hola")
                    return res.redirect ("/") // Accion que hace cuando la contraseña es correcta
                }
            }
            */
    ],
    

    productCreate: [
        check ("nombre").notEmpty().withMessage("Obligatorio y Deberá tener al menos 5 caracteres"), // valida el nombre ("NAME" en formulario de register) no este vacio //
        check ("descripcion").notEmpty().withMessage("Deberá tener al menos 20 caracteres"),
        check ("categoria").notEmpty().withMessage("Tienes que escribir una categoria de producto"),
        check ("marca").notEmpty().withMessage("Tienes que escribir una marca de producto"),
        check ("precio").notEmpty().withMessage("Tienes que escribir un precio"),
        check ("genero").notEmpty().withMessage("Tienes que escribir un genero"),
        check ("talle").notEmpty().withMessage("Tienes que escribir un talle"),
        check ("deporte").notEmpty().withMessage("Tienes que escribir un deporte"),
        check('imagen').custom((value, { req }) => { 
            let file = req.file;
            let acceptedExtensions = ['.jpg', '.png', '.gif', '.jpeg']; // Tipos de archivos que se podran subir //
            
            if (!file) {
                throw new Error("Debe de ser un archivo valido (JPG, JPEG, PNG, GIF)"); // Si no tengo un archivo envio ese msj //
            } else {
                let fileExtension = path.extname(file.originalname);
                if (!acceptedExtensions.includes(fileExtension)) { //Valida el tipo de archivo //
                    throw new Error(`Las extensiones de archivo permitidas son ${acceptedExtensions.join(', ')}`);
                }
            }

            return true; 
        })
    ],

    productEdit: [
        check ("nombre").notEmpty().withMessage("Obligatorio y Deberá tener al menos 5 caracteres"), // valida el nombre ("NAME" en formulario de register) no este vacio //
        check ("descripcion").notEmpty().withMessage("Deberá tener al menos 20 caracteres"),
        check ("categoria").notEmpty().withMessage("Tienes que escribir una categoria de producto"),
        check ("marca").notEmpty().withMessage("Tienes que escribir una marca de producto"),
        check ("precio").notEmpty().withMessage("Tienes que escribir un precio"),
        check ("genero").notEmpty().withMessage("Tienes que escribir un genero"),
        check ("talle").notEmpty().withMessage("Tienes que escribir un talle"),
        check ("deporte").notEmpty().withMessage("Tienes que escribir un deporte")
    ]

}

module.exports = validations;