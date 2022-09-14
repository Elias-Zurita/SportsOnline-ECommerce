const express = require('express');
const router = express.Router();

const mainController = require("../controllers/mainController");

// Formulario del Home
router.get("/", mainController.index);

// Formulario de Quienes Somos
router.get("/nosotros", mainController.quienesSomos);

// Formulario de preguntas frecuentes
router.get("/preguntas", mainController.preguntasFrecuentes);

// Formulario de politicas de privacidad
router.get("/politicas", mainController.politicas);

// Formulario de sucursales
router.get("/sucursales", mainController.sucursales);

// Formulario de entregas y cambios
router.get("/envios", mainController.envios);

// Formulario de terminos y condiciones
router.get("/terminos", mainController.terminos);

// Formulario de trabaja con nosotros
router.get("/trabaja", mainController.trabaja);

module.exports = router;