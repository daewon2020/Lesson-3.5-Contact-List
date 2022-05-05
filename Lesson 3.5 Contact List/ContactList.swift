//
//  ContactList.swift
//  Lesson 3.5 Contact List
//
//  Created by Константин Андреев on 05.05.2022.
//

import SwiftUI

struct ContactList: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(destination: { PersonDetails(person: person) }) {
                    ListInfoRow(image: "person", data: "\(person.name) \(person.surname)")
                }
            }.navigationTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(persons: Person.getPersons(20))
    }
}
