const express = require("express");
const { getBills, getCustomers, getPosts } = require("../controller/controller.js");
const route = express.Router();

route.get("/bills", getBills);
route.get("/customers", getCustomers);
route.get("/posts", getPosts);

module.exports = route;