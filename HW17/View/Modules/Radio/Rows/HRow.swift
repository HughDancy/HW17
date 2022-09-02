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
        VStack(alignment: .leading){
            
            Text("Избранная радиостанция")
                .font(.callout)
                .foregroundColor(.gray)
            Text(title)
                .font(.callout)
                .foregroundColor(.black)
                .fontWeight(.bold)
            Text("Станция Apple Music")
                .font(.callout)
                .foregroundColor(.gray)
           
            Image(image)
                .resizable()
                .frame(width: 300, height: 200)
                .cornerRadius(20)
        }
    }
}
