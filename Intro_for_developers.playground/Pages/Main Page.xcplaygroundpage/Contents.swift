//: # Swift for Developers 🖥
//: ### An introductory workshop
//: -----

import Foundation

//: 🔹The Basics

// declaring variables etc.
var myString: String = "Some String"
let myConst = "Some Constant String"

myString = "Hello World"

//print("This is a inline string literal with \(myString)")

let myInt: Int = Int.max
let myDouble: Double = 3.5
let myString2: String = ""
let myBoolean: Bool = true
let myChar: Character = "f"
let x: Date = Date()

//: -----
//: 🔹Optionals
var myOptionalNo: Int? = nil
var myOptionalNo2: Int? = nil

var networkData: Data? = nil

// Forced Unwrapping (NEVER EVER USE THIS!!! IT'S BAD)
//print(myOptionalNo!)

// Unwrapping
if let myUnwrappedNo = myOptionalNo {
  print(myUnwrappedNo)
} else {
  print("I couldn't unwrap the variable")
}

//guard let testUnwrapped2 = myOptionalNo2, testUnwrapped = myOptionalNo
//  else { exit(0) }

// Chaining
//let someInt = myOptionalNo? + 5

//: -----
//: 🔹Control Flow
// If
if (myInt == 5) {
  
} else if myInt > 10 {
  
} else {
  
}

// Switch/case
switch myInt {
case let x where (x >= 0 && x <= 10 && x % 2 == 0):
  print(myInt)
case 2:
  print(myInt)
default:
  print(myInt)
}

// For loops
for _ in 0...10 {
  print("I'm sorry")
}

/*
while true {
  // do this
}*/

/*
repeat {
  
} while (true)*/
//: -----
//: 🔹Collections
// Arrays
var myArray: [Int] = [1, 2, 3, 4, 5]
let anotherArray = [Int]()

// Dictionaries
// It's basically a key-value implemented as a HashTable
var myDictionary = [String : Int]()
myDictionary = ["one" : 1, "two" : 2, "three" : 3]

// Get the index and value for your itereation through an array
for (idx, number) in myArray.enumerated() {
  print(idx, " ", number)
}

for (str, int) in myDictionary {
  print("\(int) is written as \(str) in English")
}

// Sets
var mySet = Set<Int>()

myArray.append(7)
_ = myArray.first

// All collections have the standard Functional Programming built-in utilities (filter, map, reduce, etc.)
let newArray = myArray.filter({$0 % 2 == 0})
_ = newArray.count
_ = myArray.count
_ = mySet.count

//: -----
//: 🔹Functions (and Closures)
countFromZero(to: 8)

func countFromZero(to input: Int) {
  for i in 0...input {
    print(i)
  }
}

var myClosure = { print("Hello World") }

myClosure()

//: -----
//: ⚛️Bonus Round: Cool features
// Emojis (WHAAAAAT!?)
class Alien {
  
}

let 👽 = Alien()
let 👽👽👽 = [Alien]()

// Extensions
// Computed Properties
extension Alien {
  private static var items = [1 ,2 ,3]
  static var myExtendedCount: Int {
    return items.count
  }
}

// Property Observers
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

// Helper function to show the address of a variable in memory
func addressOf(_ o: UnsafeRawPointer) -> String {
  let addr = Int(bitPattern: o)
  return String(format: "%p", addr)
}
//: -----
//: Marwan Alani - 2018
