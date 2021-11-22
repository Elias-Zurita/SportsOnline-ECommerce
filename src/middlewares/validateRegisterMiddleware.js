const path = require ('path')
const validator = require ('validator')
const { body } = require('express-validator');

module.exports =[
    body ("nombre").notEmpty().withMessage("Es obligatorio completar este campo y debe de tener al menos 2 caracteristicas"), // valida el nombre ("NAME" en formulario de register) no este vacio //
    body ("apellido").notEmpty().withMessage("Es obligatorio completar este campo y debe de tener al menos 2 caracteristicas"),
    body ("domicilio").notEmpty().withMessage("Tienes que escribir un domicilio"),
    body ("email")
    .notEmpty().withMessage("Este campo es obligatorio completarlo, debe de ser un e-mail valido y no puede repetirse los e-mails ya registrados").bail() // valida que el campo de email no este vacio //
    .isEmail().withMessage("Debes escribir una direccion de correo electronico válida"), // valida que sea realmente un email y no cualquier texto //
<<<<<<< HEAD
    body ("perfil").notEmpty().withMessage("Tienes que seleccionar un perfil"),
    body ("contraseña").notEmpty().withMessage("Tienes que escribir una contraseña"),
=======
    body ("categoria").notEmpty().withMessage("Tienes que escribir una categoria"),
    body ("contraseña").notEmpty().withMessage("Obligatorio completar este campo, Debe de tener al menos 8 caracteres"),
>>>>>>> cba9ba4ab6ca874c16e7f83a83fc84749386f2b5
     body('avatar').custom((value, { req }) => { 
		let file = req.file;
		let acceptedExtensions = ['.jpg', '.png', '.gif']; // Tipos de archivos que se podran subir //
		
		if (!file) {
			throw new Error("Deberá ser un archivo valido (JPG, JPEG, PNG, GIF)"); // Si no tengo un archivo envio ese msj //
		} else {
			let fileExtension = path.extname(file.originalname);
			if (!acceptedExtensions.includes(fileExtension)) { //Valida el tipo de archivo //
				throw new Error(`Las extensiones de archivo permitidas son ${acceptedExtensions.join(', ')}`);
			}
		}

		return true; 
	})
]