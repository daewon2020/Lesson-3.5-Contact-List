//
//  ListInfoRow.swift
//  Lesson 3.5 Contact List
//
//  Created by Константин Андреев on 05.05.2022.
//

import SwiftUI

struct ListInfoRow: View {
    let image: String
    let data: String
    
    var body: some View {
        HStack(spacing: 10){
            Image(systemName: image)
            Text(data).frame(alignment: .leading)
            Spacer()
        }
    }
}

struct ListInfoRow_Previews: PreviewProvider {
    static var previews: some View {
        ListInfoRow(image: "phone", data: "Phone: +79879871122")
    }
}
