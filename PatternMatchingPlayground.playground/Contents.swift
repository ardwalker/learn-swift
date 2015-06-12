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






