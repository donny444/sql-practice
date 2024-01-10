require("dotenv").config()
const http = require("http");

const app = require("./app.js");
const server = http.createServer(app);

const { PORT } = process.env;
const port = process.env.PORT || PORT;

server.listen(port, () => console.log(`Server is running on port ${port}`));