const { json } = require("express");
const fs = require ("fs");  // declara la libreria fs para usar fileSync despues (para leer archivos) 
const path = require("path");
const {validationResult} = require("express-validator"); // requiere la libreria instalada para las validaciones de datos

function findAll() {
    let productsJson =  fs. readFileSync(path.join(__dirname, "../database/products.json"))   // Lee el archivo products.json donde estan los productos  //

    let data = JSON.parse(productsJson) // declara "data" para parsear la informacion de los productos (toma el texto del array productsJson) //
    return data // devuelve data (la info de los productos) //
}

function writeJson(array){   // le sobreescribe info al JSON data //
    let arrayJSON = JSON.stringify(array, null," ")  // Convierte el array en JSON  //  se agrega null y las comillas para que quede un espacio //
    return fs.writeFileSync(path.join(__dirname, "../database/products.json"), arrayJSON);  
}

const controller = {
    productCart : (req, res) =>{
        res.render("products/productCart") // renderiza el carrito de compras //
    },
    list: (req, res) =>{
        let products = findAll();
        res.render ('products/productsList', {products}) // renderiza el listado de productos //
    },
    details : (req, res) =>{
        let products = findAll();
        let productsEncontrado = products.find(function(products){
            return products.id == req.params.id //renderiza el producto que se pida por id //            
        })

        res.render("products/details", {products: productsEncontrado}) // renderiza el detalle del producto pedido por id //
    },
    create : (req, res) =>{
        res.render("products/create")   // renderiza el formulario de creacion de producto //
    },
    store: function(req,res) {
        const resultValidation = validationResult(req); // Campos que tuvieron error //

		if (resultValidation.errors.length > 0) { // Si resultValidation es mayor a cero (tiene errores) renderizo el formulario de create de nuevo //
			return res.render('products/create', {
				errors: resultValidation.mapped(),  // Le pasa a la vista de create los errores que se señalaron en validateProductsMiddleware //
                oldData:req.body
            });
		}

        let products = findAll();
        let newProduct = {  // Creacion de un producto //
            id: products.length + 1,  // cuenta la cantidad de elementos que se tienen y le suma uno //
            img: req.file.filename,
            nombre: req.body.nombre,
            descripcion: req.body.descripcion,
            categoria: req.body.categoria,
            marca: req.body.marca,
            precio: req.body.precio,
        }
        let productsActualizados = [...products, newProduct]  // mete los datos de newproducts en un products//

        writeJson(productsActualizados);
        res.redirect("/products/list");
    },
    edit: function (req,res) {  // edicion de productos //
        let products = findAll() // trae todos los productos //
        let productEncontrado = products.find(function(product){ // Encuentra UN producto //
            return product.id == req.params.id 
        })
        res.render("products/productEditForm", {product: productEncontrado}) // renderiza el formulario de edicion de producto //
    },
    update: function (req, res) {
        let products = findAll();
        let productsActualizados = products.map(function(product){ // busca en el array el elemento al que va a editar y le sobrescribe la info //
            if (product.id == req.params.id){ //si el producto es igual al parametro que nos llega por ruta actualiza los datos //
                product.nombre = req.body.nombre
                product.descripcion = req.body.descripcion
                product.categoria = req.body.categoria
                product.marca = req.body.marca
                product.precio = req.body.precio
                }
            return product
        }) 
        writeJson(productsActualizados); // modifica el producto //

        res.redirect("/products/details/"+req.params.id) // redirecciona a la pagina de detalle del producto editado //
    },
    destroy: function (req,res){
        let products = findAll()
        let dataNueva = products.filter(function(products){
            return products.id != req.params.id
        })

        writeJson(dataNueva)

        res.redirect("/products/list")
    }
}

module.exports = controller;

