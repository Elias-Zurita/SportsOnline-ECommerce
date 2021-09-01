const path = require("path");

const controller = {
    productCart : (req, res) =>{
        res.render("products/productCart") // renderiza el carrito de compras //
    },
    details : (req, res) =>{
        res.render("products/details") // renderiza el carrito de compras //
    },
   
}

module.exports = controller;

