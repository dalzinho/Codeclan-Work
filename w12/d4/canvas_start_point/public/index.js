var app = function(){
  var canvas = document.getElementById("main-canvas");
  var context = canvas.getContext('2d');
  // var img = document.createElement('img');
  // img.src = "http://vignette2.wikia.nocookie.net/farmville2/images/2/26/Cheese_Quiche.png";

  // var draw = function(){
  //   context.drawImage(img, 200, 200, 180, 180);
  // };

  // img.onload = draw;

  var drawCircle = function(x, y){
    context.beginPath();
    context.arc(x, y, 50, 0, Math.PI*2, true);
    context.stroke();
  }

  canvas.onclick = function(event){
    console.log('click');
    drawCircle(event.x, event.y);
  };



  var colorPicker = document.querySelector('#input-color');
  colorPicker.onchange = function(){
  debugger;

    var newColor = this.value;
    context.strokeStyle = newColor;
  }

};


window.onload = app;

// context.fillStyle = "#faebd7";
// context.fillRect(10, 10, 50, 50);

// context.beginPath();
// context.moveTo(100, 100);
// context.lineTo(100, 200);
// context.stroke();

// context.beginPath();
// context.moveTo(200, 200);
// context.lineTo(200, 300);
// context.lineTo(100, 300);
// context.closePath();
// context.stroke();

// context.beginPath();
// context.arc(400, 100, 50, 0, Math.PI * 2, true);
// //(x, y, radius, start and end angle, circumference, clockwise or anticlockwise )
// context.stroke();
// context.fillStyle="#faebd7";
// context.fillRect(100, 200, 400, 200);

// context.fillStyle="green";
// context.fillRect(275, 300, 50, 100);

// context.fillStyle="skyblue";
// context.fillRect(150, 250, 75, 75);
// context.fillRect(375, 250, 75, 75);

// context.beginPath();

// var drawCircle = function(x, y){
//   context.beginPath();
//   context.arc(x, y, 50, 0, Math.PI*2, true);
//   context.stroke();
// }

// canvas.onclick = function(event){
//   console.log('click');
//   drawCircle(event.x, event.y);

// context.fillStyle = "#faebd7";
// context.fillRect(10, 10, 50, 50);

// context.beginPath();
// context.moveTo(100, 100);
// context.lineTo(100, 200);
// context.stroke();

// context.beginPath();
// context.moveTo(200, 200);
// context.lineTo(200, 300);
// context.lineTo(100, 300);
// context.closePath();
// context.stroke();

// context.beginPath();
// context.arc(400, 100, 50, 0, Math.PI * 2, true);
// //(x, y, radius, start and end angle, circumference, clockwise or anticlockwise )
// context.stroke();
// context.fillStyle="#faebd7";
// context.fillRect(100, 200, 400, 200);

// context.fillStyle="green";
// context.fillRect(275, 300, 50, 100);

// context.fillStyle="skyblue";
// context.fillRect(150, 250, 75, 75);
// context.fillRect(375, 250, 75, 75);

// context.beginPath();