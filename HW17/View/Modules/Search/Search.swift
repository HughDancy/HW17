//
//  Search.swift
//  HW17
//
//  Created by Борис Киселев on 02.09.2022.
//

import SwiftUI

struct Search: View {
    
    @State var search = ""
    
    var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    
    
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            
            VStack(spacing: 18) {
                HStack {
                    
                    Text("Поиск")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.primary)
                        .padding(.leading, 10)
                    
                    Spacer(minLength: 0)
                }
                
                HStack(spacing: 15) {
                    
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.primary)
                        .padding(.horizontal, 10)
                    
                    TextField("Поиск", text: $search)
                } 
                
                .padding(.vertical, 10)
                .padding(.horizontal)
                .background(Color.primary.opacity(0.06))
                .cornerRadius(15)
                
                LazyVGrid(columns: columns , spacing: 20){
                    ForEach(albumImages.shuffled(), id: \.self){ index in
                        
                        Image(index.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: (UIScreen.main.bounds.width - 50) / 2, height: 180)
                            .cornerRadius(15)
                        
                    }
                }
            }
            .padding(.bottom, 90)
        }
    }
}

