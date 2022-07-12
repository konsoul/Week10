const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('poop');
});

app.get('/dosomethingbad', (req, res) => {
  let x = referenceThis + 5;
  res.json('you will never do this');
});

app.use((req, res, next) => {
  const error = new Error('You are screwed');
  error.statusCode = 404;
  next(error);
});

app.use((err, req, res, next) => {
  if (err.statusCode === 404) {
    res.json({ message: err.name, statusCode: err.message });
  }

  if (err.statusCode === 500) {
    res.status(500);
    res.json({ message: err.name, statusCode: err.message });
  }
});

const port = 5000;
app.listen(port, () => console.log('Server is listening on port', port));
