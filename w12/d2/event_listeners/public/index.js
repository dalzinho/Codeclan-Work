var app = function(){
  var button = document.querySelector('button');
  button.onclick = handleButtonClick;

  var input = document.querySelector('input');
  input.onkeyup = handleKeyPress;

  var select = document.querySelector('select');
  select.onchange = handleSelectChange;
}

var buttonCounter = 0;

var handleButtonClick = function(){
  buttonCounter += 1;
  var pTag = document.querySelector('#button-result');
  pTag.innerText = "Woah dude, totally been clicked " + buttonCounter +" times, man";
}

var handleKeyPress = function(){
  var pTag = document.querySelector('#text-result');
  pTag.innerText = this.value;
}

var handleSelectChange = function(){
  var pTag = document.querySelector('#select-result');
  pTag.innerText = this.value + ", excellent!!1";
}

window.onload = app;
