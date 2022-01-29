import UIKit

var greeting = "Hello, playground"

var names:[String] = ["Sally", "Billy", "Adam", "Devon"]

class Person {

    private var name = ""
    
    init(_ yourName: String) {
        self.name = yourName
    }
    
    func introduceMyself() {
        print("Hi my name is: \(name)")
    }
}

class Chef: Person {
    
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm a Chef")
    }
}

class Poet: Person {
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm a Poet")
    }
}

class Astronaut: Person {
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm an Astronaut")
    }
}


var counter = 0
repeat {
    let selectedName = names[Int.random(in: 0...3)]
    let myOccupation = Astronaut(selectedName)
    myOccupation.introduceMyself()
    counter += 1
} while counter < 10
