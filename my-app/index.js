const express = require('express');
const app = express();

app.get('/', (req, res) => {
  throw new Error('Intentional exception!');
});

app.listen(3000, () => {
  console.log('App listening on port 3000');
});

