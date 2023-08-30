require("dotenv").config()
const http = require("http");
const express = require("express");
const mysql = require("mysql");

const app = express();
const server = http.createServer(app);

const { HOST, PORT } = process.env;
const host = process.env.HOST || HOST;
const port = process.env.PORT || PORT;


const pool = mysql.createPool({
    host: host,
    user: "root",
    password: "",
    database: "test"
})

pool.getConnection(function(err) {
    if (err) throw err;
    console.log("Connected")
})

server.listen(port, () => console.log(`Server is running on port ${port}`));