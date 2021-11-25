const bcryptjs = require ("bcryptjs"); // declara la libreria bcryptjs para encriptar las contraseñas (requiere instalacion) 
const {validationResult} = require("express-validator"); // requiere la libreria instalada para las validaciones de datos (express-validator es el nombre que se le dio al cuerpo de las validaciones en el middleware)
const db = require ("../db/models"); // nos permite utilizar la base de datos

const controller = {

    register: async function (req, res) { // FUNCIONANDO CON DB
            const perfil = await db.Perfil.findAll()  // Espera a que se lea perfil y despues continua     
            return res.render("users/register", {perfil});   // renderiza la vista de registro 
    },    

    processRegister: async function (req, res) { //    FUNCIONANDO CON DB
        const resultValidation = validationResult(req); // Campos que tuvieron error
		if (resultValidation.errors.length > 0) { // Si resultValidation es mayor a cero (tiene errores) renderizo el formulario de register de nuevo 
            const perfiles = await db.Perfil.findAll()  // Espera a que se lea perfil y despues continua     
            return res.render('users/register', {
				errors: resultValidation.mapped(),  // Le pasa a la vista de register los errores que se señalaron en validateRegisterMiddleware 
                oldData:req.body,perfiles
            });
                }
        let usuarioCreado = await db.Usuario.create({
            nombre: req.body.nombre,
            apellido: req.body.apellido,
            email: req.body.email,
            contraseña: bcryptjs.hashSync(req.body.contraseña, 10),  // Encripta la contraseña
            avatar: req.file.filename, 
            perfil_id: req.body.perfil
            })
            await usuarioCreado.setPerfil([req.body.perfil]) // el setPerfil proviene del asociacion (as) del modelo de usuario
            res.redirect("/users/login");  // si no hay campos sin llenar redirecciona a login
    },

    list: function (req, res) { // FUNCIONANDO CON DB
          db.Usuario.findAll({
            include: {association:"Perfil"} // incluye asociaciones para que se vean en el detalle
        }) 
            .then (function(usuario) {
                res.render ("users/userList", {usuario: usuario}) // incluye "users" para que se vean en el detalle
            })
    },
    
    login: (req, res) =>{    // FUNCIONANDO CON DB
        res.render('users/login')   // renderiza el login //
    },

    loginProcess: function(req,res) {    // FUNCIONANDO CON DB
        const resultValidation = validationResult(req);

        if(!resultValidation.isEmpty()){
            return res.render("users/login", { 
                errors: resultValidation.mapped(),
                oldData: req.body 
            });
        }
        db.Usuario.findOne({
            where: {
                email: req.body.email 
            }
        }).then( usuarioEncontrado => {
            req.session.usuarioLogueado = usuarioEncontrado;
            if(req.body.recordame){
                res.cookie("recordame", usuarioEncontrado.id, { maxAge: 1000 * 60 * 4 })
            }
            return res.redirect("/");
        })  
    },
        
    profile: function (req, res){ // FUNCIONA CON DB SI LOGRO LOGUEARLO BIEN
        db.Usuario.findByPk(req.params.id, {
            include: {association: "Perfil"}
        })
            .then(function(usuario){
                res.render("users/profile", {usuario:usuario}) // incluye "usuario" para que se vean en el perfil
            })
    },

    logout: (req, res) => { // NO FUNCIONA, QUEDA LA SESION ABIERTA
        res.clearCookie("recordarme"); // Destruye la cookie para poder desloguearse
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
        res.redirect("/users/userList") // incluye "users" para que se vean en el detalle);
    },

}

module.exports = controller;


