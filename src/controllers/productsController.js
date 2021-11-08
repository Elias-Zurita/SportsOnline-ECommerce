const {validationResult} = require("express-validator"); // requiere la libreria instalada para las validaciones de datos
const db = require ("../db/models");

const productsController = {
    create: function (req, res) {
        db.deporte.findAll()               // obtiene todos los deportes
        .then(function(deportes){      //despues que obtenga los deportes
            return res.render("products/create", {deportes:deportes});
        })
    }
}

module.exports = productsController;

