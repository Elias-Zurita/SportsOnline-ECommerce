module.exports = function(sequelize, dataTypes){
    let alias = "Talle";
    
        let cols = {
            id: {
                type: dataTypes.INTEGER,
                primaryKey: true,
                autoIncrement : true
            },
            numero: {
                type: dataTypes.INTEGER
            },
        }
        
        let config = {
            tableName: "Talle",
            timestamps: true // es true ya que la tabla se llama igual que el modelo
        }
    
        let Talle = sequelize.define(alias,cols,config); 
        
        Talle.associate = function(models){
            Talle.belongsToMany(models.Producto, {   // un talle tiene muchos productos, y producto tiene muchos talles
                as: "Producto",
                through: "producto_talle",   // nombre de la tabla pivot 
                foreignKey: "talle_id",
                otherKey: "producto_id",
                timestamps: false
            })
        }

        return Talle
    }