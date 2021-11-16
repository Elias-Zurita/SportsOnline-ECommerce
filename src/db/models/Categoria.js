module.exports = function(sequelize, dataTypes){
    let alias = "Categoria";

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
        tableName: "categoria",
        timestamps: false, 
        underscored: true  // permite que se utilice el created_at y updated_at con guion bajo
    }

    let Categoria = sequelize.define(alias,cols,config); 

    Categoria.associate = function(models){
        Categoria.hasMany(models.Producto, {   // la categoria tiene muchos productos
            as: "Producto",
            foreignKey: "categoria_id"
        })
    }

    return Categoria
}