const path = require("path");

const controller = {
    details : (req, res) =>{
        res.render("/products/details") // renderiza el details //
    },
    productCart : (req, res) =>{
        res.render("products/productCart") // renderiza el carrito de compras //
    },
}

module.exports = controller;

