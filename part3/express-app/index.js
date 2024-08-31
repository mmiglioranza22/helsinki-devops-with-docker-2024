const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send(
    `<div>
      <h1>Hello World!</h1>
      <h2>repo image pulled directly by Watchtower works!. ex. 3.1</h2>
      <h2>Testing auto deploy from docker image in repo to Render works!. ex. 3.2</h2>
      </div>`
  );
});

// Bind port from render docs
// https://docs.render.com/web-services?_gl=1%2A7malj6%2A_gcl_au%2AMTA0MTYyMjA5Mi4xNzIzMDQxMTg0%2A_ga%2AMTc0Mjg5NzAxNC4xNzIzMDQxMTg0%2A_ga_QK9L9QJC5N%2AMTcyNTE0NDE3MS4yOC4xLjE3MjUxNDQ5NDkuNjAuMC4w#port-binding
const PORT = process.env.PORT || 8080;

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
