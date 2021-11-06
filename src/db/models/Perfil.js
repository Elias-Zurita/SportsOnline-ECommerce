module.exports = function(sequelize, dataTypes){
    let alias = "Perfil";
    
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
            tableName: "Perfil",
            timestamps: true // es true ya que la tabla se llama igual que el modelo
        }
    
        let Perfil = sequelize.define(alias,cols,config); 
    
        Perfil.associate = function(models){
            Perfil.hasMany(models.Usuarios, {   // el perfil tiene muchos usuarios
                as: "Usuario",
                foreignKey: "perfil_id"
            })
        }

        return Perfil
    }