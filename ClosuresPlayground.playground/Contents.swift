//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var clients = ["Pestov","Buenaventura","Sreeram","Babbage"]

clients.sort { (a:String, b:String) -> Bool in
    return a < b
}

// Types are inferred
clients.sort { (a, b) -> Bool in
    return a < b
}

// Return type is inferred
clients.sort { (a, b) in
    return a < b
}

clients.sort { $0 < $1 }


// ===============

var words = ["angry","hungry","whatever"]

words.filter{$0.hasSuffix("gry")}
    .map{$0.uppercaseString }
    .reduce("HULK") {"\($0) \($1)"}







