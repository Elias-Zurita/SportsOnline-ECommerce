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
    loginProcess: (req,res) =>{
        const resultValidation = validationResult(req); // Campos que tuvieron error //

		if (resultValidation.errors.length > 0) { // Si resultValidation es mayor a cero (tiene errores) renderizo el formulario de login de nuevo //
			return res.render('users/login', {
				errors: resultValidation.mapped(),  // Le pasa a la vista de login los errores que se señalaron en users (routes) //
                oldData:req.body
            });
		}
    },
    register: (req, res) =>{
        res.render('users/register')   // renderiza el register //
    },
    createUser: function(req,res) {
        
        //---------------- sprint 5 -------------//
        
        const resultValidation = validationResult(req); // Campos que tuvieron error //

		if (resultValidation.errors.length > 0) { // Si resultValidation es mayor a cero (tiene errores) renderizo el formulario de registro de nuevo //
			return res.render('users/register', {
				errors: resultValidation.mapped(),  // Le pasa a la vista de register los errores que se señalaron en users (routes) //
                oldData:req.body
            });
		}

        //---------------- sprint 5 -------------//

        let users = findAll(); // Obtengo todos los usuarios //
        let newUser = {  // Registro de un nuevo usuario //
            id: users.length + 1,  // devuelve la cantidad de usuarios que se tienen //
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
        res.redirect("/users/login");
    },

    list: (req, res) =>{
        let users = findAll();
        res.render ('users/userList', {users}) // renderiza el listado de usuarios //
    },

    profile: (req, res) => {
		return res.render("Profile");
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


