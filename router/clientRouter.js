const express = require('express')
const router = express.Router()
const {clientController} = require('../controller')

router.get('/get', clientController.getClients)
router.post('/add', clientController.addClients)
router.patch('/edit', clientController.editClient)
router.delete('/del',clientController.deleteClient)

module.exports=router