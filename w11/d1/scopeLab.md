# JS Day 1 Lab

Go through each sample code and work out what the output will be and explain what happened.

### Episode 1
```js
var name = 'John';

var printName = function() {
  console.log('My name is ' + name );
};

printName();

```

1. Global variable `name` set to 'John'
2. Anonymous function assigned to `printName`.
3. This function prints 'My name is `name`' to the terminal.
4. Function called.

### Episode 2
```js
score = 5;

var result = function() {
  var score = 3;
  return score;
};

console.log(result());

```

1. Global variable `score` set to 5 (no `var` though. Hmmm...)
2. Anonymous function assigned to `result`.
3. Local variable `score` set to 3.
4. `console.log(result());` should print 3 to the screen as it is the returned value of the `result` function.

### Episode 3
```js
var myAnimals = ['Chickens', 'Cats', 'Rabbits'];

var listAnimals = function() {
  myAnimals = ['Ducks', 'Dogs', 'Lions'];
  for(var i=0;i<myAnimals.length; i++){
    console.log(i + ": " + myAnimals[i]);
  }
}

listAnimals();

```

1. Global variable `myAnimals` set to array of animals.
2. `listAnimals` function sets global variable to three different animals.
3. Function loops through the new global variable and prints the name of each animal to the screen with its index.
4. Function called.

### Episode 4

```js
var suspectOne = 'John';
var suspectTwo = 'Ally';
var suspectThree = 'Alan';
var suspectFour = 'Steve';

var allSuspects = function() {
  var suspectThree = 'Harvey'
  console.log('Suspects include: ' + suspectOne + ', ' + suspectTwo + ', ' + suspectThree + ', ' + suspectFour)
};

allSuspects();
console.log( 'Suspect three is:' + suspectThree );
```

1. Four global variables assigned to four suspect names.
2. `allSuspects` function assigned.
3. Function sets `suspectThree` to 'Harvey' locally.
4. Function prints names of all suspects to screen; crucially the name of suspectThree is now Harvey, rather than Alan.
5. Function called.
6. Print to screen name of global `suspectThree`, which should be 'Alan.'

### Episode 5

```js
var detective = {
  name : 'Ace Ventura',
  pet : 'monkey'
};

var printName = function(detective) {
  return detective.name
};

var detectiveInfo = function() {
  detective['name'] = 'Poirot'
  return printName(detective);
};

console.log(detectiveInfo());
```

1. Variable `detective` assigned to object, with keys `name:` and `pet:`
2. Function assigned to `printName`, which takes detective parameter and returns the name of the detective.
3. Function `detectiveInfo` changes the name of the detective in the global `detective` to 'Poirot'.
4. Finally, `detectiveInfo` returns the result of the `printName` functions.
5. `detectiveInfo` is called inside `console.log`. It should show the name 'Poirot' on the terminal.

### Episode 6
```js
var murderer = 'Steve';

var outerFunction = function() {
  var murderer = 'Alan';

  var innerFunction = function() {
    murderer = 'Ally';
  }

  innerFunction();
}

outerFunction();
console.log('the murderer is ', murderer);
```

1. Value "Steve" assigned to global variable `murderer`.
2. `outerFunction` has local variable `murderer` set to "Alan".
3. `innerFunction` (helpfully contained within `outerFunction`) sets the local `murderer` value (within the function only) to 'Ally'.
4. There is a call to `innerFunction()` inside `outerFunction`.
5. `outerFunction` is called.
6. The program prints the murderer's name to the console. It should be 'Steve' as this is *still* the global value of `murderer`.

### Episode 7 - Make up your own episode/s!

Make up your own episode which can be whatever you wish and the rest of the class will work out together what happened and what the output will be.

1. I spent the last umpteen years giving out tasks like this to fast-finishers. No way am I falling for it.