module.exports = function(sequelize, dataTypes){
    let alias = "Perfil";
    
        let cols = {
            id: {
                type: dataTypes.INTEGER,
                primaryKey: true,
                autoIncrement : true
            },
            nombre: {
                allowNull: false,
                type: dataTypes.STRING
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
            tableName: "perfil",
            timestamps: true, // es true ya que la tabla se llama igual que el modelo
            underscored: true  // permite que se utilice el created_at y updated_at con guion bajo
        }
    
        let Perfil = sequelize.define(alias,cols,config); 
    
        Perfil.associate = function(models){
            Perfil.hasMany(models.Usuario, {   // el perfil tiene muchos usuarios
                as: "Usuario",
                foreignKey: "perfil_id"
            })
        }

        return Perfil
    }