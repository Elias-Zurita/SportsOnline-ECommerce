const path = require ('path')
const { body } = require('express-validator');

 module.exports =[
    body ("nombre").notEmpty().withMessage("Obligatorio y Deberá tener al menos 5 caracteres"), // valida el nombre ("NAME" en formulario de register) no este vacio //
    body ("descripcion").notEmpty().withMessage("Deberá tener al menos 20 caracteres"),
    body ("categoria").notEmpty().withMessage("Tienes que escribir una categoria de producto"),
    body ("marca").notEmpty().withMessage("Tienes que escribir una marca de producto"),
    body ("precio").notEmpty().withMessage("Tienes que escribir un precio"),
	body ("genero").notEmpty().withMessage("Tienes que escribir un genero"),
	body ("talle").notEmpty().withMessage("Tienes que escribir un talle"),
	body ("deporte").notEmpty().withMessage("Tienes que escribir un deporte"),
    body('imagen').custom((value, { req }) => { 
		let file = req.file;
		let acceptedExtensions = ['.jpg', '.png', '.gif']; // Tipos de archivos que se podran subir //
		
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
]