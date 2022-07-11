const {validationResult} = require("express-validator"); // requiere la libreria instalada para las validaciones de datos
const db = require ("../db/models"); // nos permite utilizar la base de datos
const {Op} = require("sequelize");

const productCartController = {
    carrito: function(req, res){
        res.render ("products/productCart")
    }
}

module.exports = productCartController;

/*
    listCart: async (req, res) =>{
        let items = await db.Items.findAll(     // obtengo todos los items de la base de datos
            {include: ["producto", "ordenes", "usuario"],
            where: {
                ordenes_id: null, 
                usuario_id: req.session.userLogged.id
                }
            },
        );
        let precioTotal = 0;
        items.forEach(items =>{
            precioTotal = Number (precioTotal) + Number (items.subtotal)
        })
            return res.render("/products/productCart", {items, precioTotal});
    },

}
*/