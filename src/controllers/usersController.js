const bcryptjs = require ("bcryptjs"); // declara la libreria bcryptjs para encriptar las contraseñas (requiere instalacion) 
const {validationResult} = require("express-validator"); // requiere la libreria instalada para las validaciones de datos (express-validator es el nombre que se le dio al cuerpo de las validaciones en el middleware)
const db = require ("../db/models"); // nos permite utilizar la base de datos
const {op} = require("sequelize");

const controller = {

    register: async function (req, res) { 
            const perfil = await db.Perfil.findAll()  // Espera a que se lea perfil y despues continua     
            return res.render("users/register", {perfil});   // renderiza la vista de registro 
    },    

    processRegister:(req, res, next) => { 
        const resultValidation = validationResult(req); // Campos que tuvieron error
		if (resultValidation.errors.length > 0) { // Si resultValidation es mayor a cero (tiene errores) renderizo el formulario de register de nuevo 
            return res.render('users/register', {
				errors: resultValidation.mapped(),  // Le pasa a la vista de register los errores que se señalaron en validateRegisterMiddleware 
                oldData:req.body
            });
                }
        db.Usuario.create({
            nombre: req.body.nombre,
            apellido: req.body.apellido,
            email: req.body.email,
            contraseña: bcryptjs.hashSync(req.body.contraseña, 10),  // Encripta la contraseña
            avatar: req.file.filename, 
            perfil_id:2 // Por default todos los perfiles creados van a ser usuarios (clientes)
            }).then(function(){            
            return res.redirect("/users/login");  // si no hay campos sin llenar redirecciona a login
            })
    },

    list: function (req, res) { 
          db.Usuario.findAll({
        }) 
            .then (function(usuario) {               
                res.render ("users/userList", {user: usuario}) // incluye "users" para que se vean en el detalle
            })
    },
    
    login: (req, res) =>{    
        res.render('users/login')   // renderiza el login //
    },

    loginProcess: async (req,res, next)=> {  
        const resultValidation = validationResult(req);
        if(!resultValidation.isEmpty()){     // Si resultValidation no esta vacio (hay errores) renderiza de nuevo la vista del Login //
            return res.render("users/login", { 
                errors: resultValidation.mapped(),
                oldData: req.body 
            });
        }
       await db.Usuario.findOne({
        include: [{association: "Perfil"}], 
            where: {
                email: req.body.email 
            }
        }).then(userToLogin => {    // NO ESTA FUNCIONANDO EL MIDDLEWARE USERLOGGED (RECORDARME)
                req.session.userLogged = userToLogin
                if (req.body.recordarUsuario) {  // Si se tildo el boton de recordarme (su name en el ejs es recordarUsuario)
                    res.cookie("recordarUsuario", userToLogin.id, {maxAge: (1000 * 60) * 5} )    // la cookie va a dejar logueado al usuario por 5 minutos por mas que cierre el navegador
                }
            return res.redirect ("/") // Accion que hace cuando la contraseña es correcta
        })
    },
        
    profile: function (req, res){ 
        db.Usuario.findOne({
            include: {association: "Perfil"},
            where: {
                id:req.session.userLogged.id
            }
        })
            .then(function(usuario){
                res.render("users/profile", {usuario:usuario}) // incluye "usuario" para que se vean en el perfil
            })
    },

    logout: (req, res) => { 
        res.clearCookie("recordarUsuario"); // Destruye la cookie para poder desloguearse
        req.session.destroy();    // Borra lo que se encuentra dentro de la sesion (la cierra)
        return res.redirect("/")  // Redirije al index       
    },

    destroy: (req,res) => {
        db.Usuario.destroy({
            where: {
                id: req.params.id
            }
        })
        res.redirect("/users/list")
    },
}

module.exports = controller;


