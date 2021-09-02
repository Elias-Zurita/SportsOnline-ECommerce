const express = require('express');
const router = express.Router();

const usersController = require("../controllers/usersController");

router.get("/login", usersController.login);
router.get("/register", usersController.register);
router.get("/list", usersController.list);    // al ingresar a "/list" va al "controller.list" //

module.exports = router;