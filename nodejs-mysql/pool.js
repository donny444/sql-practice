const mysql = require("mysql");
var pool = mysql.createPool({
    connectionLimit: 10,
    host: "example.org",
    user: "bob",
    password: "secret",
    database: "my_db"
});

pool.query("SELECT 1 + 1 AS solution", function (error, results, fields) {
    if (error) throw error;
    console.log("The solution is: ", results[0].solution);
})

pool.getConnection(function(err, connection) {
    if (err) throw err; // not connected!

    // Use the connection
    connection.query("SELECT something FROM sometable", function (error, results, fields) {
        // When done with the connection, release it
        connection.release();

        // Handle error after the release.
        if (error) throw error;

        // Don't use the connection here, it has been returned to the pool.
    })
})

pool.on("acquire", function (connection) {
    console.log("Connection %d acquired", connection.threadId);
})

pool.on("connection", function (connection) {
    connection.query("SET SESSION auto_increment_increment=1");
})

pool.on("enqueue", function () {
    console.log("Waiting for available connection slot");
})

pool.on("release", function (connection) {
    console.log("Connection %d released", connection.threadId);
})

pool.end(function (err) {
    // all connections in the pool have ended
})

const poolCluster = mysql.createPoolCluster();

poolCluster.add(config);
poolCluster.add("MASTER", masterConfig);
poolCluster.add("SLAVE1", slave1Config);
poolCluster.add("SLAVE2", slave2Config);

poolCluster.remove("SLAVE2");
poolCluster.remove("SLAVE*");

poolCluster.getConnection(function (err, connection) {});

poolCluster.getConnection("MASTER", function (err, connection) {});

poolCluster.on("remove", function (nodeId) {
    console.log("REMOVE NODE : " + nodeId);
});

poolCluster.getConnection("SLAVE*", "ORDER", function (err, connection) {});

poolCluster.getConnection(/SLAVE[12]/, function(err, connection) {});

poolCluster.of("*").getConnection(function (err, connection) {});

var pool = poolCluster.of("SLAVE*", "RANDOM");
pool.getConnection(function (err, connection) {});
pool.getConnection(function (err, connection) {});
pool.query(function (error, results, fields) {});

poolCluster.end(function (err) {

});