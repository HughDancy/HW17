//
//  HRow.swift
//  HW17
//
//  Created by Борис Киселев on 02.09.2022.
//

import SwiftUI

struct HRow: View {
    let title: String
    let image: String

    var body: some View {

        VStack(alignment: .leading) {
            Text("Избранная радиостанция")
                .font(.callout)
                .foregroundColor(.gray)
                .padding(.leading, 5)
            Text(title)
                .font(.callout)
                .foregroundColor(.black)
                .fontWeight(.bold)
                .padding(.leading, 5)
            Text("Станция Apple Music")
                .font(.callout)
                .foregroundColor(.gray)
                .padding(.leading, 5)
            Image(image)
                .resizable()
                .frame(width: 280, height: 180, alignment: .center)
                .cornerRadius(20)
        }
    }
}
