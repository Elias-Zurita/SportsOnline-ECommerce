const db = require("../db/models")  // Requiere los modelos de la base de datos

function recordameMiddleware(req, res, next){ 
    if(!req.session.usuarioLogueado && req.cookies.recordame){
        db.Usuario.findOne({
            where:{
                id: req.cookies.recordame
            }
        }).then(function(user){
            req.session.usuarioLogueado = user;
            return next()
        })
    }else{
        return next()
    }
        
}
module.exports= recordameMiddleware;