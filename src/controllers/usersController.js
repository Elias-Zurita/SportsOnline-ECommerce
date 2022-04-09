const bcryptjs = require ("bcryptjs"); // declara la libreria bcryptjs para encriptar las contraseñas (requiere instalacion) 
const {validationResult} = require("express-validator"); // requiere la libreria instalada para las validaciones de datos (express-validator es el nombre que se le dio al cuerpo de las validaciones en el middleware)
const db = require ("../db/models"); // nos permite utilizar la base de datos
const {op} = require("sequelize");

const controller = {

    register: async function (req, res) { // FUNCIONANDO CON DB
            const perfil = await db.Perfil.findAll()  // Espera a que se lea perfil y despues continua     
            return res.render("users/register", {perfil});   // renderiza la vista de registro 
    },    

    processRegister: async function (req, res) { //    FUNCIONANDO CON DB
        const resultValidation = validationResult(req); // Campos que tuvieron error
        if (!resultValidation.isEmpty()) {// Espera a que se lea deportes y despues continua
             // Si resultValidation no esta vacio (tiene errores) renderizo el formulario de register de nuevo 
            return res.render('users/register', {
				errors: resultValidation.mapped(),  // Le pasa a la vista de register los errores que se señalaron en validateRegisterMiddleware 
                oldData:req.body
            });
                }
                await db.Usuario.create({
                        id:20,
                        nombre: req.body.nombre,
                        apellido: req.body.apellido,
                        email: req.body.email,
                        contraseña: bcryptjs.hashSync(req.body.contraseña, 10),  // Encripta la contraseña
                        perfil_id: 2,  // Por default todos los usuarios creados van a ser clientes
                        avatar: req.file.filename, 
                    })
                        .then(()=>{  res.redirect("/users/login");})
                         // si no hay campos sin llenar redirecciona a login
    },

    list: function (req, res) { // FUNCIONANDO CON DB
          db.Usuario.findAll({
            include: [{association: "Perfil"}]   // incluye asociaciones para que se vean en el detalle
        }) 
            .then (function(user) {
               
                res.render ("users/userList", {user: user}) // incluye "user" para que se vean en el detalle
            })
    },
    
    login: (req, res) =>{    // FUNCIONANDO CON DB
        res.render('users/login')   // renderiza el login //
    },

    loginProcess: async (req,res, next)=> {  
       
        const resultValidation = validationResult(req);

        if(!resultValidation.isEmpty()){     // si la validacion no esta vacia (tiene un error) 
            return res.render("users/login", {     // renderiza nuevamente la vista del login con los errores
                errors: resultValidation.mapped(),
                oldData: req.body 
            });
        }
       await db.Usuario.findOne({
        include: [{association: "Perfil"}], 
            where: {
                email: req.body.email 
            }
        }).then( (users) => {
            req.session.userLogged = users;
            if (req.body.recordarUsuario){ 
                res.cookie('recordarUsuario', users.id,{maxAge: 1000 * 60 * 60})
            }
                return res.redirect('/users/profile', { user: req.session.userLogged
                });
            }
        )
    },
        
    profile: function (req, res){ // FUNCIONA CON DB SI LOGRO LOGUEARLO BIEN
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

    logout: (req, res) => { // NO FUNCIONA, QUEDA LA SESION ABIERTA
        res.clearCookie("recordarUsuario"); // Destruye la cookie para poder desloguearse
        req.session.destroy();    // Borra lo que se encuentra dentro de la sesion (la cierra)
        return res.redirect("/")  // Redirije al index
        
    },

    destroy: async function(req, res, next){  // ELIMINA AL USUARIO DE LA DB PERO ANDA MAL LA REDIRECCION AL LISTADO DE USUARIOS
        const usuario = await db.Usuario.findByPk(req.params.id); 
        await db.Perfil.destroy({
            where: {
                id: req.params.id
            }
        }) // borra todo los perfiles de la tabla pivot (su alias en producto es "perfil" pero set se escribe con CamelCase)
        await db.Usuario.destroy({
            where: {
                id: req.params.id
            }
        })
        res.redirect("/users/list") // incluye "users" para que se vean en el detalle);
    },

}

module.exports = controller;


