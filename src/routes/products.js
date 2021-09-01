const express = require('express');
const router = express.Router();

const productsController = require("../controllers/productsController");

router.get("/details", productsController.details);
router.get("/productCart", productsController.productCart);

module.exports = router;