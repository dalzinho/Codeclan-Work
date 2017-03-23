var SolarSystem = function(name){
  this.name = name;
  this.planets = [];
  this.addPlanets = function(){
    for (var arg of arguments){
      this.planets.push(arg);
    }
  }
}

module.exports = SolarSystem;