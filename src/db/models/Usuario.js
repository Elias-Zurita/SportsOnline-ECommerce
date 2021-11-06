module.exports = function(sequelize, dataTypes){
    let alias = "Usuario";
    
        let cols = {
            id: {
                type: dataTypes.INTEGER,
                primaryKey: true,
                autoIncrement : true
            },
            nombre: {
                type: dataTypes.STRING
            },
            apellido: {
                type: dataTypes.STRING
            },
            email: {
                type: dataTypes.STRING 
            },
            contraseña:{
                type: dataTypes.STRING
            },
            avatar:{
                type: dataTypes.STRING
            },
            perfil_id:{
                type: dataTypes.INTEGER
            },
        }
        
        let config = {
            tableName: "Usuario",
            timestamps: true // es true ya que la tabla se llama igual que el modelo
        }
    
        let Usuario = sequelize.define(alias,cols,config); 
        
        Usuario.associate = function(models){
            Usuario.belongsTo(models.perfil, {   // el usuario tiene un solo perfil
                as: "perfil",
                foreignKey: "perfil_id"
            });
        }

        return Usuario
    }