const express = require('express');
const router = express.Router();

// Controller //
const usersController = require("../controllers/usersController");

// Middlewares
const uploadFile = require('../middlewares/multerMiddlewareUsers');

const validations = require('../middlewares/validateRegisterMiddleware');

// Formulario de registro //
router.get("/register", usersController.register);  

// Procesa el registro de usuarios y sube la foto de perfil desde el name del input en el html de Register //
router.post("/register", uploadFile.single("avatar"), validations, usersController.processRegister);  

// Formulario de login  //
router.get("/login", usersController.login);   

// Procesa el Formulario de login  //
router.post("/login", validations, usersController.loginProcess);   

// Formulario de listado de usuarios //
/*
router.get("/list", usersController.list);    
*/

// Eliminacion de usuario //
router.delete("/delete/:id", usersController.destroy);

// Formulario de Perfil del usuario //


module.exports = router;