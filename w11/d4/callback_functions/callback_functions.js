// example one

setTimeout(function(){
  console.log("inside the callback function");
}, 2000);

// example two

var print = function(){
  console.log("inside the callback function");
};

setTimeout(print, 2000);

// example three

setTimeout(print1, 2000);

function print1(){
  console.log("inside the callback function")
};

// example four

var logRed = function(){
  console.log("it's red!");
};

var logNotRed = function(){
  console.log("it's not red!");
};

var redChecker = function(colour, logRed, logNotRed){
  if(colour === "red"){
    logRed();
  } else {
    logNotRed();
  }
};

redChecker("red", logRed, logNotRed);

// example five

function publish(item, author, callback){
  console.log(item);
  var date = new Date();
  callback(author, date);
};

function authorInfo(author, date){
  var sendTime = date.toLocaleTimeString();
  console.log("sent from " + author + " at " + sendTime);
};

function articleDetails(author, date){
  var pubDate = date.toDateString();
  console.log("Written by " + author);
  console.log("Published on " + pubDate);
};

publish("The Leningrad Rock Club", "John Daly", authorInfo);
publish("The Leningrad Rock Club", "John Daly", articleDetails);