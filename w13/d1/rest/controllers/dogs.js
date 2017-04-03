var express = require('express');
var dogRouter = new express.Router();
var dugs = ["Beagle", "Poodle", "Wolfhound", "Baskerville"];

dogRouter.get('/', function(req, res){
  res.json(dugs);
})

dogRouter.get('/:id', function(req, res){
  res.json({data: dugs[req.params.id]});
});

dogRouter.put('/:id', function(req, res){
  dugs[req.params.id] = req.body.dug;
  res.json({data: dugs});
});

dogRouter.delete('/:id', function(req, res){
  dugs.splice(req.params.id, 1);
  res.json({data: dugs});
})

dogRouter.post('/', function(req, res){
  dugs.push(req.body.dug);
  res.json({data: dugs});
})
module.exports = dogRouter;