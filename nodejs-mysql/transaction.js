var mysql = require("mysql");

const postTitle = "Hello MySQL";
const body = "Testing MySQL transaction via nodejs";
const billTitle = "My Fourth Bill";
const amount = 4.44;
const paid = true;

function transaction(con) {
    con.beginTransaction(function (err) {
        if (err) { throw err; }
        con.query("INSERT INTO posts VALUES (id, ?, ?)", [postTitle, body], function (error, results, fields) {
            if (error) {
                return con.rollback(function() {
                    throw error;
                });
            }

            const postLog = "Post " + results.insertId + " added";

            con.query("INSERT INTO bills VALUES (id, ?, ?, ?)", [billTitle, amount, paid], function (error, results, fields) {
                if (error) {
                    return con.rollback(function() {
                        throw error;
                    });
                }

                const billLog = "Bill " + results.insertId + " added";

                con.commit(function(err) {
                    if (err) {
                        return con.rollback(function() {
                            throw err;
                        })
                    }
                    
                    console.log(postLog);
                    console.log(billLog);
                });
            });
        });
    });
}

module.exports = transaction