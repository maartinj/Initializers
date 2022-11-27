/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## Required Initializers
*/
import Foundation
/*:
 Sample Class
 */
class Person {
    var name: String
    required init(name: String) {
        self.name = name
    }
}
/*:
 #### Parent as a subclass of Person
 */
class Parent: Person {
    var children: [String]
    init(name: String, children: [String]) {
        self.children = children
        super.init(name: name)
    }
    required init(name: String) {
        self.children = []
        super.init(name: name)
    }
}
let p1 = Parent(name: "Emily", children: ["Aidan"])
let p2 = Parent(name: "Jordan")
/*:
 #### Child as subclass of Person
 */
class Child: Person {
    var pet: String?
    init(name: String, pet: String) {
        self.pet = pet
        super.init(name: name)
    }
    
    required init(name: String) {
//        fatalError("init(name:) has not been implemented")
        self.pet = nil
        super.init(name: name)
    }
}
let c = Child(name: "Alex")
let c1 = Child(name: "Aidan", pet: "Rupert")
/*:

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
