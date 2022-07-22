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
            pais:{
                type: dataTypes.STRING
            },
            direccion:{
                type:dataTypes.STRING
            },
            codigo_postal:{
                type:dataTypes.INTEGER
            },
            fecha_de_nacimiento:{
                type: dataTypes.DATE
            },
            telefono:{
                type: dataTypes.STRING
            },
            perfil_id:{
                type: dataTypes.INTEGER
            },
            created_at:    {
                allowNull: true,
                 type: dataTypes.DATE
             },
             updated_at:
             {
                 allowNull: true,
                 type: dataTypes.DATE
             },
        }
        
        let config = {
            tableName: "usuario",
            timestamps: true, // es true ya que la tabla se llama igual que el modelo
            underscored: true  // permite que se utilice el created_at y updated_at con guion bajo
        }
    
        let Usuario = sequelize.define(alias,cols,config); 
        
        Usuario.associate = function(models){
            Usuario.belongsTo(models.Perfil, {   // el usuario tiene un solo perfil
                as: "Perfil",
                foreignKey: "perfil_id"
            }),
            /*
            Usuario.hasMany(models.Ordenes,{   // el usuario tiene muchas ordenes
                as:"Ordenes",                       
                foreignKey:"usuario_id"
            }),   blue nami no lo tiene */ 
            
            Usuario.hasMany(models.Items,{   // el usuario tiene muchos items
                as: "Items2",
                foreignKey: "usuario_id"
            });
        }

        return Usuario
    }