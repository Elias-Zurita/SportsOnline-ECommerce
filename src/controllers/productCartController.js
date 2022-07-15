const {validationResult} = require("express-validator"); // requiere la libreria instalada para las validaciones de datos
const db = require ("../db/models"); // nos permite utilizar la base de datos
const {Op, Association} = require("sequelize");
const Items = require("../db/models/Items"); // declara "Items" desde el modelo de Items de la db

const productCartController = {
    carrito: async (req, res) =>{
        let items = await db.Items.findAll(    // obtengo todos los items de la base de datos
            { include:["Producto", "Ordenes", "Usuario"],
            where: {
                usuario_id: req.session.userLogged.id,
                ordenes_id: null 
                }
            },
        );
        let precioTotal = 0;
        items.forEach(item =>{
            precioTotal = Number(precioTotal) + Number(item.subtotal)
        })
            return res.render("/products/productCart", {items, precioTotal});
    }
    /*
    agregarProducto: async (req, res) => {
        let productFound = await db.Producto.findByPk(req.params.id,{
            include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
            {association: "Marca"}, {association: "Categoria"}] // los nombres de las asociaciones (as) en el modelo de productos
        });
        await db.Items.create({
            nombre: productFound.nombre,
            precio: Number(productFound.precio),
            cantidad: Number(req.body.cantidad),
            subtotal: Number(req.body.cantidad) * Number(productFound.precio),
            user_id: req.session.userLogged.id
        })
        return res.redirect("/productCart") 
    },

    destroyItem: async (req, res) =>{
        await db.Items.destroy({
            where:{
                id: req.params.id
            }
        });
        res.redirect("/productCart")
    },
    addOrder: async (req, res) =>{
        let items = await db.Items.findAll({
            include:["Producto", "Ordenes", "Usuario"],
            where:{
                usuario_id: req.session.userLogged.id,
                order_id: null
            }
        })
        let totalPrice = 0;
        items.forEach(item => {
            totalPrice = Number(totalPrice) + Number(item.subtotal)
        })
        let ordersFound = await db.Ordenes.findAll()
        let newId = ordersFound.length === 0 ? 1 :  ordersFound[ordersFound.length-1].id + 1
        let newOrder = await db.Ordenes.create({   
            precio_total: precioTotal,
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
    }
*/
    
}

module.exports = productCartController;

    
