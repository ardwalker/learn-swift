//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// Every value must be initialized before its used

var welcomeMessage: String // without adding init, will fail compilation

// ==========================================================


class TestInitializers {
    var message:String
    init(msg: String) {
        message = msg
    }
}

// ==========================================================

// Swift generates a default member-wise initializer
struct Color1 {
    let red, green, blue: Double
}

let c1 = Color1(red: 0, green: 100, blue: 255)


// Default values inline - swift creates empty default initializer
struct Color2 {
    let red = 0, green=100, blue = 255
}

let c2 = Color2()


// ==========================================================



class Car {
    
    var paintColor: Color2
    
    init(color: Color2) {
        paintColor = color
    }
}

class RaceCar: Car {
    var hasTurbo: Bool

    // DESIGNATED initializer
    init(color: Color2, turbo: Bool) {
        hasTurbo = turbo
        super.init(color: color) // Init must be last
    }

    // CONVENIENCE initializer
    convenience override init(color: Color2) {
        self.init(color: color, turbo: true)
    }
    
    // DEINITIALIZER
    deinit {
        // close any resources... eg file descriptors
    }
}


// ==========================================================









