


//! Oops 
// Is a programming paradigm that uses objects and classes to organize code. It is based on the concept of objects, which are instances of classes. Oops provides a way to structure code in a way that is more modular, reusable, and easier to maintain.
///1 Class : A class is a blueprint or template for creating objects. It defines the properties (attributes/variables) and behaviors (methods/functions) that the objects will have.
///2 Objects: An object is an instance of a class. It has its own state and behavior. Each object occupies a separate memory location and can be manipulated independently. Changes made to one object do not affect other objects of the same class.
///
class Person {
  void display(String text) {
    print(text);
  }
}

// void main() {
//   Person person1 = Person(); // object creation
//   person1.display("Hello from Person object1");
//   Person person2 = new Person();
//   person2.display("Hello from Person object2");
// }

//**4 Pillars of Oops

//1. Encapsulation
//2. Inheritance
//3. Polymorphism
//4. Abstraction */


//!1. Encapsulation:
//Encapsulation is the process of hiding the internal details of an object and exposing only a public interface. It protects an object's data and behavior from unauthorized access and modification. Data should be accessed or modified only through controlled methods such as getters and setters. In Dart, encapsulation is achieved by making variables private using an underscore (_) prefix.

class EncapsulationExample {
  double _balance = 0.0; // Private variable

  get balance => _balance; // Getter method 

  set deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  set withdraw(double amount) {
    if(amount > 0 && amount <= _balance) {
      _balance -= amount;
    }
  }
}

// void main() {
//   final EncapsulationExample account = EncapsulationExample();
//   account.deposit = 1000; //setter method 
//   print('Balance after deposit: ${account.balance}'); // getter method
//   account.withdraw = 500;
//   print('Balance after withdrawal: ${account.balance}');
// }

//!2. Inheritance:
//Inheritance is the mechanism by which one class inherits the properties and behaviors of another class. It represents an IS-A relationship, where a subclass (child class) acquires the fields and methods of a superclass (parent class). This promotes code reusability and establishes a hierarchical relationship between classes. In Dart, inheritance is implemented using the extends keyword.
//Dart follows single inheritance, where a class can extend only one superclass. To achieve multiple inheritance–like behavior, Dart uses mixins and interfaces.
class Parent {
  void parentMethod() {
    print("This is a method from the Parent class.");
  }
}

class child extends Parent {
  void childMethod() {
    print("This is a method from the Child class.");
  }
}

void main() {
  child childObject = child();
  childObject.parentMethod(); // Inherited method from Parent class
  childObject.childMethod(); // Method from Child class 
}

//!3. Polymorphism: 
//It is the ability of an object to take an many forms. It allows us to use a single interface to represent diffrent types of objects. There are two types of polymorphism: compile-time polymorphism and run-time polymorphism. 
//Compile-time polymorphism: It is achieved through method overloading and operator overloading. Method overloading is the ability to define multiple methods with the smame name but different parameters. Operator overloading is the ability to define custom behavior for operators when they are used with user-defined types. actully does not support direcly but we can achive using optional paramenters and named paramenters
//Run-time polymorphism: It is achieved through method overriding. Method overriding is the ability of a subclass to provide a specific implementation of a method that is already defined in its superclass.

