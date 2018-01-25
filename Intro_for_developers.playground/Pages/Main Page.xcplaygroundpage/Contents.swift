//: # Swift for Developers 🖥
//: ### An introductory workshop
//: -----

// Do we need to explain this? Foundation is the blanket library with the standard library and most low level libraries, too
import Foundation

//: 🔹The Basics

// declaring variables etc.
var myString: String = "Some String" // variable you can change. Explicit data type
let myConst = "Some Constant String" // constant you can't change. Implicit data type (String)

myString = "Hello World" // assigning a literal value to a variable

print("This is a inline string literal with \(myString)") // String interpolation (with any type that has a built-in "toString" method)

/*
 Swift supports 2 kinds of containers/types:
 - Value Type: Pretty much all the standard types fall into this one except classes (Int, Double, String, Array, etc.). All value types are passed by value (copied when assigned to other variables or passed to functions)
 - Reference Type: Classes (and their objects) are reference type. They are passed by reference (pointer to the object is copied on assignment to variables or passed through functions)
 */

// Some standard data types in Swift (all of these are Value Types)
let myInt: Int = Int.max
let myDouble: Double = 3.5
let myString2: String = ""
let myBoolean: Bool = true
let myChar: Character = "f"
let x: Date = Date()

//: -----
//: 🔹Optionals
// An optional in Swift is an extension to any data type (let's call it N), where the optional variable of data type N could hold either an actual value (of type N) or nil
// Optionals are the bread & butter of Swift. It forces developers to "unwrap" optionals before they can access the values (if any)
// "Unwrapping an optional" is the process of getting the value held within an optional variable.

// Overall, optionals makes nil (and error) handling in Swift a priority, and forces developers to write safer code that wouldn't crash on runtime often

var myOptionalNo: Int? = 5
var myOptionalNo2: Int? = nil

var networkData: Data? = nil

// Forced Unwrapping (NEVER EVER USE THIS!!! IT'S BAD)
print(myOptionalNo!)

// Conditional Unwrapping (if the optional variable has a value, assign it to another non-optional variable, and set the if statement's clause to True
if let myUnwrappedNo = myOptionalNo {
  print("Successfully unwrapped the value of \(myUnwrappedNo)")
} else {
  print("I couldn't unwrap the variable")
}

// Using guard to unwrap optionals
// Works the same way as conditional unwrapping, but enables you to use the declared variable throughout your scope (instead of inside the if statement only). Guard's else statement must escape the normal following execution sequence (return, exit, etc.)
func guardExampleAddition(firstOptional: Int?, secondOptional: Int?) -> Int? {
  guard let firstUnwrapped = firstOptional, let secondUnwrapped = secondOptional
    else { return nil }
  return firstUnwrapped + secondUnwrapped
}

// Chaining
// Another great way to unwrap optional properties of a struct/class
struct ChainExample {
  var optionalNum: Int
}

let optionalStruct: ChainExample? = nil
let chainUnwrapped = optionalStruct?.optionalNum // chainUnwrapped is implicitly declared as optional Int, and will have a value if optionalStruct does, and nil otherwise

//: -----
//: 🔹Control Flow
// If
if (myInt == 5) {
  
} else if myInt > 10 {
  
} else {
  
}

// Switch/case
switch myInt {
  // Switch cases in Swift allow you to evaluate a bool statement!
case let x where (x >= 0 && x <= 10 && x % 2 == 0):
  print(myInt)
case 2:
  print(myInt)
  // And also all Switch statements must be exhaustive (must cover all possible values of the switch variable type (or have a default case)
default:
  print(myInt)
}

// Modern For loops, with ranges of any Countable type
for _ in 0...10 {
  print("I'm sorry")
}

// Standard While loop, nothing fancy
/*
while true {
  // do this
}
*/

// And the equivalent of Do-While loop
/*
repeat {
  
} while (true)
*/
//: -----
//: 🔹Collections
// Arrays
var myArray: [Int] = [1, 2, 3, 4, 5]
let anotherArray = [Int]()

// Get the index and value for your itereation through an array. Also, this is how you use For loops to iterate through a collection
for (idx, number) in myArray.enumerated() {
  print(idx, " ", number)
}


// Dictionaries
// It's basically a key-value container implemented as a HashTable
var myDictionary = [String : Int]()
myDictionary = ["one" : 1, "two" : 2, "three" : 3]

// Iterating through a dictionary
for (str, int) in myDictionary {
  print("\(int) is written as \(str) in English")
}


// Sets
// A Hashtable where the keys are the values themselves. Used to hold unique values
var mySet = Set<Int>()

// All collections have the standard Functional Programming built-in utilities (filter, map, reduce, etc.)
let newArray = myArray.filter({$0 % 2 == 0}) // This is a shorthand syntax for Closures, don't freak out
myArray.append(7)
_ = myArray.first
_ = newArray.count
_ = myArray.count
_ = mySet.count

//: -----
//: 🔹Functions (and Closures)

// Standard function declaration
func countFromZero(to input: Int) -> Int {
  for i in 0...input {
    print(i)
  }
  return 1
}

// The _ just tells the compiler that you don't care about the value returned by the function call. It helps the compiler optimize your code
_ = countFromZero(to: 8)

// Functions are first-class citizens in Swift (just like JavaScript), so you can assign them to variables and pass them around in other functions!
var myClosure = { print("Hello World") }

myClosure()

//: -----
//: ⚛️Bonus Round: Cool features
// Emojis (WHAAAAAT!?)
// These are valid variable names in Swift
class Alien { }

let 👽 = Alien()
let 👽👽👽 = [Alien]()

// Extensions
// Computed Properties
// Extend a class to add more properties or methods. Helps us keep our code tidy and clean
// Also, computed properties work much faster than class methods, and it makes more sense semantically
extension Alien {
  private static var items = [1 ,2 ,3]
  static var myExtendedCount: Int {
    return items.count
  }
}

// Property Observers
// Enables you to use a built-in method to observe and act on changes to the value of the variable!
var testAge: Int = 20 {
  didSet {
    if testAge < 0 {
      print("You cannot have negative age")
      testAge = oldValue
    } else {
      print("Your age is now set to \(testAge)")
    }
  }
}

testAge = 15

testAge = -10

print(testAge)

//: -----
//: Marwan Alani - 2018
