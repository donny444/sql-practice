require("dotenv").config();
const express = require("express");

const pool = require("./pool.js");

pool.getConnection(function(err) {
    if (err) throw err;
    console.log("Connected")
});

const app = express();
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

const routes = require("./router/routes.js");

app.use("/", routes);

module.exports = app;