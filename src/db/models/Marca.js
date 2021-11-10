module.exports = function(sequelize, dataTypes){
    let alias = "Marca";
    
        let cols = {
            id: {
                type: dataTypes.INTEGER,
                primaryKey: true,
                autoIncrement : true
            },
            nombre: {
                type: dataTypes.STRING
            },
        }
        
        let config = {
            tableName: "marca",
            timestamps: true, // es true ya que la tabla  se llama igual que el modelo
            underscored: true  // permite que se utilice el created_at y updated_at con guion bajo
        }
    
        let Marca = sequelize.define(alias,cols,config); 
    
        
        Marca.associate = function(models){
            Marca.hasMany(models.Producto, {   // una marca tiene muchos productos
                as: "Producto",
                foreignKey: "marca_id"
            })
        }
    
        return Marca
    }