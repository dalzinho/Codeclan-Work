var express = require('express');
var app = express();
var bodyParser = require('body-parser');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

app.use(express.static('client/build'));

var shops = [
  {
    name: "Next",
    location: "Unit B, Silver Glades Shopping Centre, Auchtermuchty",
    staff: [
      "Steve McBoberson",
      "Sally McBlobblob"
    ]
  },
  {
    name: "Zara",
    location: "Unit F, Second Floor, Silver Glades Shopping Centre, Auchtermuchty",
    staff: [
      "Juan",
      "Lucy"
    ]
  }
];

app.get("/api/shops/all", function(req, res){
  res.json(shops);
});

app.post("/api/shops/all", function(req, res){
  var newShop = {
    name: req.body.name,
    location: req.body.location,
    staff: req.body.staff
  };
  shops.push(newShop);

  res.json(shops);
});

app.listen(3000, function () {
  console.log('App running on port '+this.address().port);
});
