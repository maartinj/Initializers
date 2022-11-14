/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## Multiple Designated Initializers
*/
/*:
 Sample Class
 */
/*
class Person {
  var name: String
  var age: Int
  var dog: String?
  var nationality: String
}
*/

/*:
 #### Creating Multiple Initializers
 */
class Person {
  var name: String
  var age: Int
  var dog: String?
  var nationality: String
    
    /// Defaults dog to nil but requires all other arguments
    init(name: String, age: Int, nationality: String) {
        self.name = name
        self.age = age
        self.nationality = nationality
    }
    
    /// All 4 arguments required
    init(name: String, age: Int, dog: String?, nationality: String) {
        self.name = name
        self.age = age
        self.dog = dog
        self.nationality = nationality
    }
    
    /// Defaults dog to nil and nationality to Canadian
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        self.nationality = "Canadian"
    }
    
    /// Defaults nationality to Canadian but requires a dog breed
    init(name: String, age: Int, dog: String?) {
        self.name = name
        self.age = age
        self.dog = dog
        self.nationality = "Canadian"
    }
}
