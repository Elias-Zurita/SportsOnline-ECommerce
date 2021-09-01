const path = require("path");

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
   }

module.exports = controller;

