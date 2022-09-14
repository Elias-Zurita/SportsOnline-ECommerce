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
    envios: (req,res)=>{
        res.render('footer/envios') // renderiza formas de envios
    },
    trabaja: (req,res)=>{
        res.render('footer/trabaja') // renderiza trabaja con nosotros
    },
    terminos: (req,res)=>{
        res.render('footer/terminos') // renderiza terminos y condiciones
    },
 }

module.exports = controller;

