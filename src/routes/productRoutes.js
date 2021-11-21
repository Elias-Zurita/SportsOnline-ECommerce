const express = require('express');
const router = express.Router();

// Controller //
const productsController = require("../controllers/productsController");

// Middlewares //
const uploadFile = require('../middlewares/multerMiddlewareProducts');
const validations = require('../middlewares/validateProductsMiddleware');

// Formulario de creacion de productos
router.get("/create", productsController.crear);

// Procesa la creacion de productos
router.post("/create", uploadFile.single("imagen"), validations, productsController.guardado);

// Formulario de listado de productos
router.get("/list", productsController.listado);

// Formulario de detalle de producto
router.get("/:id", productsController.detalle);

// Formulario de edicion de producto
router.get("/edit/:id", productsController.editar);

// Procesa la edicion de productos
router.post("/edit/:id", productsController.actualizar);

module.exports = router;