const path = require("path");

const controller = {
    index: (req, res) =>{
        res.render('index')    // renderiza el index  //
    },
    login: (req, res) =>{
        res.render('login')   // renderiza el login //
    },
    details : (req, res) =>{
        res.render("details") // renderiza el details //
    },
    productCart : (req, res) =>{
        res.render("productCart") // renderiza el carrito de compras //
    },
}

module.exports = controller;

