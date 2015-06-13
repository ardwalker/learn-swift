//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// ===============================
// ARRAYS
// ===============================

var someInts = [Int]()
println("someInts is of type [Int] with \(someInts.count) items.")
someInts.append(3)

// Alternative initializer
var threeDoubles = [Double](count: 3, repeatedValue: 0.5)


// Array literals
var shoppingList: [String] = ["Eggs", "Milk"]
//shoppingList[1...2] = ["Bananas", "Apples"]
shoppingList.insert("Syrup", atIndex: 0)

let apples = shoppingList.removeLast()

for item in shoppingList {
    println(item)
}

// Enumerate
for (index, value) in enumerate(shoppingList) {
    println("Item \(index + 1): \(value)")
}

// ===============================
// MAP
// ===============================

var mappedItems = [1,2,3].map { $0 * 2 }
mappedItems

var ageStrs = ["25","22","50"]

let ages: [Int] = ageStrs.map { return $0.toInt()! }
ages
let agesTotal   = ages.reduce(0) { return $0 + $1 }
agesTotal


var flattenedThing = flatMap([[1,2,3],[4,5,6]], { $0 })
flattenedThing









