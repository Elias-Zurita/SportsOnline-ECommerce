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
const adminMiddleware = require('../middlewares/adminMiddleware')

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

// Formulario de listado de usuarios solo lo puede ver un administrador
router.get("/list",adminMiddleware, usersController.list);    

// Formulario de edicion del perfil del usuario
router.get("/edit/:id", authMiddleware, usersController.edit);

// Procesa la edicion del perfil del usuario
router.post("/edit/:id", authMiddleware, usersController.actualizar);

// Eliminacion de usuario solo la puede realizar un administrador
router.delete("/delete/:id",adminMiddleware, usersController.destroy);

module.exports = router;