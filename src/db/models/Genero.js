module.exports = function(sequelize, dataTypes){
    let alias = "Genero";
    
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
            tableName: "genero",
            timestamps: true, // es true ya que la tabla se llama igual que el modelo
            underscored: true  // permite que se utilice el created_at y updated_at con guion bajo
        }
    
        let Genero = sequelize.define(alias,cols,config); 
    
        Genero.associate = function(models){
            Genero.hasMany(models.Producto, {   // el genero tiene muchos productos
                as: "Producto",
                foreignKey: "genero_id"
            })
        }

        return Genero
    }