//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// =======================================================

enum TrainStatus {
    case OnTime
    case Whatever
    case Delayed(Int)
}

var status: TrainStatus = TrainStatus.Delayed(25)


// Switch statements DONT FALLTHROUGH, unless
// using the 'fallthrough' keyword
switch status {
    case .OnTime:               println("On time")
    case .Delayed(let minutes): println("Train is \(minutes)m late")
    //case .Delayed(20...30, let mins):     println("Train is \(mins) late")
    case .Delayed(_):           println("Delayed")
    case .Whatever:             println("Whatever")
}


// =======================================================

enum VacationStatus {
    case Traveling(TrainStatus)
    case Relaxing(daysLeft: Int)
}

var vacayStatus = VacationStatus.Traveling(TrainStatus.OnTime)

switch vacayStatus {
    case .Traveling(.OnTime):
        println("Trains on time can't wait to get there")
    case .Traveling(.Delayed(let mins)):
        println("Train is delayed \(mins) minutes")
    default:
        println("Whatever")
}

// =======================================================

func tuneUp(car: Car) {
    switch car {
    case let formulaOne as FormulaOne:
        formulaOne.enterPit()
    case let raceCar as RaceCar:
        if raceCar.hasTurbo {raceCar.tuneTurbo}
    default:
        println("whatever")
        car.checkOil()
        car.pumpTires()
    }
}

// =======================================================


let color = (0.0, 1.0, 0.8, 1.0)

switch color {
case (0.0, 0.5...1, let blue, _):
    println("Green and \(blue * 100)% blue")
case let (r,g,b, 1.0) where r == g && g == b:
    println("Opaque grey \(r * 100)%")
default:
    println("Whatever")
}












