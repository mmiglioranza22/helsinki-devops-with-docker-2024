const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send(
    `<div>
      <h1>Hello World!</h1>
      <h2>repo image pulled directly by Watchtower works!. ex. 3.1</h2>
      <h2>Testing auto deploy from docker image in repo to Render, second attempt... ex. 3.2</h2>
      </div>`
  );
});

const PORT = 8080;

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
