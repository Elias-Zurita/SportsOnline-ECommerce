const express = require('express');
const router = express.Router();

const productsController = require("../controllers/productsController");

// ----------------------------------codigo para subir un archivo -------------------------------------------//

const path = require ('path')
const multer = require('multer'); // Es una libreria que se usa para poder subir archivos al sitio (como fotos de productos)

const storage = multer.diskStorage({   // Lugar para guardar las imagenes que suban de los productos //
    destination: (req, file, cb) => {  
        cb (null, path.join(__dirname, "../../public/img/products"))
    }, 
    filename: (req, file, cb) => { // Propiedad que guarda el nombre de la imagen // 
        const newFilename = "imagen" + Date.now() + path.extname (file.originalname); // Esto es para que este sea el nuevo nombre del archivo, el cual va a ser "imagen y el horario en mili segundos (Datenow) con su extension gracias a extname" //
        cb (null, newFilename); 
    } 
}); 

const upload = multer ({storage}) // Ejecucion de multer (para subir archivos) //

// ----------------------------------codigo para subir un archivo -------------------------------------------//

router.get("/productCart", productsController.productCart);
router.get("/list", productsController.list);
router.get("/details/:id", productsController.details);
router.get("/create", productsController.create);
router.post("/create", upload.single("imagen"), productsController.store)
router.get("/edit/:id", productsController.edit); 
router.put("/edit/:id", productsController.update);
router.delete("/delete/:id", productsController.destroy);

module.exports = router;