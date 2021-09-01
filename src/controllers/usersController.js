const path = require("path");

const controller = {
   login: (req, res) =>{
    res.render('users/login')   // renderiza el login //
    },
}

module.exports = controller;

