var Film = require('./film');
var Review = require('./review');

var Films = function() {};

Films.prototype = {
  makeRequest: function(url, callback){
    var request = new XMLHttpRequest();
    request.open("GET", url);
    request.onload = callback;
    request.send();
  },

  all: function(callback){
    //so, here, this refers to the films object...
    var filmsObject = this;
    var url = 'http://localhost:3000/api/films';
    this.makeRequest(url, function(){
      // ...but once we're inside this anonymous function, 'this' refers to the XHR request...
      if(this.status !== 200){
        return;
      }
      var jsonString = this.responseText;
      var results = JSON.parse(jsonString);

      // ...hence we had to assign the films object 'this' to another variable...
      var films = filmsObject.populateFilms(results);
      //...so we could call populateFilms method on it...
      //(Films.prototype.populateFilms(results) would work too!)
      callback(films);
    });
      //...but now that we're back outside that anonymous function...
      //...'this' refers to the film object again!
  },

  populateFilms: function(results){
    var films = [];

    for(var result of results){
      var film = new Film(result);
      films.push(film);
    }

    return films;
  },

  add: function(newFilm, callback){
    console.log(newFilm);
    var filmToAdd = JSON.stringify(newFilm);
    this.makePostRequest('http://localhost:3000/api/films', callback, filmToAdd);
  },

  makePostRequest: function(url, callback, payload){
    var request = new XMLHttpRequest();
    request.open("POST", url);
    request.setRequestHeader("Content-type", "application/json");
    request.onload = callback;
    request.send(payload);
  }
}

module.exports = Films;
