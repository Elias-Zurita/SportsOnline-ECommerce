const {validationResult} = require("express-validator"); // requiere la libreria instalada para las validaciones de datos
const db = require ("../db/models"); // nos permite utilizar la base de datos
const {Op} = require("sequelize");

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
            imagen: req.file.filename, // imagen es el name que tiene en el formulario de creacion y filename es el nombre de la columna en el modelo
            genero_id: req.body.genero,
            deporte_id: req.body.deporte, // deporte es el name que tiene en el formulario de creacion y deporte_id es el nombre de la columna en el modelo
            marca_id: req.body.marca,
            categoria_id: req.body.categoria
        })
        await productoCreado.setTalle([req.body.talle]) // el setTalle proviene del asociacion (as) del modelo de producto
            res.redirect("/products/list");  // si no hay campos sin llenar redirecciona a list
    },

    listado: function (req, res) {
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}] // los nombres de las asociaciones (as) en el modelo de productos
        }) 
            .then (function(productos) {
                res.render ("products/productsList", {productos: productos}) // incluye "productos" para que se vean en el detalle
            })
    },

    buscar:  function (req, res, next) {
        let productToFind = req.query.search;
        db.Producto.findAll({
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}], // los nombres de las asociaciones (as) en el modelo de productos
        
            where: {
                nombre: { [Op.like]: '%'+productToFind+'%' }  // Busca dentro de los "nombres de producto" las letras ingresadas
            }
        })
        .then(function (productos) {
            res.render("products/productsList", { productos: productos });   // Renderiza el listado de coincidencias con la busqueda
        })
    },
    
    detalle: function (req, res){
        let pedidoProducto = db.Producto.findByPk(req.params.id,{
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}] 
        });
            let pedidoTalle = db.Talle.findAll();
            let pedidoGenero = db.Genero.findAll();
            let pedidoDeporte = db.Deporte.findAll();
            let pedidoMarca = db.Marca.findAll();
            let pedidoCategoria = db.Categoria.findAll();
        
        Promise.all([pedidoProducto, pedidoTalle, pedidoGenero, pedidoDeporte, pedidoMarca, pedidoCategoria]) 
            .then(function(values) {  // ejecuta el then cuando estan todas las promesas listas
                res.render("products/details", {producto:values[0], talles: values[1], generos:values[2], 
                    deportes:values[3], marcas:values[4], categorias:values[5]})
            }) 
    },

    editar: function (req,res){
        let pedidoProducto = db.Producto.findByPk(req.params.id,{
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en la edicion
            {association: "Marca"}, {association: "Categoria"}] 
        });
            let pedidoTalle = db.Talle.findAll();
            let pedidoGenero = db.Genero.findAll();
            let pedidoDeporte = db.Deporte.findAll();
            let pedidoMarca = db.Marca.findAll();
            let pedidoCategoria = db.Categoria.findAll();
        
        Promise.all([pedidoProducto, pedidoTalle, pedidoGenero, pedidoDeporte, pedidoMarca, pedidoCategoria]) 
            .then(function(values) {  // ejecuta el then cuando estan todas las promesas listas
                res.render("products/productEditForm", {producto:values[0], talles: values[1], generos:values[2], 
                    deportes:values[3], marcas:values[4], categorias:values[5]})
            }) 
    },

    actualizar: function(req,res){  // Guardar el producto editado o actualizado
        db.Producto.update({
            nombre: req.body.nombre, 
            precio: req.body.precio,
            descripcion: req.body.descripcion,
            genero_id: req.body.genero,
            deporte_id: req.body.deporte, // deporte es el name que tiene en el formulario de creacion y deporte_id es el nombre de la columna en el modelo
            marca_id: req.body.marca,
            // imagen: req.file ? req.file.filename: producto.imagen,     FUNCIONA PERO CONDICIONA QUE SI O SI SE TIENE QUE EDITAR LA IMAGEN, SINO DA ERROR
            categoria_id: req.body.categoria
        },{ 
            where: {
                id: req.params.id // el id es lo que llega por el url
            }
        });
        res.redirect("/products/list") // redirecciona al listado de productos
    },

    eliminar: async function(req, res, next){  
        const producto = await db.Producto.findByPk(req.params.id); 
        await producto.setTalle([]) // borra todo los talles 
        await db.Producto.destroy({
            where: {
                id: req.params.id
            }
        })
        res.redirect("/products/list");
    }
    
}

module.exports = productsController;
