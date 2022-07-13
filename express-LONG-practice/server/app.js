const express = require('express');
const app = express();
const dogRouter = require('./routes/dogs');

require('express-async-errors');
app.use(express.json());

// For testing express.json middleware
app.post('/test-json', (req, res, next) => {
  res.json(req.body);
  next();
});

// For testing express-async-errors
app.get('/test-error', async (req, res) => {
  throw new Error('Hello World!');
});

// Get all static assests
app.use('/static', express.static('assets'));

////////////////////////////// LOG STATUS ///////////////////////////////////////

// Create function that prints the method, url and status
const logger = (req, res, next) => {
  const fullUrl = req.protocol + '://' + req.get('host') + req.originalUrl;
  const results = {
    method: req.method,
    URL: fullUrl,
    status: res.statusCode,
  };
  console.log(results);
  next();
};

// Call my logger function and console log codes
app.use('/log', logger, (req, res) => {
  res.on('finish', () => {
    console.log('Final Status Code: ', res.statusCode);
  });
  res.end();
});

// Our home page
app.get('/', (req, res) => {
  console.log('Root Status Code', res.statusCode);
  res.json(
    'Express server running. No content provided at root level. Please use another route.'
  );
});

//////////////////////////// ROUTER HANDLING /////////////////////////////
app.use('/dogs', dogRouter);

///////////////////////////// ERROR HANDLING /////////////////////////////////////

// Create a middleware function that throws an error
app.use((req, res, next) => {
  const error = new Error('You are in the wrong place BUB!');
  error.statusCode = 404;
  next(error);
});

// create a function that handles the error
app.use((err, req, res, next) => {
  if (process.env.NODE_ENV === 'production') {
    console.log('Handler Error:', err);
    res.statusCode = err.statusCode || 500;
    console.log('Response Status Code: ', res.statusCode);
    res.json({
      message: err.message,
      statusCode: err.statusCode,
      stack: err.stack,
    });
  } else {
    console.log(process.env.NODE_ENV);
    console.log('Handler Error:', err);
    res.statusCode = err.statusCode || 500;
    console.log('Response Status Code: ', res.statusCode);
    res.json({
      message: err.message,
      statusCode: err.statusCode,
    });
  }
});

const port = process.env.PORT;
app.listen(port, () => console.log('Server is listening on port', port));
