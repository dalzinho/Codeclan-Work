use farm;

db.animals.insert({
  name: "Erik",
  type: "Polar Bear",
  age: 25
});

db.animals.insert({
  name: "Fred",
  type: "Trainers",
  age: 36
});

db.animals.insert({
  name: "Billy",
  type: "Socks",
  age: 24
});

// db.animals.find({name: "Fred"}).pretty();

db.animals.update(
  {name: "Fred"},
  {
    $set: {type: "Flamingo"}
  });

// db.animals.find({name: "Fred"}).pretty();

// this one below won't work because we're dropping the db every time.

// db.animals.update(
//   {"_id": ObjectId("58e36b0db202540a9db9273c")},
//   {
//     $set: {type: "Chips"}
//   });

// db.animals.find({name: "Fred"}).pretty();


db.animals.remove({name: "Fred"});

db.animals.find().pretty();

db.dropDatabase();
