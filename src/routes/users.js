const express = require('express');
const router = express.Router();

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

// ----------------------------------codigo para subir un archivo -------------------------------------------//

const usersController = require("../controllers/usersController");

router.get("/login", usersController.login);
router.get("/register", usersController.register);
router.post("/register", upload.single("foto-perfil"), usersController.createUser); // Procesa el registro de usuarios y sube la foto de perfil desde el name del input en el html de Register //
router.get("/list", usersController.list);    // al ingresar a "/list" va al "controller.list" //
router.delete("/delete/:id", usersController.destroy);

module.exports = router;