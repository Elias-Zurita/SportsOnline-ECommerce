module.exports = function(sequelize, dataTypes){
    let alias = "Deporte";

    let cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement : true
        },
        nombre: {
            type: dataTypes.STRING
        }
    }
    
    let config = {
        tableName: "deporte",
        timestamps: false, 
        underscored: true  // permite que se utilice el created_at y updated_at con guion bajo
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