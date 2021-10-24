module.exports = function(sequelize, dataTypes){
    let alias = "Deporte";

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
        tableName: "Deporte",
        timestamps: true // es true ya que la tabla  se llama igual que el modelo
    }

    let Deporte = sequelize.define(alias,cols,config); 

    Deporte.associate = function(models){
        Deporte.hasMany(models.Producto, {   // el deporte tiene muchos productos
            as: "Producto",
            foreignKey: "deporte_id"
        })
    }

    return Deporte
}