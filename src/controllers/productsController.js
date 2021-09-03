const { json } = require("express");
const fs = require ("fs"); 
const path = require("path");

function findAll() {
    let productsJson =  fs. readFileSync(path.join(__dirname, "../data/products.json"))   // Lee el archivo products.json donde estan los productos  //

    let data = JSON.parse(productsJson) // declara "data" para parsear la informacion de los productos (toma el texto del array productsJson) //
    return data // devuelve data (la info de los productos) //
}

function writeJson(array){   // le sobreescribe info al JSON data //
    let arrayJSON = JSON.stringify(array)  // Convierte el array en JSON  //
    return fs.writeFileSync(path.join(__dirname, "../data/products.json"), arrayJSON);
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
        res.render("products/create")   // renderiza el formulario de creacion //
    },
    store: function(req,res) {
        let products = findAll();
        let newProduct = {  // Creacion de un producto //
            id: products.lenght + 1,  // devuelve la cantidad de elementos que se tienen //
            nombre: req.body.nombre,
            descripcion: req.body.descripcion,
            categoria: req.body.categoria,
            marca: req.body.marca,
            precio: req.body.precio,
        }
        let productsActualizados = [...products, newProduct]  // mete los datos de newproducts en un products//

        writeJson(productsActualizados);
        res.redirect("/products/list");
    }

}

module.exports = controller;

