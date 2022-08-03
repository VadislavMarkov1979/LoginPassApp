//
//  User.swift
//  LoginPassApp
//
//  Created by Владимир Макаров on 04.11.2021.
//

struct User {
    let login: String
    let pass: String
    let person: Person
    
    static func getUserData() -> User {
        User(login: "1", pass: "1", person: Person.getPersonData())
    }
}

struct Person {
    let name: String
    let surname: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPersonData() -> Person {
        Person(name: "Selfish", surname: "Mak")
    }
}
