const { json } = require("express");
const fs = require ("fs"); 
const path = require("path");

function findAll() {
    let usersJson =  fs. readFileSync(path.join(__dirname, "../data/users.json"))   // Lee el archivo user.json donde estan los usuarios  //

    let data = JSON.parse(usersJson) // declara "data" para parsear la informacion de los usuarios (toma el texto del array userJson) //
    return data // devuelve data (la info de los usuarios) //
}

const controller = {
    login: (req, res) =>{
    res.render('users/login')   // renderiza el login //
    },
    register: (req, res) =>{
        res.render('users/register')   // renderiza el register //
    },
    list: (req, res) =>{
        let users = findAll();
        res.render ('users/userList', {users}) // renderiza el listado de usuarios //
    },
}

module.exports = controller;

