# Callback Functions

## Example One

* A callback function is one that is passed into another function (it calls back to something else, right?), as in the `console.log` inside `setTimeout` (it calls back to the enclosing `setTimeout` function.
* This example is an anonymous function.

## Example Two

* This is an anonymous function assigned to a variable, otherwise identical to example one.
* Note that there are no brackets on the callback function name; also, the variable has to be declared before passing it in. 

## Example Three

* Precisely as example two, but with a named function.
* Note that this can be declared **after** the callback if necessary. (Changed function name for fluidity's sake :) )

## Example Four

* Two anonymous functions, `logRed()` and `logNotRed()`.
* These are passed into a third function `redChecker()`. It compares the passed colour with `"red"` and uses the callback functions to log whether the colour is red or not.
* This is interesting because the functions are being passed in as variables rather than simply being called inside the function.

## Example Five

* This is an example of how callbacks might be used; the `publish()` function could feasibly be passed different callbacks, depending on what you wanted it to do in the browser. This can help avoid code repetition.
