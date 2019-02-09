const express = require("express");
const app = express();
const port = 3000;

//import the library
const amqplib = require("amqplib");

//queue channel
let channel = null;
//queue name
const QUEUE = "test";

function init() {
  return amqplib
    .connect("amqp://rabbitmq-server:5672")
    .then(conn => conn.createChannel())
    .then(ch => {
      channel = ch;

      const q = 'hello';

      ch.assertQueue(q, { durable: false });
      // Note: on Node 6 Buffer.from(msg) should be used
      ch.sendToQueue(q, new Buffer('Hello World!'));
      console.log(" [x] Sent 'Hello World!'");
    });
}

//Random id generator
function randomid() {
  return (
    new Date().getTime().toString() +
    Math.random().toString() +
    Math.random().toString()
  );
}

app.get("/", (req, res) => {
  init();
  res.status(200).send('Message sent');
});

app.listen(port, () => console.log("Example app listening on port 3000!"))
