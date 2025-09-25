const express = require('express');
const app = express();
app.get('/', (req, res) => {
  res.send('Hello CI/CD with GitHub and Azure Container Apps! Enfinnn !! !! youyou youuuuu ');
});
const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log(`App running on http://localhost:${port}`);
});


