const mysql2 = require("mysql2")

module.exports = 
{
  "development": {
    "username": "root",
    "password": null,
    "database": "sportsOnline_db",
    "host": "127.0.0.1",
    "dialect": "mysql",
    "dialectModule": mysql2
  },
  "test": {
    "username": "root",
    "password": null,
    "database": "database_test",
    "host": "127.0.0.1",
    "dialect": "mysql"
  },
  "production": {
    "username": "uok98q8eytclinmf",
    "password": "7Ig2zSA4hPlSdJl12JQZ",
    "database": "br0wcocayjps2mkjbera",
    "host": "br0wcocayjps2mkjbera-mysql.services.clever-cloud.com",
    "port": "3306",
    "dialect": "mysql"
  }
}
