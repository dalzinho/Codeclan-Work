function newLine(){
  console.log();
}

var pets = ["dog", "cat", "pikachu"];

// common or garden for loop
for(var i = 0; i < pets.length; i++){
  console.log(pets[i]);
}

newLine();

//slightly fancier: like for (String pet : pets){
// for..of
//using 'in' instead of 'of' returns indices rather than elements.

for (var pet of pets){
  console.log(pet);
}

// for..in (handy for hashes etc.)

var obj = {
  student1: 3,
  student2: 12,
  student4: 30
};

for (var key in obj){
  console.log("obj." + key + " => " + obj[key]);
}

// while loop

var x = 0;

while (x < 10){
  console.log("loop " + x);
  x++;
  // x += 1; += works in this too!
  
}