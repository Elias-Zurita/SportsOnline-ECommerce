const express = require('express');
const router = express.Router();

// Controller //
const productsController = require("../controllers/productsController");

// Middlewares //
const uploadFile = require('../middlewares/multerMiddlewareProducts');
const validations = require('../middlewares/validateProductsMiddleware');

// Formulario de creacion de productos
router.get("/create", productsController.create);

module.exports = router;