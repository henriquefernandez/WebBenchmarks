var app = require('express')()
const { sleep } = require('sleep');

app.get('/sleep', function (req, res) {
  sleep('1');

  res.send("");
})

app.get('/10000', function (req, res) {
  var text = ''
  for (i = 0; i < 10000; i++) {
    text = text + i;
  }
  res.send(text)
})

app.get('/1000', function (req, res) {
  var text = ''
  for (i = 0; i < 100; i++) {
    text = text + i;
  }
  res.send(text)
})

app.get('/100', function (req, res) {
  var text = ''
  for (i = 0; i < 100; i++) {
    text = text + i;
  }
  res.send(text)
})

app.get('/', function (req, res) {
  res.json({"text":"benchmark"})
})


app.listen(5000, function () {
  console.log('Example app listening on port 5000!')
})
