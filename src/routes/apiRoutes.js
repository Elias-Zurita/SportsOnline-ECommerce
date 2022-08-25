const express= require ("express");
const router= express.Router();

const apiController= require ("../controllers/api/apiController.js")

// Formulario de listado de productos
router.get("/productos",apiController.listProducts);

// Formulario de listado de usuarios
router.get("/usuarios",apiController.listUsers);

module.exports = router;