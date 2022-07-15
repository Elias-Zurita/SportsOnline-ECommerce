module.exports = function(sequelize, dataTypes){
    
    let alias = "Ordenes";
    
        let cols = {
            id: {
                type: dataTypes.INTEGER,
                primaryKey: true,
                autoIncrement : true
            },
            fecha: {
                allowNull: false,
                type: dataTypes.DATE
            },
            precio_total: {
                allowNull: false,
                type: dataTypes.DECIMAL
            },
            usuario_id: {
                allowNull: false,
                type: dataTypes.INTEGER
            },
            created_at: {
                allowNull: true,
                type: dataTypes.DATE
            },
            updated_at: {
                allowNull: true,
                type: dataTypes.DATE
            },
        }
        
        let config = {
            tableName: "ordenes",
            timestamps: true, // es true ya que la tabla se llama igual que el modelo
            underscored: true  // permite que se utilice el created_at y updated_at con guion bajo
        }
    
        let Ordenes = sequelize.define(alias,cols,config); 
        
        Ordenes.associate = function(models){
            Ordenes.hasMany(models.Items, {   // la orden tiene muchos items
                as: "Items",
                foreignKey: "ordenes_id"
            }),
            Ordenes.belongsTo(models.Usuario,{   // una orden pertenece a un usuario
                as:"Usuario",
                foreignKey:"usuario_id"
            });
        }

        return Ordenes
    }