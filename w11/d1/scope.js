// var talk = function(){
//   var name = "John";
//   console.log("My name is " + name + ".");
// }

// console.log("Trying to access name: " + name); //This breaks.

// var name = "Jehovah";

// var talk = function(){
//   var name = "John";
//   console.log("My name is " + name + ".");
// }

// talk();
// console.log("Trying to access name: " + name); //This works.

// var setName = function(newName){
//   name = newName;
// }

// setName("Bartholomew");

// var walk = function(){
//   console.log(name + " is walking.");
// }

// walk();

var globalVariable = 99;

var separateFunction = function(){
  var separateA = 2;
};

var outerFunction = function(){
  var outerA = 1;
  var innerFunction = function(){
    console.log('outerA', outerA);
    console.log('globalVariable', globalVariable);
    console.log('separateA', separateA);
  };

  innerFunction();
};

outerFunction();