const bcryptjs = require ("bcryptjs"); // declara la libreria bcryptjs para encriptar las contraseñas (requiere instalacion) 
const {validationResult} = require("express-validator"); // requiere la libreria instalada para las validaciones de datos
const User = require("../models/User") // Requiere el archivo User.js de models con las funcionalidades

/* TODO ESTO RENDERIZA EL LISTADO DE USUARIOS
function findAll() {
    let usersJson =  fs. readFileSync(path.join(__dirname, "../database/users.json"))   // Lee el archivo user.json donde estan los usuarios  //

    let data = JSON.parse(usersJson) // declara "data" para parsear la informacion de los usuarios (toma el texto del array userJson) //
    return data // devuelve data (la info de los usuarios) //
}
*/ 
const controller = {

    register: (req, res) =>{
        res.render('users/register')   // renderiza el register //
    },

    processRegister: (req,res) => {
        const resultValidation = validationResult(req); // Campos que tuvieron error //

		if (resultValidation.errors.length > 0) { // Si resultValidation es mayor a cero (tiene errores) renderizo el formulario de registro de nuevo //
			return res.render('users/register', {
				errors: resultValidation.mapped(),  // Le pasa a la vista de register los errores que se señalaron en validateRegisterMiddleware //
                oldData:req.body
            });
		}
/*
        let userInDB = User.findByField("email, req.body.email") // Busca si hay un usuario ya registrado con ese mail en la base de datos
      
        if (userInDB) {
            return res.render('users/register', {  // Si esta registrado renderiza nuevamente Register con el msj de validacion
				errors: {
                    email: {
                        msg: 'Este email ya se encuentra registrado'
                    }
                }, 
                oldData: req.body // Mantiene la info que se envio anteriormente
            });
        }
*/
        console.log (req.body)

        let userToCreate = {
            ...req.body,
            contraseña: bcryptjs.hashSync(req.body.contraseña,10),  // Encripta la contraseña en el archivo de users.json //
            avatar: req.file.filename
        }

        User.create(userToCreate);
        
        return res.redirect("/users/login");
    },

    /* LISTADO DE USUARIOS
    list: (req, res) =>{
        let users = findAll();
        res.render ('users/userList', {users}) // renderiza el listado de usuarios //
    },
    */ 

    // campo nuevo para loguear------------------------------------------------------//
    findByField: function (field, text) {
		let users = this.findAll();
		let userFound = users.find(oneUser => oneUser[field] === text);
		return userFound;
	},
    // campo nuevo para loguear------------------------------------------------------//
    login: (req, res) =>{
        res.render('users/login')   // renderiza el login //
    },
    loginProcess: function(req,res) {
console.log (User)

        const resultValidation = validationResult(req); // Campos que tuvieron error //

		if (resultValidation.errors.length > 0) { // Si resultValidation es mayor a cero (tiene errores) renderizo el formulario de login de nuevo //
			return res.render('users/login', {
				errors: resultValidation.mapped(),  // Le pasa a la vista de login los errores que se señalaron en validateRegisterMiddleware //
                oldData:req.body
            });
		}
    
        let userToLogin = user.findByField("email", req.body.email) // tengo dudas si funcionara por que meti users como todo los usuarios y javi usa "USER" de sus modelos que lo exporta con todos los metodos
        if (userToLogin){
            let laContraseñaEsCorrecta = bcryptjs.compareSync(rec.body.contraseña, userToLogin.contraseña)
            if (userToLogin.contraseña) {
                return res.send ("Ok, contraseña valida")
            }
        
        return res.render ("login", {
            errors: {
                email: {
                    msg: "las credenciales son invalidas"
                }
            }
        })
    }
        return res.render ("login", {
            errors: {
                email: {
                    msg: "El email no se encuentra registrado"
                }
            }
        })
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


