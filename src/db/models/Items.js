module.exports = function(sequelize, dataTypes){
    
    let alias = "Items"
    
        let cols = {
            id: {
                type: dataTypes.INTEGER,
                primaryKey: true,
                autoIncrement : true
            },
            cantidad: {
                allowNull: true,
                type: dataTypes.INTEGER
            },
            subtotal: {
                allowNull: true,
                type: dataTypes.DECIMAL
            },
            producto_id:{
                allowNull: false,
                type: dataTypes.STRING
            },
            ordenes_id:{
                allowNull: true,
                type: dataTypes.INTEGER
            },
            usuario_id:{
                allowNull: false,
                type: dataTypes.INTEGER
            },
            imagen: {
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
            tableName: "items",
            timestamps: true, // es true ya que la tabla se llama igual que el modelo
            underscored: true  // permite que se utilice el created_at y updated_at con guion bajo
        }
    
        let Items = sequelize.define(alias,cols,config)
        
        Items.associate = function(models){
            Items.belongsTo(models.Usuario, {   // el item tiene un solo usuario
                as: "Usuario",
                foreignKey: "usuario_id"
            }),
            Items.belongsTo(models.Ordenes,{   // el item tiene una sola orden
                as:"Ordenes",
                foreignKey:"ordenes_id"
            }),
            Items.belongsTo(models.Producto,{   // el item tiene un solo producto
                as:"Producto",
                foreignKey:"producto_id"
            })
        }

        return Items
    }