var MakeupGetterES5 = function(brand){
  this.brand = brand;
  this.products = [];
}

MakeupGetterES5.prototype = {
  fetchProducts: function(){
    var url = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=" + this.brand;
    var xhr = new XMLHttpRequest();

    xhr.open("GET", url);
    xhr.onload = function(){
      this.products = JSON.parse(xhr.responseText);

      for(var i = 0; i < this.products.length; i++){
        console.log(this.products[i]);
      }

      console.log(i); // Ruh-oh!

    }.bind(this);

    xhr.send();
  }
};

module.exports = MakeupGetterES5;