var fs = require('fs');

// anything ending with sync is a *blocking* method. Node can do nothing until this is finished.
var buffer = fs.readFileSync("./us_states.txt");
var bufferString = buffer.toString();
var lineCount = bufferString.split("\n").length;
console.log("There are " + lineCount + " lines in the file.");
console.log("You have finished reading the file.");