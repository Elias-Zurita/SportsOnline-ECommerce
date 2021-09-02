const express = require('express');
const router = express.Router();

const productsController = require("../controllers/productsController");

router.get("/productCart", productsController.productCart);
router.get("/creation", productsController.creation);
router.get("/list", productsController.list);
router.get("/details/:id", productsController.details);
module.exports = router;