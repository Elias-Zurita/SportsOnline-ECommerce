const express = require('express');
const router = express.Router();
const {body} = require ("express-validator")
const authMiddleware = require('../middlewares/authMiddleware.js');

// ----------------------------------codigo para subir un archivo -------------------------------------------//

const path = require ('path')
const multer = require('multer'); // Es una libreria que se usa para poder subir archivos al sitio (como fotos de perfil)

const storage = multer.diskStorage({   // Lugar para guardar las imagenes que suban los usuarios //
    destination: (req, file, cb) => {  
        cb (null, path.join(__dirname, "../../public/img/fotosDePerfil"))
    }, 
    filename: (req, file, cb) => { // Propiedad que guarda el nombre de la imagen // 
        const newFilename = "foto" + Date.now() + path.extname (file.originalname); // Esto es para que este sea el nuevo nombre del archivo, el cual va a ser "foto y el horario en mili segundos (Datenow) con su extension gracias a extname" //
        cb (null, newFilename); 
    } 
}); 

const upload = multer ({storage}) // Ejecucion de multer (para subir archivos) //

// ----------------------------------codigo para subir un archivo que deberia ir como middleware -------------------------------------//

const usersController = require("../controllers/usersController");

const validations =[
    body ("nombre").notEmpty().withMessage("Tienes que escribir un nombre"), // valida el nombre ("NAME" en formulario de register) no este vacio //
    body ("apellido").notEmpty().withMessage("Tienes que escribir un apellido"),
    body ("domicilio").notEmpty().withMessage("Tienes que escribir un domicilio"),
    body ("email")
    .notEmpty().withMessage("Tienes que escribir un email").bail() // valida que el campo de email no este vacio //
    .isEmail().withMessage("Debes escribir una direccion de correo electronico válida"), // valida que sea realmente un email y no cualquier texto //
    body ("categoria").notEmpty().withMessage("Tienes que escribir una categoria"),
    body ("contraseña").notEmpty().withMessage("Tienes que escribir una contraseña"),
     body('fotoperfil').custom((value, { req }) => { 
		let file = req.file;
		let acceptedExtensions = ['.jpg', '.png', '.gif']; // Tipos de archivos que se podran subir //
		
		if (!file) {
			throw new Error("Debes subir una imagen de perfil"); // Si no tengo un archivo envio ese msj //
		} else {
			let fileExtension = path.extname(file.originalname);
			if (!acceptedExtensions.includes(fileExtension)) { //Valida el tipo de archivo //
				throw new Error(`Las extensiones de archivo permitidas son ${acceptedExtensions.join(', ')}`);
			}
		}

		return true; 
	})
]

router.get("/login", usersController.login);   // Formulario de registro  //

router.post("/login", usersController.loginProcess); // Procesa el formulario de login //

router.get("/register", usersController.register);  // Procesa el formulario de registro //

router.post("/register", upload.single("fotoperfil"), validations, usersController.createUser);  // Procesa el registro de usuarios y sube la foto de perfil desde el name del input en el html de Register //

router.get("/list", usersController.list);    // al ingresar a "/list" va al "controller.list" //

router.delete("/delete/:id", usersController.destroy);

router.get("/profile/:id",authMiddleware, usersController.profile) // Procesa el formulario de vista del perfil //

module.exports = router;