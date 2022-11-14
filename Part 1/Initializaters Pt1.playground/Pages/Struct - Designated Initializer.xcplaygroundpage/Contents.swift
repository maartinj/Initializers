/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## Struct - Designated Initializer
*/
/*:
#### Default Memberwise Initializers
 Example 1
*/
struct Person {
    var name: String
    var age: Int
    var dog: String?
    var nationality = "Canadian"
}
let p = Person(name: "Stewart", age: 68)
let pa = Person(name: "Aidan", age: 27, nationality: "American")
/*:
 Example 2
*/
struct Person3 {
    var name: String
    var age: Int
    var dog: String?
    var nationality = "Canadian"
    static var total = 0
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        Self.total += 1
    }
}

let p3 = Person3(name: "Aidan", age: 27)
let p3a = Person3(name: "Ali", age: 26)
Person3.total

/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
