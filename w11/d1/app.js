// var number = 5; //ES5

// let anotherNumber = 5; // ES6
// const yetAnotherNumber = 5; // Also in ES6

// function hello(name, age){
//   console.log("Saluton, " + name + "! Vi havas " + age + " jarojn.");
// }

// var myString = "Ivano";
// var myNumber = 37;

// hello(myString, myNumber); 

// var a = 1;
// var b = 2;
// var c = 2.5;
// var d = Math.floor(a / b);

// console.log(d); // 0



// var age = 1;
// console.log(typeof(age)); // number
// age = "i am a string";
// console.log(typeof(age)); // string

// console.log(3 + "hello"); // 3hello
// console.log("Route " + 6 + 6); // Route 66
// console.log("Route " + (6 + 6)); // Route 12
// console.log(6 + 6 + " Route"); // 12 Route
// console.log("6" + 6 + " Route"); // 66 Route

// console.log(1 > 2); // false
// console.log(2 == 2); // true
// console.log(2 == "2"); // true; this is JS being 'helpful'. double equals compares the value, not the type.
// console.log(2 === "2"); // false; note the triple equals; this compares types.
// console.log(8 != "8");
// console.log(8 !== "8");


// var guitars = ["Fender", "Gibson", "Gretsch"];
// console.log("Guitars", guitars.reverse().sort());

// var drums = new Array();

// drums.push("Gretsch", "Pearl", "Zildjian");
// console.log("Drums", drums);

// drums.forEach(function(item, index, array) {
//   console.log(item, index);
// });

// console.log(drums[10]);

// drums[1] = "Jam";
// drums[10] = "More Jam";

// console.log("Drums", drums);
// console.log("Drum 8", drums[8]);
// console.log(drums.length);

// var counter = 0;

// drums.forEach(function(item, index, array){
//   if(item){ counter++;}
// });
// console.log(counter);
// console.log("Drums", drums);


// console.log("Drums", drums);

var miaPersono = {
  namo: "John",
  agxo: 37,
  komputilolingvo: "Java",
  domadreso: {strato: 'Pollokshaws Rd', postkodo: 'G42' }
};

console.log('Mia persono', miaPersono);
console.log(miaPersono['agxo']);
console.log(miaPersono.agxo);

miaPersono.dorlotbesto = "Hundo";
console.log(miaPersono);