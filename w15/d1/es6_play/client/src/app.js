// var MakeupGetter = require('./MakeupGetter');

import MakeupGetter from "./MakeupGetter";

var app = function(){
  var mg = new MakeupGetter("maybelline");
  mg.fetchProducts();
};

window.onload = app;