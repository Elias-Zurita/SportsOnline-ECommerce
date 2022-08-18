const express = require('express');
const router = express.Router();

// Controller //
const productCartController = require("../controllers/productCartController");

// Middlewares //
const authMiddleware = require('../middlewares/authMiddleware');

// Formulario de carrito de compras
router.get("/", productCartController.carrito);

// Procesa agregar un producto con el authMiddleware (solo si hay alguien logueado)
router.post("/add/:id", authMiddleware, productCartController.agregarProducto);

router.post("/order/add", authMiddleware ,productCartController.addOrder);

router.delete("/delete/:id" , productCartController.destroyItem);

module.exports = router;