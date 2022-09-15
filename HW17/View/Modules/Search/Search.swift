//
//  Search.swift
//  HW17
//
//  Created by Борис Киселев on 02.09.2022.
//

import SwiftUI

struct Search: View {
    
    @State private var search = ""
    
    var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    @ObservedObject var someAlbums = Albums()
  
    var filtredAlbums: [Album] {
        if search == "" { return someAlbums.albums }
        return someAlbums.albums.filter {
            $0.name.lowercased().contains(search.lowercased()) || $0.artist.lowercased().contains(search.lowercased())
        }
    }
    
    
    
    var body: some View {
        NavigationView {
           
            ScrollView(showsIndicators: false) {
                
                VStack(spacing: 18) {
//                    HStack {
//                        
//                        Text("Поиск")
//                            .font(.largeTitle)
//                            .fontWeight(.heavy)
//                            .foregroundColor(.primary)
//                            .padding(.leading, 10)
//                        
//                        Spacer(minLength: 0)
//                    }
//                    
//                    HStack(spacing: 15) {
//                        
//                        Image(systemName: "magnifyingglass")
//                            .foregroundColor(.primary)
//                            .padding(.horizontal, 10)
//                        
//                        TextField("Поиск", text: $search)
//                    }
//                    
//                    .padding(.vertical, 10)
//                    .padding(.horizontal)
//                    .background(Color.primary.opacity(0.06))
//                    .cornerRadius(15)
                    
                    LazyVGrid(columns: columns , spacing: 20){
                        ForEach(filtredAlbums, id: \.self) { index in
                            ZStack {
                                Image(index.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: (UIScreen.main.bounds.width - 50) / 2, height: 180)
                                    .cornerRadius(15)
                                
                                Text(index.name)
                                    .foregroundColor(.clear)
                                Text(index.artist)
                                    .foregroundColor(.clear)
                                
                            }
                            
                        }
                        
                    }
                    .navigationTitle("Поиск")
                   
                    .searchable(text: $search, prompt: "Найди свою музыку")
               
                }
                .padding(.bottom, 90)
            }
            
        }
       
    }
}

