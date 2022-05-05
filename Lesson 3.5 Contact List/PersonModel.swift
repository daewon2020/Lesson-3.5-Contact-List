//
//  PersonModel.swift
//  Lesson 3.5 Contact List
//
//  Created by Константин Андреев on 04.05.2022.
//

import Foundation
import SwiftUI

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    static func getPersons(_ count: Int ) -> [Person] {
        var persons = [Person]()
        for _ in 0...count {
            guard let person = getPerson() else { return [] }
            persons.append(person)
        }
        return persons
    }
    
    static func getPerson() -> Person? {
        let dataManager = DataManager()
        guard let name = dataManager.names.randomElement() else { return nil}
        guard let surname = dataManager.surnames.randomElement() else { return nil}
        
        var phoneNumber: String = "+7"
        for _ in 0...9 {
            let randomNumer: Int = (0...9).randomElement()!
            phoneNumber += "\(randomNumer)"
        }
        
        let email = name + surname + "@" + (dataManager.domains.randomElement() ?? "")
        return Person(name: name, surname: surname, email: email.lowercased(), phone: phoneNumber)
    }
    
}
