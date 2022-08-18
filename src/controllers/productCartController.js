const {validationResult} = require("express-validator") 
const db = require ("../db/models") 
const {Op, Association} = require("sequelize")
const Items = require("../db/models/Items") 

const productCartController = {
    carrito: async (req, res) =>{
        let items = await db.Items.findAll(   
            { include:["Producto", "Ordenes", "Usuario"],
            where: {
                usuario_id: req.session.userLogged.id,
                ordenes_id: null 
                }
            },
        )
        let precioTotal = 0
        items.forEach(item =>{
            precioTotal = Number(precioTotal) + Number(item.subtotal)
        })
        console.log(items)
            return res.render("products/productCart", {items, precioTotal})
    },
    
    agregarProducto: async (req, res) => {
        let productFound = await db.Producto.findByPk(req.params.id,{
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, 
            {association: "Marca"}, {association: "Categoria"}]
        })
        await db.Items.create({
            nombre: productFound.nombre,
            precio: Number(productFound.precio),
            cantidad: Number(req.body.cantidad),
            subtotal: Number(req.body.cantidad) * Number(productFound.precio),
            usuario_id: req.session.userLogged.id,
            producto_id: productFound.id
        })
        return res.redirect("/productCart") 
    },

    addOrder: async (req, res) =>{
        let items = await db.Items.findAll({
            include:["Producto", "Ordenes", "Usuario"],
            where:{
                usuario_id: req.session.userLogged.id,
                ordenes_id: null
            }
        })
        let totalPrice = 0
        items.forEach(item => {
            totalPrice = Number(totalPrice) + Number(item.subtotal)
        })
        let ordersFound = await db.Ordenes.findAll()
        let newId = ordersFound.length === 0 ? 1 :  ordersFound[ordersFound.length-1].id + 1
        let newOrder = await db.Ordenes.create({   
            precio_total: totalPrice,
            usuario_id: req.session.userLogged.id,
            fecha: new Date(),
            id: newId
        })
        
        await db.Items.update(
            {ordenes_id: newOrder.id},
            {where:{
                usuario_id: req.session.userLogged.id,  
                ordenes_id: null,
                }
            }
        )
        return res.redirect("/productCart")
    },

      destroyItem: async (req, res) =>{
        await db.Items.destroy({
            where:{
                id: req.params.id
            }
        });
        res.redirect("/productCart")
    }

}

module.exports = productCartController

    
