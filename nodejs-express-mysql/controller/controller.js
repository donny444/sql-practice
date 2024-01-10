const pool = require("../pool.js");

async function getBills(req, res) {
    try {
        const query = `SELECT * FROM bills`;
        pool.query(query, function(err, results) {
            if (err) throw err;
            return res.status(200).json(results);
        })
    } catch(err) {
        console.error(err)
    }
}

async function getCustomers(req, res) {
    try {
        const query = `SELECT * FROM customers`;
        pool.query(query, function(err, results) {
            if (err) throw err;
            return res.status(200).json(results);
        })
    } catch(err) {
        console.error(err);
    }
}

async function getPosts(req, res) {
    try {
        const query = `SELECT * FROM posts`;
        pool.query(query, function(err, results) {
            if (err) throw err;
            return res.status(200).json(results);
        })
    } catch(err) {
        console.error(err);
    }
}

module.exports = { getBills, getCustomers, getPosts };