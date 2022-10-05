const db = require ("../db/models"); // nos permite utilizar la base de datos
const {Op} = require("sequelize");

const marcasController = {

    buscarMujer: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
        
            where: {
                genero_id: '2'  // Busca en la base de datos los productos del genero Mujer (ID=2 (Mujer) en tabla de genero )
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },

    buscarIndumentariaMujer: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
        
            where: {
                genero_id: '2', // que sea mujer
                categoria_id: ['1', '2', '7','8','9','10','11','17'] // que sea indumentaria
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },

    buscarCalzadoMujer: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
        
            where: {
                genero_id: '2', // que sea mujer
                categoria_id: ['3', '6'] // que sea calzado
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
    
    buscarIndumentariaHombre: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
        
            where: {
                genero_id: '1', // que sea hombre
                categoria_id: ['1', '2', '7','8','9','10','11','17'] // que sea indumentaria
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },

    buscarCalzadoHombre: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
        
            where: {
                genero_id: '1', // que sea hombre
                categoria_id: ['3', '6'] // que sea calzado
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
    },
    
    buscarNike: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
            
            where: {
                marca_id: { [Op.like]: '2' }
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },

    buscarPuma: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
            
            where: {
                marca_id: { [Op.like]: '3' }
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },

    buscarBabolat: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
            
            where: {
                marca_id: { [Op.like]: '7' }
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },

    buscarPrince: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
            
            where: {
                marca_id: { [Op.like]: '12' }
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },

    buscarFila: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
            
            where: {
                marca_id: { [Op.like]: '6' }
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },

    buscarVairo: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
            
            where: {
                marca_id: { [Op.like]: '11' }
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },

    buscarWilson: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
            
            where: {
                marca_id: { [Op.like]: '8' }
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },

    buscarUmbro: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
            
            where: {
                marca_id: { [Op.like]: '5' }
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },

    buscarTopper: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
            
            where: {
                marca_id: { [Op.like]: '10' }
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },

    buscarHead: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
            
            where: {
                marca_id: { [Op.like]: '13' }
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },

    buscarNassau: function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
            
            where: {
                marca_id: { [Op.like]: '9' }
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    }
}

module.exports = marcasController;

