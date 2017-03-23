var fs = require('fs');

fs.readFile("./us_states.tx", "utf-8", function(err, data){
  if(err){
    console.log("Uh-oh! " + err);
  } else {
    var bufferString = data.toString();
    var lineCount = bufferString.split("\n").length;
    console.log("There are " + lineCount + " lines in the file");
    console.log("You've finished reading the file.");
  }
});

console.log("The next Line in the Program");