var bottle = require('../water_bottle.js');
var assert = require('assert');

describe('Water Bottle', function(){

  beforeEach(function(){
    bottle.volume = 0;
  })
  
  it('should be empty at start', function(){
    assert.equal(0, bottle.volume);
  });

  it('fills up to 100', function(){
    bottle.fill();
    assert.equal(100, bottle.volume);
  });

  it('goes down by 10 when drunk', function(){
    bottle.fill();
    bottle.drink();
    assert.equal(90, bottle.volume);
    
  });

  it('has volume 0 when emptied', function(){
    bottle.fill();
    bottle.empty();
    assert.equal(0, bottle.volume);
  });

  it('should not be able to hold less than 0', function(){
    bottle.empty();
    bottle.drink();
    assert.equal(0, bottle.volume);
  });
})