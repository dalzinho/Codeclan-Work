var GeoCoder = function(address){
  this.address = address;

}

GeoCoder.prototype = {
  geoCode: function(){
    var url = 'https://maps.googleapis.com/maps/api/geocode/json?address=' + this.address;
    makeRequest(url, function(){
      console.log(this);
    })
  }
}

module.exports = GeoCoder;