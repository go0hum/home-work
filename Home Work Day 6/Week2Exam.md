# Exam Week 2

## Section 1

What is Swift and how is it unique?
Swift is a new programming language for IOS, macOS, watchOS and tvOS app development. provides its own of all fundamental C and Objective-C types. 
Swift introduce advanced types not found in Objective-C is unique because is a type-safe language

What is an optional?
Optional is a variable wich is capable of holding a value or absence of a value

What are the different ways we can unwrap an optional and explain each?
extracting the inderlying value of an optional variable is called optional unwrapping

- Force unwrapping (!)
- Optional binding
- guard statement
- nil coalescing operator

What is optional chaining?
The processing accesing optional variables sub properties or sub sub properties which are again optionals

let value = OptionalProperty?.subOptionalProperty?.subSubProperty

If any of the property is optional the complete result will be nil

What is MVC? Go into detail and give some of the pros and cons.

is a widely used design pattern for architecting software applications. Cocoa applications are centered around MVC and many of Apple's frameworks are impregnated by the pattern. And this has cotrollers and is the actions in the functions, views is the front of the app and Model is the structure of datas

Explain the Viewcontroller Lifecycle.
Followings are view lifecycle methods :

. loadView()
. loadViewIfNeeded()
. viewDidLoad()
. viewWillAppear(_ animated: Bool)
. viewWillLayoutSubviews()
. viewDidLayoutSubviews()
. viewDidAppear(_ animated: Bool)
. viewWillDisappear(_ animated: Bool)
. viewDidDisappear(_ animated: Bool)

![ViewController cycle](https://github.com/go0hum/home-work/Home%20Work%20Day%206/img/viewcycle.png?raw=true)

loadView()
This event creates the view that the controller manages.

loadViewIfNeeded()
Loads the view controller’s view if it has not already been set.
available from iOS >=9.0

viewDidLoad()
Called after the view has been loaded.

viewWillAppear(_ animated: Bool)
This method will get called every time the view is about to appear, whether or not the view is already in memory.

viewWillLayoutSubviews()
Called just before the view controller’s view’s layoutSubviews method is invoked.

viewDidLayoutSubviews()
Called just after the view controller’s view’s layoutSubviews method is invoked.

viewDidAppear(_ animated: Bool)
Called when the view has been fully transitioned onto the screen.

viewWillDisappear(_ animated: Bool)
This method will get called when the view controller’s view is about to be removed from the view hierarchy.

viewDidDisappear(_ animated: Bool)
This method will get called when the view controller’s view was removed from the view hierarchy.


In the Application LifeCycle, what does it mean when the application is Inactive?

viewDidUnload and loadView

What is a closure? What is the difference between an escaping and non-escaping closure?

Closure is a block of statements which can be passed as an argument to a method. 

Escaping: A closure which is passed as an argument to a method. That closure will be called after some time of execution control came out of that method
@escaping keyword to indicate that the closure will be called after some time.

A closure which is passed as an argument to a method. That closure gets called before the execution control comes out that method is called non-escaping closure.
By default all closures are non-escaping closures

What is the difference between reference types and value types?

Value type creates new instances and ssigned when they passed to a method or assigned and the 
reference type just share address of that object when they are passed as arguments or assigned


In Swift, how do we pass a value by reference? 

Reference type just share address of that object when they are passed as arguments or assigned

example:

let dadCar = Car()
let sonCar = dadCar 


What are some higher order functions used in swift and what do they do? (Give 2)
filter, reduce, sort, sorted, reduced and Match

What is Autolayout?
Auto Layout constraints allow us to create views that dynamically adjust to different size classes and positions


## Section 2 Coding

### Find the second-largest value of an array, in linear time.
For this case, we'll consider unique values.

input: [1, 2, 3, 4, 5, 5]
output: 4
Also factor in empty or single-element arrays.

input: [1]
output: nil

