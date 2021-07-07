const {db,dbQuery} = require('../config/database')

module.exports={
    getClients:async(req,res,next)=>{
        try{
            let dataSearch =[],getSQL
            for(let prop in req.query){
                dataSearch.push(`${prop}=${db.escape(req.query[prop])}`)
            }
            if(dataSearch.length>0){
                getSQL=`Select * from tb_clients where ${dataSearch.join('AND')};`
            }else{
                getSQL = `Select * from tb_clients;`
            }
            let get = await dbQuery(getSQL)
            res.status(200).send(get)
        } catch(error){
            next (error)
        }
    },
    addClients:async(req,res,next)=>{
        try{
            
            let insertSQL = `Insert into tb_clients (name, address, no_hp, zip_code, credit, id_sales) 
            values (${db.escape(req.body.name)}, ${db.escape(req.body.address)},${db.escape(req.body.no_hp)}, ${db.escape(req.body.zip_code)}, ${db.escape(req.body.credit)},${db.escape(req.body.id_sales)} );`
             let regis = await dbQuery(insertSQL)
             let getClients = await dbQuery(`Select * from tb_clients where idclient = ${regis.insertId}`)
            insertSQL = await dbQuery(insertSQL)
            if(insertSQL.insertId){
                let get = `Select * from tb_clients where idclient = ${insertSQL.insertId}`
                get = await dbQuery(get)
                res.status(200).send(get)

            }
 
         }catch (error){
             next(error)
         }   

       
    },
    editClient:async(req,res,next)=>{
        try{
            let update = `Update tb_clients set name=${db.escape(req.body.name)}, address=${db.escape(req.body.address)}, no_hp=${db.escape(req.body.no_hp)},zip_code=${db.escape(req.body.zip_code)}, credit=${db.escape(req.body.credit)},id_sales=${db.escape(req.body.id_sales)} where idclient= ${req.query.idclient};`
            update = await dbQuery(update)
            res.status(200).send({message: `client with id ${idclient} has been updated`})
        }
        catch{

        }
    },
    deleteClient:async(req,res,next)=>{
        try{
            let del = `Delete from tb_clients where idclients = ${req.query.idclient};`
            del = await dbQuery(del)
            res.status(200).send({message: `client with id ${req.query.idclient} has been deleted!`})
        }
        catch{

        }
    }
}