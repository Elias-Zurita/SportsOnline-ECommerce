const path = require("path");

const controller = {
    index: (req, res) =>{
        res.render('index')    // renderiza el index  
    },

    quienesSomos: (req,res)=>{
        res.render('footer/quienesSomos') // renderiza Quienes Somos
    },
    preguntasFrecuentes: (req,res)=>{
        res.render('footer/preguntasFrecuentes') // renderiza preguntas frecuentes
    },
    politicas: (req,res)=>{
        res.render('footer/politicas') // renderiza politicas de privacidad
    },
    sucursales: (req,res)=>{
        res.render('footer/sucursales') // renderiza sucursales
    },
 }

module.exports = controller;

