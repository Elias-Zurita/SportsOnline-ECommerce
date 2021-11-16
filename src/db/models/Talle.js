module.exports = function(sequelize, dataTypes){
    let alias = "Talle";
    
        let cols = {
            id: {
                type: dataTypes.INTEGER,
                primaryKey: true,
                autoIncrement : true
            },
            talle: {
                type: dataTypes.STRING
            },
        }
        
        let config = {
            tableName: "talle",
            timestamps: true, // es true ya que la tabla se llama igual que el modelo
            underscored: true  // permite que se utilice el created_at y updated_at con guion bajo
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