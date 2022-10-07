const db = require("../db/models")  // Requiere los modelos de la base de datos

function userLoggedMiddleware(req, res, next){ 
    if(!req.session.userLogged && req.cookies.recordarUsuario){
        db.Usuario.findOne({
            where:{
                id: req.cookies.recordarUsuario
            }
        }).then(function(usuario){
            req.session.userLogged = usuario;
            return next()
        })
    }else{
        return next()
    }       
}
module.exports= userLoggedMiddleware;