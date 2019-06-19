const express = require("express");
const app = express();

app.get("/ejemplo", (req, res) => {
  res.send("ejemplo con docker");
});

app.listen(8080, "0.0.0.0");

module.exports = app;
