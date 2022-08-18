# Book: The Swift Programming Language

https://docs.swift.org/swift-book/

1. Read: Control Transfer Statement - Control Flow Section
2. Read: API Availability - Control Flow Section
3. Read: Recursive Enumerations -
4. Read: Subscript -
5. Read: Convenience initializer - Initialization Section
6. Read: Deinitialization -
7. Read: Optional Chaining -
9. Read: Downcasting - Type Casting Section
10. Read. Delegation - Protocols Section
10. Read: Optional Protocol Requirements - Protocols Section
11. Read: Automatic Reference Counting -

## Questions:
### What is the difference between var and let?
Let is a constant 
Var is a variable with type

### What is an optional?
All values always need to get a type if storage and optionals can have 2 types: a nil storage of the type itself or value

### What is optional chaining vs optional binding?
optional binding. - when you use an if to validate an optional and then use it in curly braces
Optional chaining / when you use a parameter in function and use the symbol ?

### What are the different ways to unwrap an optional? How do they work? Are they safe?
The difference is the symbol ? and ! 

### What is a closure?
Closures are self-contained blocks of functionality that can be passed around and used in your code.

### What is the difference between a class and a struct?
Only inherence, Type casting enables, Deinitializers enable an instance of a class to free up any resources it has assigned and Reference counting allows more than one reference to a class instance.

### What is the syntax '??' do?
Validate if exist value or is nil

### What is a tuple?
Use a tuple to make compound values, for example to return multiple values from a function

### What is Any vs AnyObject?
Any can represent an instance of any type at all, including function types and optional types.
AnyObject can represent an instance of any class type.

### What is a protocol?
A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality

### What is Delegation
Delegation is a design pattern that enables a class or structure to hand off (or delegate) some of its responsibilities to an instance of another type

Read this article
https://developer.apple.com/documentation/swift/choosing_between_structures_and_classes
