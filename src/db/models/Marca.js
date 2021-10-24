module.exports = function(sequelize, dataTypes){
let alias = "Marca";

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
        tableName: "Marca",
        timestamps: false // es true ya que la tabla  se llama igual que el modelo
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