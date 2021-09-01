const path = require("path");

const controller = {
   login: (req, res) =>{
    res.render('users/login')   // renderiza el login //
    },
    register: (req, res) =>{
        res.render('users/register')   // renderiza el register //
    },
}

module.exports = controller;

