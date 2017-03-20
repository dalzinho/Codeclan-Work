var speak = function(firstName, surname){
  return "Hi, I'm " + firstName + " " + surname + "!";
}

var multiply = function(){
  var total = 1;
  for (var num of arguments){
    total *= num;
  }
  return total;
}

var arrayFirst = function(array){
  return array[0];
}

var listOfNames = function(nameArray){
  var nameStrings = ""
  for (var name of nameArray){
    nameStrings += name + "\n";
  }
  return nameStrings;
}

console.log(speak("John", "Daly"));
console.log();
console.log(multiply(9,8,7,6,5,4,3,2,1));
console.log();
console.log(arrayFirst([10,20,30]));
console.log();
console.log(listOfNames(["John", "Chris", "Ryan", "Daniel"]));

console.log(speak("John", multiply(3121,432 )))