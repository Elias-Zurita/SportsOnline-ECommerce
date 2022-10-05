const express = require('express');
const router = express.Router();

// Controller //
const productsController = require("../controllers/productsController");

// Middlewares //
const uploadFile = require('../middlewares/multerMiddlewareProducts');
const validations = require('../middlewares/validateMiddleware');
const adminMiddleware = require('../middlewares/adminMiddleware')

// Formulario de creacion de productos
router.get("/create", adminMiddleware, productsController.crear);

// Procesa la creacion de productos
router.post("/create", uploadFile.single("imagen"), validations.productCreate, productsController.guardado);

// Formulario de listado de productos
router.get("/list", productsController.listado);

// Formulario de listado de productos buscados
router.get("/list/search", productsController.buscar);

// Formulario de edicion de producto
router.get("/edit/:id", adminMiddleware, productsController.editar);

// Procesa la edicion del producto
router.post("/edit/:id", adminMiddleware, validations.productEdit, productsController.actualizar);

// Procesa la eliminacion del producto
router.post("/delete/:id", adminMiddleware, productsController.eliminar);

// Formulario de detalle de producto
router.get("/detail/:id", productsController.detalle);

module.exports = router;