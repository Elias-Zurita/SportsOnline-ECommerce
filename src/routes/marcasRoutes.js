const express = require('express');
const router = express.Router();

// Controller //
const marcasController = require("../controllers/marcasController");

// Listados por genero 
router.get("/mujer", marcasController.buscarMujer);
router.get("/indumentaria/mujer", marcasController.buscarIndumentariaMujer);
router.get("/calzado/mujer", marcasController.buscarCalzadoMujer);
router.get("/hombre", marcasController.buscarHombre);
router.get("/indumentaria/hombre", marcasController.buscarIndumentariaHombre);
router.get("/calzado/hombre", marcasController.buscarCalzadoHombre);

// Listados por marcas
router.get("/adidas", marcasController.buscarAdidas);
router.get("/nike", marcasController.buscarNike);
router.get("/puma", marcasController.buscarPuma);
router.get("/babolat", marcasController.buscarBabolat);
router.get("/prince", marcasController.buscarPrince);
router.get("/fila", marcasController.buscarFila);
router.get("/vairo", marcasController.buscarVairo);
router.get("/wilson", marcasController.buscarWilson);
router.get("/umbro", marcasController.buscarUmbro);
router.get("/topper", marcasController.buscarTopper);
router.get("/head", marcasController.buscarHead);
router.get("/nassau", marcasController.buscarNassau);

module.exports = router;