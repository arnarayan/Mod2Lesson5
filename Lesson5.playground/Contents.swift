import UIKit

protocol PSharp {
    var myName:String { get set }
    func talks()
}

class Human {
    
    
}

class Person: Human, PSharp {
    
    private var name = ""
    
    init(_ who:String) {
        self.name = who
    }
    
    var myName: String {
        
        get {
            return self.name
        }
        set(newName) {
            self.name = newName
        }
        
    }
    
    func talks() {
        print("Make conversation with...\(name)")
    }
}

class Anand : Person {

    override func talks() {
        print("Don't talk to these people \(myName)")
    }
}
var anand = Anand("Goof")
anand.talks()
anand.myName = "Billy"
anand.talks()

