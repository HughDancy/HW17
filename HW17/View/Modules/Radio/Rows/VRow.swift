//
//  VRow.swift
//  HW17
//
//  Created by Борис Киселев on 02.09.2022.
//

import SwiftUI

struct Vrow: View {
    let title: String
    let image: String
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(17)
            VStack (alignment: .leading) {
                Text(title)
                    .font(.callout)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .lineLimit(1)
                Text("Станция Apple Music")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .lineLimit(1)
            }
            Spacer()
        }
        .padding()
    }
}


