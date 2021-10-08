const express = require('express');
const router = express.Router();

// Controller //
const productsController = require("../controllers/productsController");

// Middlewares //
const uploadFile = require('../middlewares/multerMiddlewareProducts');
const validations = require('../middlewares/validateProductsMiddleware');

// Formulario de carrito de compras //
router.get("/productCart", productsController.productCart);

// Formulario de listado de productos //
router.get("/list", productsController.list);

// Formulario de detalle de producto //
router.get("/details/:id", productsController.details);

// Formulario de creacion de producto //
router.get("/create", productsController.create);

// Procesa la creacion de producto //
router.post("/create", uploadFile.single("imagen"), validations, productsController.store)

// Formulario de edicion de producto //
router.get("/edit/:id", productsController.edit); 

// Procesa la actualizacion del producto //
router.put("/edit/:id", productsController.update);

// Elimina el producto //
router.delete("/delete/:id", productsController.destroy);

module.exports = router;