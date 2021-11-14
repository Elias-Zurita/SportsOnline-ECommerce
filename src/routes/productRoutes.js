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
router.get("/list", productsController.list);


module.exports = router;