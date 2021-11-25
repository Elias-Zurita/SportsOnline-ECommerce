const express = require('express');
const router = express.Router();

const mainController = require("../controllers/mainController");

// Formulario de Quienes Somos
router.get("/nosotros", mainController.quienesSomos);

// Formulario de preguntas frecuentes
router.get("/preguntas", mainController.preguntasFrecuentes);

// Formulario de politicas de privacidad
router.get("/politicas", mainController.politicas);

// Formulario de sucursales
router.get("/sucursales", mainController.sucursales);

router.get("/", mainController.index);

module.exports = router;