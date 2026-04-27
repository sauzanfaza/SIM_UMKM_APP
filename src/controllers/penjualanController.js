const db = require('../config/db')

exports.getPenjualan = (req, res) => {
    const sql = `
        SELECT dp.*, p.nama_produk, p.harga
        FROM detail_penjualan dp
        JOIN produk p ON dp.id_produk = p.id_produk
    `

    db.query(sql, (err, result) => {
        if (err) return res.status(500).json(err)
        res.json(result)
    })
}

exports.createPenjualan = (req, res) => {
  const { id_produk, stok_awal } = req.body

  const today = new Date().toISOString().slice(0, 10)

  // 1. cek penjualan hari ini
  const cekSql = `SELECT * FROM penjualan_harian WHERE tanggal = ?`

  db.query(cekSql, [today], (err, result) => {
    if (err) return res.status(500).json(err)

    if (result.length > 0) {
      insertDetail(result[0].id_penjualan)
    } else {
      // 2. buat penjualan baru
      const insertPenjualan = `INSERT INTO penjualan_harian (tanggal) VALUES (?)`

      db.query(insertPenjualan, [today], (err, result2) => {
        if (err) return res.status(500).json(err)

        insertDetail(result2.insertId)
      })
    }
  })

  function insertDetail(id_penjualan) {
    const sql = `
      INSERT INTO detail_penjualan 
      (id_penjualan, id_produk, stok_awal, stok_akhir, jumlah_terjual, subtotal)
      VALUES (?, ?, ?, 0, 0, 0)
    `

    db.query(sql, [id_penjualan, id_produk, stok_awal], (err) => {
      if (err) return res.status(500).json(err)

      res.json({ message: "Data berhasil masuk" })
    })
  }
}