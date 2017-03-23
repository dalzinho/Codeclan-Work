var functionCaller = function(number, callback){
  return callback(number);
};

function increment(number){
  return number + 1;
}

function square(number){
  return number * number;
}

console.log(functionCaller(10, increment));
console.log(functionCaller(10, square));
