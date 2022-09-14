/*

const {validationResult} = require("express-validator"); // requiere la libreria instalada para las validaciones de datos
const db = require ("../db/models"); // nos permite utilizar la base de datos
const {Op} = require("sequelize");

const marcasController = {

    buscarMujer: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
        
            where: {
                genero_id: { [Op.like]: '2' }  // Busca en la base de datos los productos del genero Mujer (ID=2 (Mujer) en tabla de genero )
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },

    buscarHombre: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
        
            where: {
                genero_id: { [Op.like]: '1' }  // Busca en la base de datos los productos del genero Hombre (ID=1 (Hombre) en tabla de genero )
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },

    buscarAdidas: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
            
            where: {
                marca_id: { [Op.like]: '1' }
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    }
    
}

module.exports = marcasController;

*/