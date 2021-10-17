const express = require('express');
const controller = require('../controllers/usersController');
const router = express.Router();

// Controller 
const usersController = require("../controllers/usersController");

// Middlewares
const uploadFile = require('../middlewares/multerMiddlewareUsers');
const validations = require('../middlewares/validateRegisterMiddleware');
const guestMiddleware = require('../middlewares/guestMiddleware');
const authMiddleware = require('../middlewares/authMiddleware');

// Formulario de registro 
router.get("/register", guestMiddleware, usersController.register);  // El guestMiddleware hace que si esta logueado el usuario no permite ver el register

// Procesa el registro de usuarios y sube la foto de perfil desde el name del input en el html de Register 
router.post("/register", uploadFile.single("avatar"), validations, usersController.processRegister);  

// Formulario de login   
router.get("/login", guestMiddleware, usersController.login);   // El guestMiddleware hace que si esta logueado el usuario no permite ver el login

// Procesa el Formulario de login  
router.post("/login", validations, usersController.loginProcess);   

//Perfil del usuario
router.get("/profile", authMiddleware, usersController.profile); // El authMiddleware hace que si nadie esta loguedo no permite ver el profile

//Logout del usuario
router.get("/logout", usersController.logout); // Cerrar sesion

// Formulario de listado de usuarios------------------------------------------------------------------------- 
router.get("/list", usersController.list);    

// Eliminacion de usuario (NO ESTA FUNCIONANDO)
router.delete("/delete/:id", usersController.destroy);

// Formulario de Perfil del usuario 


module.exports = router;