module.exports = function(sequelize, dataTypes){
let alias = "Futbol";

    let cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement : true
        },
        pelotas: {
            type: dataTypes.STRING
        },
        camisetas: {
            type: dataTypes.STRING
        },
        equipos: {
            type: dataTypes.STRING
        },
        genero: {
            type: dataTypes.STRING
        },
        marca: {
            type: dataTypes.STRING
        }
    }
    
    let config = {
        tableName: "football",
        timestamps: false // es false ya que la tabla no se llama igual que el modelo (uno esta en ingles y el otro español)
    }

    let Futbol = sequelize.define(alias,cols,config); 

    return Futbol
}