const path = require ('path')
const {check} = require('express-validator');
const bcrypt = require('bcryptjs');
const db = require('../db/models'); 

const validations = {
    register:[
        check ("nombre")
            .notEmpty() // valida el nombre ("NAME" en formulario de register) no este vacio //
            .withMessage("Tienes que escribir un nombre")
            .bail() 
            .isLength({min:2}) // valida el nombre ("NAME" en formulario de register) tenga mas de 2 caracteres //
            .withMessage("El nombre debe tener al menos 2 caracteres"), 
        check ("apellido")
            .notEmpty()  // valida que el apellido no este vacio //
            .withMessage("Tienes que escribir un apellido")
            .bail() 
            .isLength({min:2}) // valida que el apellido tenga mas de 2 caracteres //
            .withMessage("El apellido debe tener al menos 2 caracteres"), 
        check ("email")
            .notEmpty() // valida que el campo de email no este vacio //
            .withMessage("Tienes que escribir un email")
            .bail() 
            .isEmail()  // valida que sea un email //
            .withMessage("Debes escribir una direccion de correo electronico válida") 
            .custom(function(value){
            return db.Usuario.findOne({ // Busca dentro de los usuarios si hay alguno con el mismo mail registrado //
                where:{
                    email:value
                }
            }).then(user => {
                if(user){
                    return Promise.reject("Email ya registrado!")
                }
            })
        }),
        check ("contraseña")
            .notEmpty()
            .withMessage("Tienes que escribir una contraseña"),
        check('avatar')
            .custom((value, { req }) => { 
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
            .notEmpty()  // valida que el campo de email no este vacio //
            .withMessage("Tienes que escribir un email")
            .bail() 
            .isEmail() // valida que sea realmente un email y no cualquier texto //
            .withMessage("Debes escribir una direccion de correo electronico válida")
            .bail() 
            .custom(function(value, {req}){
            return db.Usuario.findOne({
               where:{
                   email: value
               }
            }).then(userToLogin => {
                   if(!userToLogin){
                       return Promise.reject("Usuario no encontrado") // Si el usuario no existe // 
                   }
                   if(!bcrypt.compareSync(req.body.contraseña, userToLogin.contraseña)){
                       return Promise.reject("Credenciales invalidas")  // Si esta mal la contraseña arroja ese msj //
                   }
               })
           }),
        check ("contraseña")
            .notEmpty() 
            .withMessage("Tienes que escribir una contraseña")
    ],
    
    productCreate: [
        check ("nombre")
            .notEmpty() 
            .withMessage("Tiene que escribir un nombre")
            .bail()
            .isLength({min:4}) 
            .withMessage("El nombre debe tener al menos 4 caracteres"), 
        check ("descripcion")
            .notEmpty()
            .withMessage("Tiene que escribir una descripcion")
            .bail()
            .isLength({min:10}) 
            .withMessage("La descripcion debe tener al menos 10 caracteres"), 
        check ("precio")
            .notEmpty()
            .withMessage("Tienes que escribir un precio"),
        check ("talle")
            .notEmpty()
            .withMessage("Tiene seleccionar un talle"),
        check('imagen')
            .custom((value, { req }) => { 
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

    productEdit: [  // Esto no esta funcionando. Ni la vista ni el controller estan configurados todavia
        check ("nombre")
            .notEmpty()
            .withMessage("Tiene que escribir un nombre")
            .bail()
            .isLength({min:5}) 
            .withMessage("El nombre debe tener al menos 5 caracteres"), 
        check ("precio")
            .notEmpty()
            .withMessage("Tienes que escribir un precio"),
        check ("descripcion")
            .notEmpty()
            .withMessage("Tiene que escribir una descripcion")
            .bail()
            .isLength({min:5}) 
            .withMessage("La descripcion debe tener al menos 5 caracteres")
    ]
}

module.exports = validations;