const mysql = require('mysql2')
require('dotenv').config();

// console.log(process.env.DB_HOST);
// console.log(process.env.DB_USER);
// console.log(process.env.DB_NAME);

// const db = mysql.createPool({
//     host: process.env.DB_HOST,
//     user: process.env.DB_USER,
//     password: process.env.DB_PASSWORD,
//     database: process.env.DB_NAME,
//     waitForConnections: true,
//     connectionLimit: 10,
//     queueLimit: 0
// })

const db = mysql.createPool({
  host: "127.0.0.1",
  port: 3306,
  user: "root",
  password: "",
  database: "umkm_db",
});

db.getConnection((err, conn) => {
  if (err) {
    console.log("Gagal connect");
    console.log(err);
    return;
  }

  console.log("Connected!");
  conn.release();
});




// db.connect((err) => {
//     if(err) {
//         console.log('DB Error: ', err)
//     } else {
//         console.log("MySQL Connected")
//     }
// }) klo pke pool ini gk perrlu

module.exports = db