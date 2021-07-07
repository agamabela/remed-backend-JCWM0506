const express = require('express')
const cors = require('cors')
const PORT = 2021

// main app
const app = express()

// apply middleware
app.use(cors())
app.use(express.json())


// main route
const {db} = require('./config/database')
db.getConnection((err, conn)=>{
    if(err){
        return console.error('Error mysql', err.message)
    }
    console.log(`Connected to mysql server:${conn.threadId}`)
})

const {clientRouter} = require('./router')

app.use('/sales', clientRouter)

app.use((error,req,res,next)=>{
    console.log("Handling error", error)
    res.status(500).send({status:'Error mysql', message:error})
})

// bind to local machine
app.listen(PORT, () => console.log("Server Running:", PORT))