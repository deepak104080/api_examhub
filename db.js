const mysql = require('mysql2');

module.exports = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    passowrd: '',
    database: 'online_exam'
});