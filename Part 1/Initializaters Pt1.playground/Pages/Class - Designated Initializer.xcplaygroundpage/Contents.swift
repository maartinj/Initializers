/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## Class - Designated Initializer
*/
/*:
 Sample Class
 */
/*
class Person {
    var name: String
    var age: Int
    var dog: String?
    var nationality = "Canadian"
}
 */
/*:
 ### Fixing Error with default values
 */
class Person {
    var name: String = "John"
    var age: Int = 18
    var dog: String?
    var nationality = "Canadian"
}
let p = Person()
p.dog = "Poodle"
/*:
 ### Create an Initializor for those properties that do not have a default value, or which are optional.
 */
class Person2 {
    var name: String
    var age: Int
    var dog: String?
    var nationality = "Canadian"
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
//let p2 = Person2(defaultName: "Mary", defaultAge: 12)
let p2 = Person2(name: "Mary", age: 12)
/*:
 ### More Initializer concepts
 1. argument labels
*/
class Person3 {
    var name: String = "John"
    var age: Int = 18
    var dog: String?
    var nationality = "Canadian"
    
    init(defaultName name: String, _ age: Int) {
        self.name = name
        self.age = age
        print("\(name) was created")
    }
}
//let p3 = Person3(defaultName: "Steven", 16)
//let p3a = Person3(defaultName: "Emily", 12)
/*:
 2.  Working with Static Properties
*/
class Person4 {
    var name: String = "John"
    var age: Int = 18
    var dog: String?
    var nationality = "Canadian"
    static var total = 0
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        Self.total += 1
    }
}

let p4 = Person4(name: "sam", age: 18)
let p4a = Person4(name: "Elizabeth", age: 42)
Person4.total
/*:
### Properties with Optional Default Values
*/
class Person5 {
    var name: String
    var age: Int
    var dog: String?
    var nationality: String
    
    init(name: String, age: Int, dog: String? = "Poddle", nationality: String = "Canadian") {
        self.name = name
        self.age = age
        self.dog = dog
        self.nationality = nationality
    }
}
let p5 = Person5(name: "Mary", age: 3)
let p5a = Person5(name: "Jimmy", age: 6, nationality: "American")
let p5b = Person5(name: "Jimmy", age: 6, dog: "Boxer", nationality: "American")
let p5c = Person5(name: "Jimmy", age: 6, dog: "Boxer")
/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
