//
//  RadioScreen.swift
//  HW17
//
//  Created by Борис Киселев on 02.09.2022.
//

import SwiftUI

struct RadioScreen: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                Divider()
                RadioH()
                    .padding()
                Divider()
                HStack {
                    Text("Станции")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.leading, 15)
                        .padding(.bottom, 0.5)
                    Spacer()
                }
                RadioVertical()
                    .frame(alignment: .leading)
                    .edgesIgnoringSafeArea(.leading)
            }
            .navigationTitle("Радио")
        }
        .padding(.bottom, 80)
    }
}

struct RadioScreen_Previews: PreviewProvider {
    static var previews: some View {
        RadioScreen()
    }
}


