# Object-Oriented Concepts for interview skills

## Classes and Objects

* A **class** is a blueprint for making (*instantiating*) an **object**.
* An object is an **instance** of a class.

## Pillars of OO Programming

### Abstraction

* Hiding the implementation details, using abstract classes and interfaces: objects must be able to do `xyz` but I don't care how you actually do it; and this may vary from class to class.
* Likewise, a Save interaction, the user doesn't really care where it's saved (database, shared preferences, file, whatever).
* This has shades of **Liskov** around it.

### Polymorphism

* Objects can have the appearance of more than one kind. That means that as well as being their own kind of object, they can be:
    - Examples of **inheritance**. Objects with the same superclasses. (dogs and cats are both instances of mammal).
    - made to share characteristics using **interfaces**.
    - **ad hoc** polymorphism (see here: http://gonithethinker.blogspot.co.uk/2013/05/ad-hoc-polymorphism.html)
    - **Parametric polymorphism** (see here: https://en.wikipedia.org/wiki/Parametric_polymorphism)
    
### Inheritance

* If a group of classes have shared **characteristics** (e.g. instance variables) and behaviours (e.g. methods), they can inherit from shared superclasses to save repeating code.
* Inheritance can be very confusing.
* An interface can sometimes to be used to ensure that similar classes have appropriate methods.
* Alternatively, **composition** can be used; abstracting out certain elements. In the example of class `Vehicle` with subclasses `Car` and `Bicycle`, a `startEngine()` method is nonsensical. Instead, Car could hold and `Engine` object as an instance variable.
* *Favour composition over inheritance* <- definitely say this in interviews!

### Encapsulation

* Keeping information private to a class and controlling access to that information.
* We use **access modifiers** to control this (i.e. *public*, *private* and *protected* in Java. There is also a *default* modifier, which is when you don't specify any).
* Examples of variables that might be left public could include *interfaces*, or *static classes*.

## Interfaces v Abstract Classes

* Interfaces are entirely abstract, all methods should be defined in the interfaced classes, whereas Abstract class can hold their own shared methods. (Actually so can interfaces as of Java 8.)
> "This will lead to trouble" -- A. McGilloway

### Pros of Interfaces
* **multiple** interfaces can be used, while you can only extend one class.
* can **loan types** to otherwise dissimilar objects.

### Pros of abstract classes
* shared characteristics and behaviours.

## SOLID Principles

### Single-Responsibility

* A bear should only know how to bear.
* That is, every class should only have one job. The clue, you see, is in the name.

### Open-Closed Principle
* Classes should be open to extension but closed to modification.
* So, you should, for example, be able to extend a datastructure or whatever, without having to modify the original code.
* Having to switch class behaviour around an instance variable (e.g. types of order) is a real code smell around this. See below:
```java
class Transaction{
    String type; // Can be sale, refund, void

    if (type == sale){
        doThisStuff();
    } else if (type == refund) {
        doThisStuff();
    } else if (type == void ){
        doThisStuff();
    } else {
        doThisStuff();
    }
}
```
*What happens here if a new transaction has to be added in future? This switch needs to be re-written, plus every method in this class likely depending on transaction type. The much more sensible approach is to abstract each of these transaction types into their own classes with their own methods. That way, Transaction can be extended (with new subclass types), but never has to be modified.*

### Liskov Substitution
* Any subclass should behave in the same way as its superclasses, such that they should be able to be swapped around without the program breaking.
* Example: class `Animal` is the superclass of `Dog`, `Cat` and `Caterpillar`. The `Vet` class has a `.heal()` method that returns `"I heal " + Animal.getName()`. If `Caterpillar` does not have a name instance variable, it will not be able to healed by the vet, and therefore breaks Liskov.
* Having a couple of examples of this up your sleeve is good for interview as it is hard to explain.

### Interface Segregation
* An interface should not have too many methods on it.
* If you do have too many methods (and interfaced classes start doing things they're not supposed to e.g. `Swimmable` has a method for breathing underwater but applying this to humans).
* In this example, this should be broken down into two interfaces `Swimmable` and `BreatheUnderwaterable`.

### Dependency Inversion
* Avoiding dependency in order to save having to ferret around in old code when you change dependent classes.
```java
class Bear {
    private Diary diary;

    public Bear(){
        this.diary = new Diary();
    }
}

class Diary{
    public Diary(int numPages){

    }
}
```
_Note that the diary is newed up in the bear class. This is a dependency. This is dangerous if at any point in the future, the `Diary` class is changed. Better for this would be to 'inject' a new Diary into the bear constructor at runtime._