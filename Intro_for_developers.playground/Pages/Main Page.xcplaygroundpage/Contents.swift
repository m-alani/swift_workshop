//: # Swift for Developers 🖥
//: ### An introductory workshop
//: -----

import Foundation

//: 🔹The Basics


//: -----
//: 🔹Optionals

// Unwrapping

// Chaining

// Coalescing


//: -----
//: 🔹Control Flow


//: -----
//: 🔹Collections


//: -----
//: 🔹Functions (and Closures)


//: -----
//: ⚛️Bonus Round: Cool features
// Emojis (WHAAAAAT!?)

// Extensions

// Computed Properties

// Property Observers

// Smart compiler






// Helper function to show the address of a variable in memory
func addressOf(_ o: UnsafeRawPointer) -> String {
  let addr = Int(bitPattern: o)
  return String(format: "%p", addr)
}
//: -----
//: Marwan Alani - 2018
