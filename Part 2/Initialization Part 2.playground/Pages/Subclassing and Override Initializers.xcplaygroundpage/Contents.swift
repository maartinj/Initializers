/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## Subclassing and Initializers with Overrides
*/
/*:
 Sample Class
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
}
/*:
 ### Create a subclass called Child with one property: parents: [Person]
 Overriding an initializer
 */
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

let p1 = Person(name: "Stewart", age: 40, nationality: "Canadian")
let p2 = Person(name: "Emily", age: 38, nationality: "German")
let c = Child(parents: [p1, p2], name: "Aidan", age: 3, nationality: "American")
let c1 = Child(name: "Ali", age: 28, nationality: "Canadian")
/*:
 ### Create a Second Child class that is a subclass of Person but with optional parents:[Parent]
 */
class Child2: Person {
    var parents: [Person]?
}
let c2 = Child2(name: "Aidan", age: 3, nationality: "Canadian")
c2.parents = [p1]
c2.parents?.append(p2)
c2.parents
/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
