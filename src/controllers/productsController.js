const {validationResult} = require("express-validator"); // requiere la libreria instalada para las validaciones de datos
const db = require ("../db/models"); // nos permite utilizar la base de datos

const productsController = {
    crear: async function (req, res) {
        const deportes = await db.Deporte.findAll()  // Espera a que se lea deportes y despues continua
        const categorias = await db.Categoria.findAll()   
        const generos = await db.Genero.findAll()   
        const marcas= await db.Marca.findAll()   
        const talles= await db.Talle.findAll()                 
            return res.render("products/create", {deportes, categorias, generos, marcas, talles});   // renderiza la vista de creacion de productos
    },

    guardado: async function (req, res) {
        const resultValidation = validationResult(req); // Campos que tuvieron error
		if (resultValidation.errors.length > 0) { // Si resultValidation es mayor a cero (tiene errores) renderizo el formulario de create de nuevo 
            const deportes = await db.Deporte.findAll()  // Espera a que se lea deportes y despues continua
            const categorias = await db.Categoria.findAll()   
            const generos = await db.Genero.findAll()   
            const marcas= await db.Marca.findAll()   
            const talles= await db.Talle.findAll()                 
            return res.render('products/create', {
				errors: resultValidation.mapped(),  // Le pasa a la vista de create los errores que se señalaron en validateProductsMiddleware 
                oldData:req.body,deportes, categorias, generos, marcas, talles
            });
                }
        let productoCreado = await db.Producto.create({
            nombre: req.body.nombre, 
            precio: req.body.precio,
            descripcion: req.body.descripcion,
            imagen: req.file.filename, // imagen es el name que tiene en el formulario de creacion y talle_id es el nombre de la columna en el modelo
            genero_id: req.body.genero,
            deporte_id: req.body.deporte,
            marca_id: req.body.marca,
            categoria_id: req.body.categoria
        })
        await productoCreado.setTalle([req.body.talle]) // el setTalle proviene del asociacion (as) del modelo de producto
            res.redirect("/products/list");  // si no hay campos sin llenar redirecciona a list
    },

    list: function (req, res) {
        db.Producto.findAll()
            .then (function(productos) {
                res.render ("products/productsList", {products: productos})
            })
    }
}

module.exports = productsController;

