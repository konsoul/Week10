const express = require('express');
const app = express();

/* Routing Methods, take two arguments. The path i.e '/posts' and a callback function to execute and actoin and return a response the user
.get()
.post()
.put()
.delete()
.patch()
*/

///////////////////// GET ///////////////////////////
// Get the root, send a message ORDER IMPORTANT
app.get('/', (req, res) => {
  res.send('Hello world');
});

app.get('/status', (req, res) => {
  res.send('The server is alive!');
});

// Send JSON data
app.get('/json', (req, res) => {
  const resp = {
    prop1: 'value1',
    prop2: 'value2',
  };
  res.json(resp);
});

///////////////////// MUTLIPLE ROUTE HANDLING ////////////////////////
app.get(['/welcome', '/hello'], (req, res) => {
  res.send('Welcome');
});

// app.get('/welcome', (req, res) => {
//   res.send('Welcome Page');
// });

// app.get('/hello', (req, res) => {
//   res.send('Hello Page');
// });

app.get('*', (req, res) => {
  res.send('404');
});

///////////////////// POST ///////////////////////////
const data = {
  users: [],
};
app.post('/users', (req, res) => {
  let newUser = {
    name: 'dumb',
    age: 68,
  };
  data.users.push(newUser);
  res.send(newUser);
});

app.get('/users', (req, res) => {
  res.send(data.users);
});

const port = 3000;
app.listen(port, () => console.log(`server is listening on ${port}`));
