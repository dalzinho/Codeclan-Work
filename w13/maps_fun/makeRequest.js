var makeRequest = function(url, callback){
  var xhr = new XMLHttpRequest();
  xhr.onload = callback;
  xhr.open("GET", url);
  xhr.send();
}

module.exports = makeRequest;