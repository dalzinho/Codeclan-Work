var SolarSystem = require('../solarSystem');
var Planet = require('../planet');
var assert = require('assert');


describe('Solar System', function(){

  var solarSystem;
  var vulcan;
  var mercury;
  var venus;
  var earth;
  var mars;
  var jupiter;
  var saturn;
  var uranus;
  var neptune;
  
  beforeEach(function(){
    solarSystem = new SolarSystem('Sol');
  });

  it('should have a name', function(){
    assert.equal('Sol', solarSystem.name);
  });

  it('should initiate with an empty array of planets', function(){
    assert.equal(0, solarSystem.planets.length);
  });

  before(function(){
    vulcan = new Planet('Vulcan');
  });

  it('can add planets', function(){
    solarSystem.addPlanets(vulcan);
    assert.equal(1, solarSystem.planets.length);
  });

  it('adds planet objects', function(){
    solarSystem.addPlanets(vulcan);
    assert.equal('Vulcan', solarSystem.planets[0].name);
  });

  before(function(){
    solarSystem = new SolarSystem('Sol');
    mercury = new Planet('Mercury');
    venus = new Planet('Venus');
    earth = new Planet('Earth');
    mars = new Planet('Mars');
    jupiter = new Planet('Jupiter');
    saturn = new Planet('Saturn');
    uranus = new Planet('Uranus');
    neptune = new Planet('Neptune');
  });

  it('can add multiple planets in one go', function(){
    solarSystem.addPlanets(mercury, venus, earth);
    assert.equal(3, solarSystem.planets.length);
  });

  before(function(){
    solarSystem = new SolarSystem('Sol');
    mercury = new Planet('Mercury');
    venus = new Planet('Venus');
    earth = new Planet('Earth');
    mars = new Planet('Mars');
    jupiter = new Planet('Jupiter');
    saturn = new Planet('Saturn');
    uranus = new Planet('Uranus');
    neptune = new Planet('Neptune');
    solarSystem.addPlanets(mercury, venus, earth, mars, jupiter, saturn, uranus, neptune)
  });

});