console.log("Hello world!")

var wizard = {
  name: "Harry",
  defend: function(){
    return "Expecto patronum!";
  }
}

window.onload = function(){
  window.alert("Hello world!")
};
console.log(wizard.defend());
console.log(this);