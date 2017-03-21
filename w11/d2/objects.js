// var myPerson = {
//   name: "James",
//   age: 79,
//   weapon: "walking stick",
//   eat: function(){
//     console.log("om nom nom");
//   },
//   talk: function(){
//     console.log("Hi my name is " + this.name);
//   }
// }

// myPerson.talk();

// var myDog = Object.create(null);

// myDog.smell = "terrible";
// myDog.talk = function(){
//   return "I am a dog and I smell " + this.smell;
// }

// console.log(myDog.talk());

// var guineaPig = Object.create(null);

// var killerGuineaPig = Object.create(guineaPig);

var bear = {
  name: "Paddington",
  type: "Peruvian",
  belly: [],
  eat: function(food){
    this.belly.push(food);
    console.log("Yum I love " + food + "!");
  }
};

bear.eat("chips");
bear.eat("marmalade");

console.log(bear.belly);
