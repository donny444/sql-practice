var mysql = require("mysql");

function ping(con) {
    con.ping(function (err) {
        if (err) throw err;
        console.log("pong");
    })
}

module.exports = ping;