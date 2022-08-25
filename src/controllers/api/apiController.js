const db = require ("../../db/models") 
const bcrypt = require("bcryptjs");
const { Op } = require("sequelize");

let apiController = {
listProducts: async function (req, res) {
    let productos = await db.Producto.findAll({
        include: [{association: "talle"}, {association: "Genero"}, {association: "Deporte"}, // incluye asociaciones para que se vean en el detalle
        {association: "Marca"}, {association: "Categoria"}] // los nombres de las asociaciones (as) en el modelo de productos
    }) 

    let lastProductos = await db.Producto.findAll({
        include:["Marca"],
        order: [
            ['created_at', 'DESC'], // DESC es para orden descendente
        ],
        limit: 5
    })

    let productosJson = {
        meta:{
            status: 200,
            count: productos.length,
            url: "/api/productos",
            lastProducts: lastProductos,
        },
        data:productos
    }
    res.json(productosJson)

    },
    
    
    listUsers:(req,res)=>{
        db.Usuario.scope("withoutPassword")
        .findAll()
        .then(users=>{
            return res.status(200).json({
                count: users.length,
                users: users,
                status:200
            })
        })
    }
 
}
module.exports  = apiController;