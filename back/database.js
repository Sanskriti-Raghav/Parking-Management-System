import mysql from'mysql2'
const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: 'mysql_mysql_1!',
    database: 'gopark',

}).promise()
/*
async function getNotes(){
    const [rows]= await pool.query("select * from park")
    return rows
}
async function getNote(id){
    const [rows]= await pool.query(
        "select * from park where vehtype=?",[id]
    )
    return rows
}
const note = await getNote(4)
console.log(note)
*/

// user details entered into sql
async function createUser(name,phone,pwd){
    await pool.query(
        "Insert into user (name, phone, pwd) values(?,?,?)",[name,phone,pwd]
    )  
}
/*
await createUser('Kriti',9876543210,'kriti@123')
*/

// vehicle details
async function addVehDet(vehno,vehtype){
    await pool.query(
        "Insert into booking (vehno,vehtype) values(?,?)",[vehno,vehtype]
    )  
}
await addVehDet("KA05XY8769",2)

//level selection
async function levelsel(level){
    await pool.query(
        "Insert into booking (level) values(?)",[level]
    )  
}
await addVehDet(2)

//parking slot
async function parkslot(vehtype,level){
    const [rows]= await pool.query(
        "select * from park where vehtype=? and level=?",[vehtype,level]
    )
    return rows
}
const note = await parkslot(vehtype,level)
console.log(note)

// enter slot
async function slotbook(level,slot){
    await pool.query(
        "Update table park set avail='N' where level=? and slot=?",[level,slot]
    )  
}
await slotbook(level,slot)

//current user details
async function final(vehno,slot){
    const [rows]= await pool.query(
        "select * from booking where vehno=? and slot=?",[vehno,slot]
    )
    return rows
}
const vote = await parkslot(vehno,slot)
console.log(vote)
