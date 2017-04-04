use codeclan;

db.createCollection("students", {
  capped: true,
  size: 16
});

db.students.insert(
  [
  {
    name: "John",
    favouriteFood: "Chips"
  },
  {
    name: "Daniel",
    favouriteFood: "Quesadillas"
  },
  {
    name: "Chris",
    favouriteFood: "Jam"
  }

  ]
  );

// db.students.find().pretty();

db.createCollection("instructors");

db.instructors.insert([

{
  name: "Ally",
  favouriteFood: "Rolls"
},
{
  name: "Alan",
  favouriteFood: "Square Slice"
},
{
  name: "John",
  favouriteFood: "Pâté"
}

  ]);

show collections;

db.instructors.createIndex();
db.instructors.getIndexes();

db.dropDatabase();