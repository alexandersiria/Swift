import Cocoa



enum engineAct {
    case start
    case stop
}

enum trunkAct {
    case full
    case emptн
}

enum windowAct {
    case open
    case close
}



struct Car {
    let model : String
    let brand : String
    let hp: String
    var bodyColor : String
    mutating func changeColor(color:String) {
        switch color {
        case "purple":
            self.bodyColor = "purple"
        case "cosmos":
            self.bodyColor = "cosmos"
        case "pink":
            self.bodyColor = "pink"
        case "black":
            self.bodyColor = "black"
        default:
            print("Some Action")
        }
    }
    let release : Int
    var trunkVolume : Double {
        willSet {
            if (trunkAct == .empty) && (trunkVolume > 0) && (trunkVolume != 0) && (newValue < trunkVolume) {
                let space = trunkVolume - newValue
                print ("\(brand) \(model) trunk free: \(space)")
            } else { print("Input error or \(brand) \(model) trunk is full.")}
        }
    }
    var engineAct : engineAct {
        willSet {
            if newValue == .start {
                print ("\(brand) \(model) engine is on")
            } else {print("\(brand)\(model) engine is off")}
        }
    }
    var windowAct : windowAct {
        willSet {
            if newValue == .open {
                print("\(brand) \(model) windows are open")
            } else { print("\(brand) \(model) windows are close") }
        }
    }
    var trunkAct : trunkAct
    mutating func emptyTrunck() {
        self.trunkAct = .empty
        print ("\(brand) \(model) trunck is empty")
    }
}

struct Truck {
    let model : String
    let brand : String
    var bodyColor : String
    mutating func changeColor(color:String) {
        switch color {
        case "white":
            self.bodyColor = "white"
        case "black":
            self.bodyColor = "black"
        case "red":
            self.bodyColor = "red"
        case "blue":
            self.bodyColor = "blue"
        default:
            print("Error.")
        }
    }
    let release : Int
    var bodyVolume : Double {
        willSet {
            if (trunkState == .empty) && (bodyVolume > 0) && (bodyVolume != 0) && (newValue < bodyVolume) {
                let space = bodyVolume - newValue
                print ("\(brand) \(model) trunk free: \(space)")
            } else { print("Input error or \(brand) \(model) trunk is full.")}
        }
    }
    var engineState : engineAct {
        willSet {
            if newValue == .start {
                print ("\(brand) \(model) engine is on")
            } else {print("\(brand) \(model) engine is off")}
        }
    }
    var windowState : windowAct {
        willSet {
            if newValue == .open {
                print("\(brand) \(model) windows are open")
            } else { print("\(brand) \(model) windows are close") }
        }
    }
    var trunkState : trunkAct
    mutating func emptyTrunck() {
        self.trunkState = .empty
        print ("\(brand) \(model) trunck is empty")
    }
}

var car1 = Car(model: "G35", brand: "Infinity", hp: "240", bodyColor: "purple", release: 2007, trunkVolume: 220.0 , engineAct: .start, windowAct: .open, trunkAct: .empty)
var car2 = Car(model: "Odissey", brand: "Honda", hp: "150", bodyColor: "black", release: 2004, trunkVolume: 750.0, engineAct: .stop, windowAct: .close, trunkAct: .full)

var truck1 = Truck(model: "Highlander", brand: "Scania", bodyColor: "white", release: 2002, bodyVolume: 24000.0, engineState: .start, windowState: .open, trunkState: .full)
var truck2 = Truck(model: "Exlusive", brand: "Man", bodyColor: "black", release: 2004, bodyVolume: 4000.0, engineState: .start, windowState: .close, trunkState: .empty)


car1.engineAct = .start
car1.trunkVolume = 222.0
car1.changeColor(color: "pink")
car2.trunkVolume = 240.0
car2.emptyTrunck()
car2.trunkVolume = 22.9
car2.windowAct = .open
car2.changeColor(color: "white")

truck1.engineState = .stop
truck1.windowState = .close
truck2.engineState = .stop
truck2.bodyVolume = 200000



