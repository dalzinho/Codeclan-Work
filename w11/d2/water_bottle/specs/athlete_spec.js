var athlete = require('../athlete');
var bottle = require('../water_bottle')
var assert = require('assert');

describe('Athlete', function(){

  beforeEach(function(){
    athlete.hydration = 100;
    athlete.distanceRun = 0;
  })
  
  it('should start with hydration 100', function(){
    assert.equal(100, athlete.hydration);
  });

  it('should start with 0 distance run', function(){
    assert.equal(0, athlete.distanceRun);
  });
  
  it('should lose 10 hydration for every 1 run', function(){
    athlete.run(1);
    assert.equal(90, athlete.hydration);
    assert.equal(1, athlete.distanceRun);
  });

  it('does not run if hydration is 0', function(){
    athlete.run(10);
    athlete.run(1);
    assert.equal(10, athlete.distanceRun);
  });

  it('runs as far as it can then stops', function(){
    athlete.run(11);
    assert.equal(10, athlete.distanceRun);
  });

  it('can drink from a bottle', function(){
    bottle.fill();
    athlete.run(10);
    athlete.drink(bottle);
    assert.equal(10, athlete.hydration);
    assert.equal(90, bottle.volume);

  });

})