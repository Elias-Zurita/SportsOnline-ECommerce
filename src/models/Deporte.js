module.exports = function(sequelize, dataTypes){
    let alias = "Producto";

    let cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement : true
        },
        name: {
            type: dataTypes.STRING
        }
    }
    
    let config = {
        tableName: "sports",
        timestamps: false // es false ya que la tabla no se llama igual que el modelo (uno esta en ingles y el otro español)
    }

    let Deporte = sequelize.define(alias,cols,config); 

    return Deporte
}