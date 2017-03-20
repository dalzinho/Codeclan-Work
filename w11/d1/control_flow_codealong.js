var myName = "Matthew";

if(myName === "Matthew"){
  console.log("Yo my name is " + myName);
}

// using if/else

var counter = 1;

if (counter > 0 ){
  console.log("The counter is greater than zero.")
} else {
  console.log("The counter is less than or equal to zero.")
}

// using if/else if/if
var counter = 1;

if (counter > 0 ){
  console.log("The counter is greater than zero.");

} else if (counter < 0){
  console.log("The counter is less than zero.");
} else{
  console.log("The counter is at zero.");
}

// switch
var pet = "";

switch (pet) {
  case "cat":
    console.log("Soft kitty, warm kitty, little ball of fur.");
    break;
  case "dog":
    console.log("Who let the dogs out? Woof woof woof woof");
    break;
  default:
    console.log("No pet, sad.");
}

// ternary

console.log(1 + 1 === 2 ? "yaldy!" : "naldy!");