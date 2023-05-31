'use strict';

const fs = require('fs');
const path = require('path');
const Sequelize = require('sequelize');
const basename = path.basename(__filename);
const env = process.env.NODE_ENV || 'development';
const config = require(__dirname + '/../config/config.js')["production"];
const db = {};

let sequelize;
sequelize = new Sequelize("br0wcocayjps2mkjbera", "uok98q8eytclinmf", "7Ig2zSA4hPlSdJl12JQZ", {
  host:"br0wcocayjps2mkjbera-mysql.services.clever-cloud.com",
  port: "3306",
  dialect: "mysql",
  pool: { 
    max: 4,
    min: 0,
    idle: 15000
  }
});
/*
if (config.use_env_variable) {
  sequelize = new Sequelize(process.env[config.use_env_variable], config);
} else {
  
}
*/
fs
  .readdirSync(__dirname)
  .filter(file => {
    return (file.indexOf('.') !== 0) && (file !== basename) && (file.slice(-3) === '.js');
  })
  .forEach(file => {
    const model = require(path.join(__dirname, file))(sequelize, Sequelize.DataTypes);
    db[model.name] = model;
  });

Object.keys(db).forEach(modelName => {
  if (db[modelName].associate) {
    db[modelName].associate(db);
  }
});

db.sequelize = sequelize;
db.Sequelize = Sequelize;

module.exports = db;
