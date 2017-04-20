var arr = [1,2,3,4];
// var first = arr[0];
// var second = arr[1];
var second;

var [first, , third, fourth] = arr;

console.log(first, second, third, fourth);
console.log('-=-=-=-=-=-=-=-=-=-=-');

const person = {
  first: "John",
  last: "Daly",
  street: 'Pollokshaws Rd'
};

const {
  first: f,
  last: l
} = person;

console.log(f,l); //useful for enumeration? pulling specific data repeatedly out of larger objects.

console.log('-=-=-=-=-=-=-=-=-=-=-');

var logPerson = ({first, last}) => {
  console.log(first, last);
}

var logSurnameAndAddress = ({last, street}) => {
  console.log(last + ',', street);
}

logPerson(person);
logSurnameAndAddress(person);