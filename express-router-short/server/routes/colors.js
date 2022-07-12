const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
  res.json('poop');
});

router.post('/colors/:name/css-styles', (req, res) => {
  res.json('POST/colors/:name/css-styles');
});

module.exports = router;
