const express = require('express');
const router = express.Router();
const multer = require('multer'); // Es una libreria que se usa para poder subir archivos al sitio (como fotos de productos)

const productsController = require("../controllers/productsController");

router.get("/productCart", productsController.productCart);
router.get("/list", productsController.list);
router.get("/details/:id", productsController.details);
router.get("/create", productsController.create);
router.post("/create", productsController.store)
router.get("/edit/:id", productsController.edit); 
router.put("/edit/:id", productsController.update);
router.delete("/delete/:id", productsController.destroy);

module.exports = router;