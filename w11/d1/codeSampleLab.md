## Episode 1

1. Global variable `name` set to 'John'
2. Anonymous function assigned to `printName`.
3. This function prints 'My name is `name`' to the terminal.
4. Function called.

## Episode 2

1. Global variable `score` set to 5 (no `var` though. Hmmm...)
2. Anonymous function assigned to `result`.
3. Local variable `score` set to 3.
4. `console.log(result());` should print 3 to the screen as it is the returned value of the `result` function.

## Episode 3

1. Global variable `myAnimals` set to array of animals.
2. `listAnimals` function sets global variable to three different animals.
3. Function loops through the new global variable and prints the name of each animal to the screen.
4. Function called.

## Episode 4

1. Four global variables assigned to four suspect names.
2. `allSuspects` function assigned.
3. Function sets `suspectThree` to 'Harvey' locally.
4. Function prints names of all suspects to screen; crucially the name of suspectThree is now Harvey, rather than Alan.
5. Function called.
6. Print to screen name of global `suspectThree`, which should be 'Alan.'

## Episode 5

1. Variable `detective` assigned to object, with keys `name:` and `pet:`
2. Function assigned to `printName`, which takes detective parameter and returns the name of the detective.
3. Function `detectiveInfo` changes the name of the detective in the global `detective` to 'Poirot'.
4. Finally, `detectiveInfo` returns the result of the `printName` functions.
5. `detectiveInfo` is called inside `console.log`. It should show the name 'Poirot' on the terminal.

## Episode 6

1. Value "Steve" assigned to global variable `murderer`.
2. `outerFunction` has local variable `murderer` set to "Alan".
3. `innerFunction` (helpfully contained within `outerFunction`) sets the global `murderer` value to 'Ally'.
4. There is a call to `innerFunction()` inside `outerFunction`.
5. `outerFunction` is called.
6. The program prints the murderer's name to the console. It should be 'Ally' as this is the global value of `murderer` at this time.
