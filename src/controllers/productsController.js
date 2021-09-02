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
    details : (req, res) =>{
        res.render("products/details") // renderiza el detalle del producto //
    },
    creation : (req, res) =>{
        res.render("products/creation")   // renderiza el formulario de creacion //
    },
    list: (req, res) =>{
        let products = findAll();
        res.render ('products/productsList', {products}) // renderiza el listado de productos //
    },
    
}

module.exports = controller;

