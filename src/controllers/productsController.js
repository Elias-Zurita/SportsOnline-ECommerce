const {validationResult} = require("express-validator"); // requiere la libreria instalada para las validaciones de datos
const db = require ("../db/models"); // nos permite utilizar la base de datos

const productsController = {
    create: function (req, res) {
        db.Deporte.findAll()               // obtiene todos los Deportes (alias del modelo Deporte)
        .then(function(deportes){      // despues que obtenga los deportes
            return res.render("products/create", {deportes:deportes});   // renderiza la vista de creacion de productos
        })
    },

    store: function (req, res) {
        const resultValidation = validationResult(req); // Campos que tuvieron error //
		if (resultValidation.errors.length > 0) { // Si resultValidation es mayor a cero (tiene errores) renderizo el formulario de create de nuevo //
			return res.render('products/create', {
				errors: resultValidation.mapped(),  // Le pasa a la vista de create los errores que se señalaron en validateProductsMiddleware //
                oldData:req.body
            });
                }
        db.Producto.create({
            id: products.length + 1,  // cuenta la cantidad de elementos que se tienen y le suma uno //
            img: req.file.filename,
            nombre: req.body.nombre,
            descripcion: req.body.descripcion,
            categoria: req.body.categoria,
            marca: req.body.marca,
            precio: req.body.precio,
            genero: req.body.genero,
            deporte: req.body.deporte,
            talle: req.body.talle
        })

        res.redirect("products/list");
    },

    list: function (req, res) {
        db.Producto.findAll()
            .then (function(productos) {
                res.render ("productsList", {productos: productos})
            })
    }
}

module.exports = productsController;

