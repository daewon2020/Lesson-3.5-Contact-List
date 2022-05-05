//
//  PersonDetails.swift
//  Lesson 3.5 Contact List
//
//  Created by Константин Андреев on 04.05.2022.
//

import SwiftUI

struct PersonDetails: View {
    let person: Person!
    
    var body: some View {
        List {
            HStack{
                Spacer()
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding()
                Spacer()
            }
            ListInfoRow(image: "phone", data: "\(person.phone)")
            ListInfoRow(image: "mail", data: "\(person.email)")
        }
        .navigationTitle("\(person.name) \(person.surname)")
        .padding()
    }
}

struct PersonDetails_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetails(person: Person.getPerson())
    }
}
