const db = require ("../db/models"); // nos permite utilizar la base de datos
const {Op} = require("sequelize");

const deportesController = {
    buscarFutbol: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
            
            where: {
                deporte_id: { [Op.like]: '1' }
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },

    buscarTenis: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
            
            where: {
                deporte_id: { [Op.like]: '2' }
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },

    buscarPaddle: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
            
            where: {
                deporte_id: { [Op.like]: '3' }
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },

    buscarRunning: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
            
            where: {
                deporte_id: { [Op.like]: '4' }
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },

    buscarHockey: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
            
            where: {
                deporte_id: { [Op.like]: '5' }
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },

    buscarTraining: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
            
            where: {
                deporte_id: { [Op.like]: '6' }
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },

    buscarVoley: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
            
            where: {
                deporte_id: { [Op.like]: '7' }
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },
}

module.exports = deportesController;