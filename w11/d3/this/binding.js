var Animal = function(type, legs){
  this.type = type;
  this.legs = legs;
  this.logInfo = function(){
    console.log(this === myCat);
    console.log('The ' + this.type + " has " + this.legs + ' legs.');
  }
};

var myCat = new Animal('Cat', 4);
myCat.logInfo();

var someoneElsesCat = new Animal('Cat', 4);
someoneElsesCat.logInfo();

setTimeout(myCat.logInfo.bind(myCat));