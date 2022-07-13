// Instantiate Express and the application
const express = require('express');
const app = express();
const sqlite3 = require('sqlite3');
require('dotenv').config();

// connect to database
const db = new sqlite3.Database(
  process.env.DATA_SOURCE,
  sqlite3.OPEN_READWRITE
);

// Express using json
app.use(express.json());

// List of all colors in the database
app.get('/colors', (req, res, next) => {
  const sql = 'SELECT * FROM colors';
  const params = [];

  db.all(sql, params, (err, rows) => {
    res.json(rows);
  });
});

// One color by id
app.get('/colors/:id', (req, res, next) => {
  /**
   * STEP 2A - SQL Statement
   */
  const sql = 'SELECT * FROM colors WHERE ?';
  /**
   * STEP 2B - SQL Parameters
   */
  const params = [req.params.id];
  /**
   * STEP 2C - Call database function
   *  - return response
   */
  db.get(sql, params, (err, row) => {
    res.json(row);
  });
});

// Add color
app.get('/colors/add/:name', (req, res, next) => {
  // SQL INSERT
  const sql = 'INSERT INTO colors (name) VALUES (?)';
  const params = [req.params.name];

  // SQL QUERY NEW ROW
  const sqlLast = 'SELECT * FROM colors ORDER BY id DESC LIMIT 1';

  /**
   * STEP 3 - After INSERT, return the new row
   *  - insert
   *  - if error, go to next()
   *  - if no error, query for new row
   *  - return new row
   */
  db.all(sql, params, (err, row) => {
    if (err) {
      next(err);
    } else {
      db.get(sqlLast, (err, row) => {
        res.json(row);
      });
    }
  });
});

// Root route - DO NOT MODIFY
app.get('/', (req, res) => {
  res.json({
    message: 'API server is running',
  });
});

// Set port and listen for incoming requests - DO NOT MODIFY
const port = 5000;
app.listen(port, () => console.log('Server is listening on port', port));
