//literal notation

var myObject = {};

myObject.shape = 'circle';
myObject.radius = 'radius';

console.log(myObject);

var myOtherObject = new Object();

myOtherObject.size = 6;
myOtherObject.colour = 'red';

console.log(myOtherObject);

//this is quite repetitive, aye?

var house1 = {
  sqFeet: 8000,
  bathrooms: 4,
  bedrooms: 6
};

var house2 = {
  sqFeet: 2000,
  bathrooms: 1,
  bedrooms: 2
};

//this is a constructor class

var House = function(sqFeet, bathrooms, bedrooms){ //the capitalisation is a convention, not mandatory
  this.sqFeet = sqFeet;
  this.bathrooms = bathrooms;
  this.bedrooms = bedrooms;
  this.clean = function(){
    return('Your house was a disgrace but I have cleaned it.')
  }
}

var house1 = new House(2000, 32, 21);

console.log(house1);
console.log(house1.clean());

var Office = function(desks, meetingRoom){
  this.desks = desks;
  this.meetingRoom = meetingRoom;
  this.averageDesks = function(){
    return this.desks / this.meetingRoom;
  }
}

var theOffice = new Office(232, 8);
var anotherOffice = new Office(4096, 32);

console.log(theOffice.averageDesks());
console.log(anotherOffice.averageDesks());