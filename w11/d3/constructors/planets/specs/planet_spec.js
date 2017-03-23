var Planet = require('../planet.js');
var assert = require('assert');
var earth;

describe('Planet', function(){
  beforeEach(function(){
    earth = new Planet('Earth');
  });

  it('should have the name Earth', function(){
    assert.equal('Earth', earth.name);
  });
})