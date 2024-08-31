const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send(
    "<h1>Hello World! version 3 pulled directly by Watchtower, third attempt!</h1>"
  );
});

const PORT = 8080;

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
