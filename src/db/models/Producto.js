module.exports = function(sequelize, dataTypes){
    let alias = "Producto";
    
        let cols = {
            id: {
                type: dataTypes.INTEGER,
                primaryKey: true,
                autoIncrement : true
            },
            nombre: {
                type: dataTypes.STRING
            },
            precio: {
                type: dataTypes.INTEGER
            },
            descripcion: {
                type: dataTypes.STRING
            },
            imagen:{
                type: dataTypes.STRING
            },
            genero_id: {
                type: dataTypes.INTEGER 
            },
            deporte_id:{
                type: dataTypes.INTEGER
            },
            marca_id:{
                type: dataTypes.INTEGER
            },
            categoria_id:{
                type: dataTypes.INTEGER
            },
        }
        
        let config = {
            tableName: "producto",
            timestamps: true, // es true ya que la tabla se llama igual que el modelo
            underscored: true  // permite que se utilice el created_at y updated_at con guion bajo
        }
    
        let Producto = sequelize.define(alias,cols,config); 
    
        Producto.associate = function(models){
            Producto.belongsToMany(models.Talle, {   // un talle tiene muchos productos, y producto tiene muchos talles
                as: "talle",
                through: "producto_talle",   // nombre de la tabla pivot 
                foreignKey: "producto_id",
                otherKey: "talle_id",
                timestamps: false
            }),
            
            Producto.belongsTo(models.Genero, {   // el producto tiene un solo genero
                as: "Genero",
                foreignKey: "genero_id"
            }),

            Producto.belongsTo(models.Deporte, {   // el producto tiene un solo deporte
                as: "Deporte",
                foreignKey: "deporte_id"
            }),

            Producto.belongsTo(models.Marca, {   // el producto tiene una sola marca
                as: "Marca",
                foreignKey: "marca_id"
            }),

            Producto.belongsTo(models.Categoria, {   // el producto tiene una sola categoria
                as: "Categoria",
                foreignKey: "categoria_id"
            }),
            Producto.hasMany(models.Items,{    //  el producto tiene muchos items
                as: "Items",
                foreignKey: "producto_id"
            })
        };

        return Producto
    }