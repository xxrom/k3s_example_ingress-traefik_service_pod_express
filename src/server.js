const express = require("express");
const app = express();
const port = 3000;
const { networkInterfaces } = require("os");

app.get("/", (req, res) => {
  const nets = networkInterfaces();

  res.send(JSON.stringify(nets));
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
