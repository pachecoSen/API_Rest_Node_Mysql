const mysql = require('mysql');

module.exports = () => {
  return mysql.createConnection({
    host: 'localhost',
    user: 'Sgbd',
    password: 'tu_contrasena',
    database: 'condominio'
  });
}