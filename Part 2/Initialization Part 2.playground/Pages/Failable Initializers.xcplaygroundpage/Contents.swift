/*:
 [< Previous](@previous)           [Home](Introduction)

 ## Failable Initializers
*/
import Foundation
/*:
Sample Class
 */
/*
 class Person {
     var name: String
      init(name: String) {
         self.name = name
     }
 }
*/
/*:
 ##### Create a Failable Initializer
 use:  .trimmingCharacters(in: .whitespacesAndNewlines) to trim any leading or trailing spaces.
 */
class Person {
    var name: String
     init?(name: String) {
         if name.trimmingCharacters(in: .whitespacesAndNewlines) != "" {
             self.name = name.trimmingCharacters(in: .whitespacesAndNewlines)
         } else {
             return nil
         }
    }
}
let p1 = Person(name: " Stewart ")
let p2 = Person(name: "  ")
/*:
 #### Create a Function to create users
 Use the Result type and completion handler to deal with nill objects
 */
enum CreationError: Error {
    case invalidName
}

func createPerson(name: String, completion: (Result<Person, CreationError>) -> Void) {
    let person = Person(name: name)
    guard person != nil else {
        completion(.failure(.invalidName))
        return
    }
    completion(.success(person!))
}

createPerson(name: " Stewart ") { (result) in
    switch result {
    case .failure(let error):
        print(error)
    case .success(let person):
        print("\(person.name) was created")
    }
}
/*:

[< Previous](@previous)           [Home](Introduction)
*/
