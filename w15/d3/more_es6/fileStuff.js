const fs = require('fs');

// const readFile = (fileName, callback) => {
//   fs.readFile(fileName, (err, data) => {
//     if(err) return err;

//     callback(data.toString());
//   });
// }

// readFile("1.txt", (data) => {
//   let result = data;
//   readFile("2.txt", (data) => {
//     result += data;
//     readFile("3.txt", (data) => {
//       result += data;
//       readFile("4.txt", (data) => {
//         result += data;
//         console.log(result);
//       })
//     })
//   })
// }); this works, but clearly it's a bit inelegant, aye?! :D

const readFile = (fileName, result) => {
  return new Promise((resolve, reject) => {
    fs.readFile(fileName, (err, data) => {
      if(err) return reject(err);

      resolve(result + data.toString());
    });
  });
}



readFile("1.txt", "")
  .then((result) => readFile("2.txt", result))
  .then((result) => readFile("3.txt", result))
  .then((result) => readFile("4.txt", result))
  .then((result) => readFile("5.txt", result))
  .then((result) => console.log(result))
  .catch((err) => console.log('Error: ', err.message));

