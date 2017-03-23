var athlete = {
  hydration: 100,
  distanceRun: 0,
  run: function(distance){
    for(var i = 0; i < distance; i++){
      if(this.hydration !== 0){
        this.hydration -= 10;
        this.distanceRun += 1;
      }
    }
  },
  drink: function(bottle){
    this.hydration += bottle.drink()
  }
}

module.exports = athlete;