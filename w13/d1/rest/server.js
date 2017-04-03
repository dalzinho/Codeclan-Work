var express = require('express');
var app = express();
var bodyParser = require('body-parser');


// this sets up the express app to use two features of body-parser
app.use(bodyParser.json()); //allow it to use JSON data
app.use(bodyParser.urlencoded({extended: true})); //???

app.use(require('./controllers'));

app.listen(3000, function() {
  console.log('App running on port ' + this.address().port);
});

