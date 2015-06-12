//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// OPTIONALS
let ageStr = "50"
let age = ageStr.toInt()


let ageBadStr = "fifty"
let optAge: Int? = ageBadStr.toInt()


// UNWRAPPING - standard checking for nil

if (optAge != nil) {
   println("\(optAge)")
}
else {
   println("Oops")
}


// UNWRAPPING - if let syntax

if let optAge2 = ageStr.toInt() {
    println("\(optAge2)")
}

// OPTIONAL BINDING

// This is ugly
if let aVal = a {
    if let bVal = a.b {
        if let cVal = b.c {
            println("\(cVal)")
        }
    }
}

// OPTIONAL chaining - Can chain safely instead
let answer = a?.a.b?.b.c?.doIt


// FORCED UNWRAPPING --  ! if youre sure
// IF ... LET -- safe
// OPTIONAL CHAINING


// WEAK REFERENCES, UNOWNED REFERENCES

















