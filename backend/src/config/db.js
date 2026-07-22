const mysql = require('mysql2');
const { Connection } = require('mysql2/promise');
require('dotenv').config();

const db = mysql.createPool({
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
})

// cek koneksi 
db.getConnection((err, connection) => {
  if(err) {
    console.log("Gagal connect euy!!")
    console.log(err)
  } else {
    console.log("MySQL dah connect yeayy")
    connection.release()
  }
})

module.exports = db