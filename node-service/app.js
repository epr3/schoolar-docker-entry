const express = require("express");
const app = express();
const port = 3000;

//import the library
const Redis = require("ioredis");
const publisher = new Redis(6379, 'redis');


app.get("/", (req, res) => {
  publisher.publish("hello.created", "Hello World!");
  res.status(200).send('Message sent');
});

app.get("/test", (req, res) => {
  publisher.publish("test.created", "Hello Test!");
  res.status(200).send('Message sent');
});

app.listen(port, () => console.log("Example app listening on port 3000!"))
