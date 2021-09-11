const express = require('express');
const router = express.Router();
const multer = require('multer'); // Es una libreria que se usa para poder subir archivos al sitio (como fotos de perfil)

const usersController = require("../controllers/usersController");

router.get("/login", usersController.login);
router.get("/register", usersController.register);
router.post("/register", usersController.createUser);
router.get("/list", usersController.list);    // al ingresar a "/list" va al "controller.list" //
router.delete("/delete/:id", usersController.destroy);

module.exports = router;