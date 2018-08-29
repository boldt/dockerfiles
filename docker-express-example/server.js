var express = require('express');
var app = express();
var port = 3000;

app.get('/', function (req, res) {
  if (process.env && process.env.PORT) {
    res.send('Hello world from internal port ' +  port + ' and external port ' + process.env.PORT);
  } else {
    res.send('Hello world from internal port ' + port);
  }
});

app.listen(3000, function () {

  if (process.env && process.env.PORT) {
    console.log('Example app listening on internal port ' +  port + ' and external port ' + process.env.PORT);
  } else {
    console.log('Example app listening on internal port ', port);
  }

});
