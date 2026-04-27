const express = require('express')
const router = express.Router()
const penjualanController = require('../controllers/penjualanController')

router.get('/', penjualanController.getPenjualan)
router.post('/', penjualanController.createPenjualan)

module.exports = router