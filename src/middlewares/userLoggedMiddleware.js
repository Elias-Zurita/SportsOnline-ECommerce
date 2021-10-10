function userLoggedMiddleware (req, res, next) {
    res.locals.isLogged = false;      // cuando el usuario no esta logueado
    
    if (req.session.userLogged) {  
        res.locals.isLogged = true    // cuando el usuario esta logueado
        res.locals.userLogged = req.session.userLogged     // pasa lo que tiene en sesion (los datos del usuario con el session.userLogged) a la vista (la variable local)
    }

    next()
}

module.exports = userLoggedMiddleware