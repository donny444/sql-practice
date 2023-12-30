var mysql = require('mysql');
const transaction = require("./transaction.js");

//XAMPP
var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "test"
});

con.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
});

/*
//C
var sql = "INSERT INTO customers (name, address) VALUES ('Company Inc', 'Highway 37')";
con.query(sql, function (err) {
    if (err) throw err;
    console.log("Table created");
});

//R
var sql = "SELECT * FROM customers";
con.query(sql, function (err, result, fields) {
    if (err) throw err;
    console.log(result);
});

//U
var sql = "UPDATE customers SET address = 'Highway 44' WHERE address = 'Highway 37'";
con.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result.affectedRows + " record(s) updated");
});

//D
var sql = "DELETE FROM customers WHERE name = 'Company Inc'";
con.query(sql, function (err, result) {
    if (err) throw err;
    console.log("Number of records deleted: " + result.affectedRows);
});
*/

const postTitle = "So What";
const body = "Testing MySQL transaction via nodejs";
const billTitle = "My Third Bill";
const amount = 11.11;
const paid = true;

transaction(con);

//con.end();

//Source: https://www.w3schools.com/nodejs/nodejs_mysql.asp