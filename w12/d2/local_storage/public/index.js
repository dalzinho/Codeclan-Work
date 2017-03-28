var setSpanText = function(text){
  var span = document.querySelector('#fav-food');
  span.innerText = text;
}

var setFaveFoods = function(savedFoods){
  var span = document.querySelector('#allMyFavouriteFoods span');
  span.innerText = savedFoods.join(", ");
  }


var faveFoods = [];

var handleButtonClick = function(){
  var input = document.querySelector('input');
  setSpanText(input.value);
  setFaveFoods()
  localStorage.setItem("selection", input.value);

  faveFoods.push(input.value);
  var data = JSON.stringify(faveFoods);
  localStorage.setItem("faveFoods", data);

  input.value = "";
};

var app = function(){
  var button = document.querySelector('button');
  button.onclick = handleButtonClick;

  var saved = localStorage.getItem("selection");
  setSpanText(saved);

  var savedFoods = localStorage.getItem("faveFoods") || [];
  faveFoods = JSON.parse(savedFoods);

  setFaveFoods(faveFoods);

  faveFoods.forEach(function(item){
    console.log(item);
  })
}

window.onload = app;
