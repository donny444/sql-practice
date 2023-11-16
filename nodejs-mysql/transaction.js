connection.beginTransaction(function (err) {
    if (err) { throw err; }
    connection.query("INSERT INTO posts SET title=?", title, function (error, results, fields) {
        if (error) {
            return connection.rollback(function() {
                throw error;
            });
        }

        const log = "Post " + results.insertId + " added";

        connection.query("INSERT INTO log SET data=?", log, function (error, results, fields) {
            if (error) {
                return connection.rollback(function() {
                    throw error;
                });
            }
            connection.commit(function(err) {
                if (err) {
                    return connection.rollback(function() {
                        throw err;
                    })
                }
                console.log("success!");
            });
        });
    });
});