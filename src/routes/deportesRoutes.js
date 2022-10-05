const express = require('express');
const router = express.Router();

// Controller //
const deportesController = require("../controllers/deportesController");

// Listados por deportes
router.get("/futbol", deportesController.buscarFutbol);
router.get("/tenis", deportesController.buscarTenis);
router.get("/paddle", deportesController.buscarPaddle);
router.get("/running", deportesController.buscarRunning);
router.get("/hockey", deportesController.buscarHockey);
router.get("/training", deportesController.buscarTraining);
router.get("/voley", deportesController.buscarVoley);

module.exports = router;