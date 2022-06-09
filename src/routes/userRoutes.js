const express = require('express');
const controller = require('../controllers/usersController');
const router = express.Router();

// Controller 
const usersController = require("../controllers/usersController");

// Middlewares
const uploadFile = require('../middlewares/multerMiddlewareUsers');
const validations = require('../middlewares/validateMiddleware');
const guestMiddleware = require('../middlewares/guestMiddleware');
const authMiddleware = require('../middlewares/authMiddleware');

// Formulario de registro - El guestMiddleware hace que si esta logueado el usuario no permite ver el register
router.get("/register", guestMiddleware, usersController.register);  

// Procesa el registro de usuarios y sube la foto de perfil desde el name del input en el html de Register 
router.post("/register", uploadFile.single("avatar"), validations.register, usersController.processRegister);  

// Formulario de login - El guestMiddleware hace que si esta logueado el usuario no permite ver el login
router.get("/login", guestMiddleware, usersController.login);   

// Procesa el Formulario de login  
router.post("/login", validations.login, usersController.loginProcess);   

//Perfil del usuario - El authMiddleware hace que si nadie esta loguedo no permite ver el profile
router.get("/profile", authMiddleware, usersController.profile); 

//Logout del usuario
router.get("/logout", usersController.logout); 

// Formulario de listado de usuarios
router.get("/list",usersController.list);    

// Eliminacion de usuario 
router.delete("/delete/:id", usersController.destroy);

module.exports = router;