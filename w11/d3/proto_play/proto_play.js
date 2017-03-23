// var wisePerson = {
//   wisdom: function(){
//     console.log("Commit often");
//   }
// }

// var myPerson = Object.create(wisePerson);

// myPerson.walk = function(){
//   console.log("left right left right");
// }

// myPerson.walk();
// myPerson.wisdom();

// wisePerson.wisdom();

var Fish = function(name, colour){
  this.name = name;
  this.colour = colour;
};

Fish.prototype = {
  swim: function(){
    console.log('splash');
  }
};

var myFish = new Fish('nemo', 'orange');

myFish.swim();