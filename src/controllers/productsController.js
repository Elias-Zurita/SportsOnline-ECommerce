const { json } = require("express");
const fs = require ("fs"); 
const path = require("path");

function findAll() {
    let productsJson =  fs. readFileSync(path.join(__dirname, "../data/products.json"))   // Lee el archivo products.json donde estan los productos  //

    let data = JSON.parse(productsJson) // declara "data" para parsear la informacion de los productos (toma el texto del array productsJson) //
    return data // devuelve data (la info de los productos) //
}

const controller = {
    productCart : (req, res) =>{
        res.render("products/productCart") // renderiza el carrito de compras //
    },
    creation : (req, res) =>{
        res.render("products/creation")   // renderiza el formulario de creacion //
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

}

module.exports = controller;

