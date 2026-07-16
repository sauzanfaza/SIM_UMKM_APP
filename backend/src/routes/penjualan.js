const express = require('express')
const router = express.Router()
const penjualanController = require('../controllers/penjualanController')

router.get('/', penjualanController.getPenjualan)
router.post('/', penjualanController.createPenjualan)
router.put('/:id', penjualanController.updatePenjualan)
router.patch('/:id/stok-awal', penjualanController.updateStokAwal)
router.get('/tanggal-aktif', penjualanController.getTanggalAktif)
router.patch('/:id/closing', penjualanController.closingHarian)
router.delete('/:id', penjualanController.deleteProductActive)

module.exports = router