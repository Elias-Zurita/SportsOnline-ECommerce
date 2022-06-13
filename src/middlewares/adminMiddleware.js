function adminMiddleware(req, res, next)  {
    if (typeof req.session.userLogged !="undefined"){
         if(req.session.userLogged.perfil_id == 1){  // Si el perfil del usuario logueado es 1 (administrador)
             return next()
         }
     }
     return res.redirect("/")
 }
 module.exports = adminMiddleware