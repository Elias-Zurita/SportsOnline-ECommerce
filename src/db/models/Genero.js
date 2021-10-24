module.exports = function(sequelize, dataTypes){
    let alias = "Genero";
    
        let cols = {
            id: {
                type: dataTypes.INTEGER,
                primaryKey: true,
                autoIncrement : true
            },
            name: {
                type: dataTypes.STRING
            },
        }
        
        let config = {
            tableName: "Genero",
            timestamps: true // es true ya que la tabla se llama igual que el modelo
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