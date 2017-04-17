// var Geocoder = require('./geocoder');
// var makeRequest = require('./makeRequest');

var GeoCoder = function(address, mapWrapper){
  this.address = address;
  this.mapWrapper = mapWrapper;
  this.addressInfo = {};
}

GeoCoder.prototype = {
  geoCode: function(){
    var geoCoderScope = this;
    var url = 'https://maps.googleapis.com/maps/api/geocode/json?address=' + this.address;
    makeRequest(url, function(){
      var resultsObj = JSON.parse(this.responseText);
      var latLng = resultsObj.results[0].geometry.location;

      geoCoderScope.mapWrapper.googleMap.setCenter(latLng);
      geoCoderScope.mapWrapper.addMarker(latLng);
    })
  }
}

var makeRequest = function(url, callback){
  var xhr = new XMLHttpRequest();
  xhr.onload = callback;
  xhr.open("GET", url);
  xhr.send();
}

var MapWrapper = function(container, center, zoom){
  this.googleMap = new google.maps.Map(container, {
    center: center,
    zoom: zoom
  })
}

MapWrapper.prototype = {
  addMarker: function(coords){
    var marker = new google.maps.Marker({
      position: coords,
      map: this.googleMap
    })
  },


}

var handleButtonClick = function(mainMap){
  // console.log('cleeek');
  var input = document.querySelector('#address');
  var address = input.value;
  var gc = new GeoCoder(address, mainMap);
  gc.geoCode();

}

var app = function(){

  var container = document.getElementById('map');
  var center = {
    lat: 55.857092,
    lng: -4.244469
  };
  var zoom = 10;

  var mainMap = new MapWrapper(container, center, zoom);

  var button = document.querySelector('button');
  button.onclick = function(){
   handleButtonClick(mainMap); 
 }
};

window.onload = app;