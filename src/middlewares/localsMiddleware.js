function locals(req, res, next){
    res.locals.usuario = false    // variable usuario que va a estar en todas las vistas
    if (req.session.userLogged){ // si el usuario esta logueado
        res.locals.usuario = req.session.userLogged 
    }
    next()
}

module.exports = locals