//this can be defined in:
// * functions
// * objects
// * constructors

// Global object in browser is the browser window. EVERYTHING will ultimately belong to that.

// In Node, there is a global object called *process*

// make = 'Honda';

// var car = {
//   make: "Nissan"
//   }

// var getMake = function(){
//   console.log(this.make)
// };

// car.getMake = getMake;

// car.getMake();
// console.log(car.make);
// getMake();

// content = "I'm in the global scope";

// function simpleCall(){
//   console.log(this.content);
// }

// simpleCall();

// var message = {
//   content: "I'm a javascript ninja",
//   showContent: function(){
//     console.log(this.content);
//   }
// }

// message.showContent();

function Message(content){
  this.content = content;
  this.showContent = function(){
    console.log(this.content);
  };
}

var message = new Message("I am some content");

message.showContent();
