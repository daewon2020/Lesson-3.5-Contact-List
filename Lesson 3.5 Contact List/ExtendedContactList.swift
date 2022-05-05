//
//  ExtendedContactList.swift
//  Lesson 3.5 Contact List
//
//  Created by Константин Андреев on 05.05.2022.
//

import SwiftUI

struct ExtendedContactList: View {
    let persons: [Person]
    var body: some View {
        NavigationView {
            List(persons) { person in
                Section("\(person.name) \(person.surname)") {
                    ListInfoRow(image: "phone", data: "\(person.phone)")
                    ListInfoRow(image: "mail", data: "\(person.email)")
                }
            }.navigationTitle("Extended Contact List")
        }
    }
}

struct ExtendedContactList_Previews: PreviewProvider {
    static var previews: some View {
        ExtendedContactList(persons: Person.getPersons(20))
    }
}
