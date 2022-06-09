//
//  Person.swift
//  HW 2.7
//
//  Created by Zdrenko Zigich on 23.05.2022.
//

import Foundation

struct Person {
    let name: String
    let secondName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(secondName)"
    }
    
    static func getPersonList() -> [Person] {
        
        let data = DataManager()
        var persons: [Person] = []
        
        let names = data.names.shuffled()
        let secondNames = data.secondNames.shuffled()
        let phoneNumbers = data.phoneNumbers.shuffled()
        let emails = data.emails.shuffled()
        
        for indexElement in 1..<data.names.count {
            let somePerson = Person(
                name: names[indexElement],
                secondName: secondNames[indexElement],
                phoneNumber: phoneNumbers[indexElement],
                email: emails[indexElement]
            )
            persons.append(somePerson)
        }
        return persons
    }
    
}
