var app = require('express')()

app.get('/hello', function (req, res) {
  var text = ''
  for (i = 0; i < 10000; i++) { 
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
