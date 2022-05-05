//
//  ContentView.swift
//  Lesson 3.5 Contact List
//
//  Created by Константин Андреев on 04.05.2022.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getPersons(20)
    
    var body: some View {
        TabView{
            ContactList(persons: persons).tabItem {
                Image(systemName: "person.3")
                Text("Contacts")
            }
            
            ExtendedContactList(persons: persons).tabItem {
                Image(systemName: "phone")
                Text("Numbers")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
