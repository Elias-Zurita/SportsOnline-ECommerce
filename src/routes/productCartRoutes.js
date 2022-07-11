const express = require('express');
const router = express.Router();

// Controller //
const productCartController = require("../controllers/productCartController");

// Middlewares //
const uploadFile = require('../middlewares/multerMiddlewareProducts');
const validations = require('../middlewares/validateMiddleware');
const adminMiddleware = require('../middlewares/adminMiddleware')

// Formulario de carrito de compras
router.get("/", productCartController.carrito);

module.exports = router;