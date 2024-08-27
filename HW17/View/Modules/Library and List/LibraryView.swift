//
//  LibraryView.swift
//  HW17
//
//  Created by Борис Киселев on 02.09.2022.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 2) {
                Text("Ищите свою музыку?")
                    .font(.title3)
                    .fontWeight(.bold)
                Text("Здесь появится музыка купаленная Вами в iTunes Store музыка")
                    .padding(.horizontal, 40)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
                    .font(.callout)
                    .foregroundColor(.gray)
            }
            
            .navigationTitle("Медиатека")
            .toolbar {
                
                NavigationLink(destination: ListView()) {
                    Text("Править")
                        .foregroundColor(.pink)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
