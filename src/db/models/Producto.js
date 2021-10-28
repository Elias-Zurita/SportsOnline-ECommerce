module.exports = function(sequelize, dataTypes){
    let alias = "Producto";
    
        let cols = {
            id: {
                type: dataTypes.INTEGER,
                primaryKey: true,
                autoIncrement : true
            },
            precio: {
                type: dataTypes.INTEGER
            },
            descripcion: {
                type: dataTypes.STRING
            },
            genero_id: {
                type: dataTypes.STRING 
            },
            talle_id:{
                type: dataTypes.INTEGER
            },
            deporte_id:{
                type: dataTypes.STRING
            },
            marca_id:{
                type: dataTypes.STRING
            },
            categoria_id:{
                type: dataTypes.STRING
            },
        }
        
        let config = {
            tableName: "Producto",
            timestamps: true // es true ya que la tabla se llama igual que el modelo
        }
    
        let Producto = sequelize.define(alias,cols,config); 
    
        Producto.associate = function(models){
            Producto.belongsTo(models.Genero, {   // el producto tiene un solo genero
                as: "Genero",
                foreignKey: "genero_id"
            });

            Producto.belongsToMany(models.Talle, {   // un talle tiene muchos productos, y producto tiene muchos talles
                as: "Talle",
                through: "producto_talle",   // nombre de la tabla pivot 
                foreignKey: "producto_id",
                otherKey: "talle_id",
                timestamps: false
            });

            Producto.belongsTo(models.Categoria, {   // el producto tiene una sola categoria
                as: "Categoria",
                foreignKey: "categoria_id"
            });

            Producto.belongsTo(models.Deporte, {   // el producto tiene un solo deporte
                as: "Deporte",
                foreignKey: "deporte_id"
            });
                
            Producto.belongsTo(models.Marca, {   // el producto tiene una sola marca
                as: "Marca",
                foreignKey: "marca_id"
            });
        }

        return Producto
    }