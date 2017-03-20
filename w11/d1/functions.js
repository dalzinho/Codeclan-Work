// function hello(){
//   return("Hello everyone!");
// }

// console.log(hello());

// function mood(name, mood, weather){
//   return name + ": you are " + mood + " and it is " + weather;
// }

// console.log(mood("John", "blithe", "overcast"));

// function add(){
//   var i;
//   var total = 0;
//   for(i of arguments){
//     total += i;
//   }
//   return total;
// }

// console.log(add(1, 2, 3, "cat"));

// var hello = function(){
//   console.log("hello world!");
// }

// hello();

// var mood = function(name, mood, weather){
//   return name + ": you are " + mood + " and it is " + weather + ".";
// }

// console.log(mood("John", "blithe", "snowy"));

var add = function(a,b){
  return a + b;
}

var log = function(functionToInvoke){
  console.log(functionToInvoke);
}

log(add(2,1));