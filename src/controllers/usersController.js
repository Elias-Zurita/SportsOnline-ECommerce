const { json } = require("express");
const fs = require ("fs");  // declara la libreria fs para usar fileSync despues (para leer archivos) //
const path = require("path");
const bcryptjs = require ("bcryptjs"); // declara la libreria bcryptjs para encriptar las contraseñas (requiere instalacion) //
const {validationResult} = require("express-validator");

function findAll() {
    let usersJson =  fs. readFileSync(path.join(__dirname, "../data/users.json"))   // Lee el archivo user.json donde estan los usuarios  //

    let data = JSON.parse(usersJson) // declara "data" para parsear la informacion de los usuarios (toma el texto del array userJson) //
    return data // devuelve data (la info de los usuarios) //
}

function writeJson(array){   // le sobreescribe info al JSON data //
    let arrayJSON = JSON.stringify(array, null, "  ")  // Convierte el array en JSON (string)  //
    return fs.writeFileSync(path.join(__dirname, "../data/users.json"), arrayJSON);  
}

const controller = {

    login: (req, res) =>{
    res.render('users/login')   // renderiza el login //
    },
    register: (req, res) =>{
        res.render('users/register')   // renderiza el register //
    },
    createUser: function(req,res) {
        
        //---------------- sprint 5 -------------//
        
        const resultValidation = validationResult(req);

		if (resultValidation.errors.length > 0) {
			return res.render('register', {
				errors: resultValidation.mapped(),
				oldData: req.body
			});
		}

        //---------------- sprint 5 -------------//

        let users = findAll();
        let newUser = {  // Registro de un nuevo usuario //
            id: users.length + 1,  // devuelve la cantidad de elementos que se tienen //
            img: req.file.filename,
            nombre: req.body.nombre,
            apellido: req.body.apellido,
            domicilio: req.body.domicilio,
            categoria: req.body.categoria,
            email: req.body.email,
            contraseña: bcryptjs.hashSync (req.body.contraseña, 10) // Encripta la contraseña en el archivo de Data Users //
            }
                          
        let usersActualizados = [...users, newUser]  // mete los datos de newUser en users//

        writeJson(usersActualizados);
        res.redirect("/users/list");
    },

    list: (req, res) =>{
        let users = findAll();
        res.render ('users/userList', {users}) // renderiza el listado de usuarios //
    },
    destroy: function (req,res){
        let users = findAll()
        let dataNueva = users.filter(function(users){
            return users.id != req.params.id
        })

        writeJson(dataNueva)

        res.redirect("/users/list")
    },
}

module.exports = controller;


