const {validationResult} = require("express-validator"); // requiere la libreria instalada para las validaciones de datos
const db = require ("../db/models"); // nos permite utilizar la base de datos

const productsController = {
    crear: function (req, res) {
        db.Deporte.findAll()               // obtiene todos los Deportes (alias del modelo Deporte)
        .then(function(deportes){      // despues que obtenga los deportes
            return res.render("products/create", {deportes:deportes});   // renderiza la vista de creacion de productos
        })
    },

    guardado: function (req, res) {
        const resultValidation = validationResult(req); // Campos que tuvieron error //
		if (resultValidation.errors.length > 0) { // Si resultValidation es mayor a cero (tiene errores) renderizo el formulario de create de nuevo 
			return res.render('products/create', {
				errors: resultValidation.mapped(),  // Le pasa a la vista de create los errores que se señalaron en validateProductsMiddleware 
                oldData:req.body
            });
                }
        db.Producto.create({
            nombre: req.body.nombre, 
            precio: req.body.precio,
            descripcion: req.body.descripcion,
            imagen: req.file.imagen,
            talle: req.body.talle_id, // talle es el name que tiene en el formulario de creacion y talle_id es el nombre de la columna en el modelo
            genero: req.body.genero_id,
            deporte: req.body.deporte_id,
            marca: req.body.marca_id,
            categoria: req.body.categoria
        })

        res.redirect("/products/list");  // si no hay campos sin llenar redirecciona a list
    },

    list: function (req, res) {
        db.Producto.findAll()
            .then (function(productos) {
                res.render ("products/productsList", {productos: productos})
            })
    }
}

module.exports = productsController;

