const bcryptjs = require ("bcryptjs"); // declara la libreria bcryptjs para encriptar las contraseñas (requiere instalacion) 
const {validationResult} = require("express-validator"); // requiere la libreria instalada para las validaciones de datos (express-validator es el nombre que se le dio al cuerpo de las validaciones en el middleware)
const User = require("../models/User") // Requiere el archivo User.js de models con las funcionalidades
const db = require ("../db/models"); // nos permite utilizar la base de datos

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

        let userInDB = User.findByField("email", req.body.email) // Busca si hay un usuario ya registrado con ese mail en la base de datos
      
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
        // ------------------------DESDE ACA ES LO NUEVO DE DB -----------------------
        db.Usuario.create({
            nombre: req.body.nombre,
            apellido: req.body.apellido,
            email: req.body.email,
            contraseña: bcryptjs.hashSync(req.body.contraseña, 10),  // Encripta la contraseña
            avatar: req.file.filename, 
            perfil_id: req.body.perfil_id
        }).then(function(){
            return res.redirect("/users/login")
        })
        // -------------------ACA TERMINA LO NUEVO DE DB -----------------------------
    },

    list: (req, res) =>{
        let users = User.findAll(); // encuentra todos los usuarios con el metodo usado en models
        res.render ('users/userList', {users}) // renderiza el listado de usuarios //
    },
    
    login: (req, res) =>{
        console.log(req.session)
        res.render('users/login')   // renderiza el login //
    },
    loginProcess: function(req,res) {
    
        /*
        const resultValidation = validationResult(req); // Campos que tuvieron error //

		if (resultValidation.errors.length > 0) { // Si resultValidation es mayor a cero (tiene errores) renderizo el formulario de login de nuevo //
			return res.render('users/login', {
				errors: resultValidation.mapped(),  // Le pasa a la vista de login los errores que se señalaron en validateRegisterMiddleware //
                oldData:req.body
            });
		}
        */
        
    //------HASTA ACA ES LA VALIDACION DE COMPLETAR LOS CAMPOS, QUE SI BIEN FUNCIONA INVALIDA LA DE BUSCAR EL MAIL EN LA BASE DE DATOS PARA VER SI ESTA O NO REGISTRADO-------------------


        let userToLogin = User.findByField("email", req.body.email)   // Busca el mail con el metodo findByField que esta en User (models) 
        if (userToLogin){
            let isOkThePassword = bcryptjs.compareSync(req.body.contraseña, userToLogin.contraseña) // Declara como "isOkThePassword" cuando la contraseña ingresada es la misma cargada en la base de datos (la compara con el brycrpt.compareSync por que esta encriptada)
            if (isOkThePassword){
                delete userToLogin.contraseña; // elimina la contraseña de lo que se visualiza en la consola o en inspeccionar  
                req.session.userLogged = userToLogin
                
                if (req.body.recordarUsuario) {  // Si se tildo el boton de recordarme (su name en el ejs es recordarUsuario)
                    res.cookie("userEmail", req.body.email, {maxAge: (1000 * 60) * 2} )    // la cookie va a dejar logueado al usuario por 2 minutos (1000 milisegundos x 2) por mas que cierre el navegador
                }
                
                return res.redirect ("/users/profile") // Accion que hace cuando la contraseña es correcta
            }
            return res.render('users/login', { // si la contraseña ingresada es incorrecta renderiza nuevamente con el msj de validacion
                errors: {
                    email: {
                        msg: "La contraseña es incorrecta"
                    }
                }
            });
        }
        return res.render('users/login', { // si el mail ingresado no esta registrado muestra el msj de validacion
			errors: {
				email: {
					msg: "Esta email no se encuentra registrado"
				}
			}
		});
	},

    profile: (req, res) => {

		return res.render("users/profile", {
            user: req.session.userLogged // La vista del profile va a recibir los datos del usuario logueado
        });
	},

    logout: (req, res) => {
        res.clearCookie("userEmail"); // Destruye la cookie para poder desloguearse
        req.session.destroy();    // Borra lo que se encuentra dentro de la sesion (la cierra)
        return res.redirect("/")  // Redirije al index
    },

    // ESTE METODO NO ESTA FUNCIONANDO
    destroy: function (req,res){
        let users = User.findAll()
        let dataNueva = users.filter(function(users){
            return users.id != req.params.id
        })

        writeJson(dataNueva)

        res.redirect("/users/list")
    },

}

module.exports = controller;


