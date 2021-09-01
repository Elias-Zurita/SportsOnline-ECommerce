const express = require('express');
const router = express.Router();

const productsController = require("../controllers/productsController");

router.get("/productCart", productsController.productCart);
router.get("/details", productsController.details);
router.get("/creation", productsController.creation);

module.exports = router;