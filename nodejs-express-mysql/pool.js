const mysql = require("mysql");

const { HOST } = process.env;
const host = process.env.HOST || HOST;

const pool = mysql.createPool({
    host: host,
    user: "root",
    password: "",
    database: "test"
})

module.exports = pool;