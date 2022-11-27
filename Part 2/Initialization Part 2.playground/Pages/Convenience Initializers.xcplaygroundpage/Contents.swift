/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## Convenience Initializers
*/
/*:
 Sample Class
 */

/*:
 #### Add an additional Initializer that has a default nationality of 'Canadian'
 */
class Person {
    var name: String
    var age: Int
    var nationality: String
    
    init(name: String, age: Int,  nationality: String) {
        self.name = name
        self.age = age
        self.nationality = nationality
    }
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//        self.nationality = "Canadian"
//    }
}
let p = Person(name: "Stewart", age: 40, nationality: "Canadian")
//let p2 = Person(name: "Emily", age: 38)
/*:
 #### Use an extension for the second initializer
 */
extension Person {
    convenience init(name: String, age: Int) {
        self.init(name: name, age: age, nationality: "Canadian")
    }
}
let p2 = Person(name: "Emily", age: 38)

// Subclasses and Convenience Initializers

class Child: Person {
    var parents: [Person]
    init(parents: [Person], name: String, age: Int, nationality: String) {
        self.parents = parents
        super.init(name: name, age: age, nationality: nationality)
    }
    override init(name: String, age: Int, nationality: String) {
        self.parents = []
        super.init(name: name, age: age, nationality: nationality)
    }
}
let c1 = Child(name: "Stewart", age: 2)
let c2 = Child(name: "Emily", age: 1, nationality: "German")
let c3 = Child(parents: [p, p2], name: "Aidan", age: 2, nationality: "American")
/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */




