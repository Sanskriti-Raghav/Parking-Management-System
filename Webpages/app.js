const express = require("express");
const http = require('http');
const app = express();
const path = require('path');
const bodyParser = require('body-parser');

app.set("view engine", "ejs");
app.use(express.static(path.join(__dirname, "public")));
app.use(bodyParser.urlencoded({ extended: true }));

app.get('/', (req, res) => {
    console.log("Here");
    res.render("index");
});

app.post('/', (req, res) => {
    const { username, password } = req.body;
    console.log(`Received form submission: Username - ${username}, Password - ${password}`);
    res.json({ message: `Form submitted successfully! Username: ${username}, Password: ${password}` });
});

app.listen(3000, () => {
    console.log("Server is running on port 3000");
});
