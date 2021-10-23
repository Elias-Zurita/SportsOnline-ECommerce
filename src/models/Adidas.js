module.exports = function(sequelize, dataTypes){
    let alias = "Adidas";
    
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
            precio: {
                type: dataTypes.INTEGER
            },
            talle: {
                type: dataTypes.INTEGER
            },
        }
        
        let config = {
            tableName: "Adidas",
            timestamps: true // es true ya que la tabla se llama igual que el modelo
        }
    
        let Adidas = sequelize.define(alias,cols,config); 
    
        return Adidas
    }