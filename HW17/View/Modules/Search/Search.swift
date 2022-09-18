//
//  Search.swift
//  HW17
//
//  Created by Борис Киселев on 02.09.2022.
//

import SwiftUI

struct Search: View {
    @State private var multisection = Set<UUID>()
    
    @State private var search = ""
    
    
    var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    var secondColumns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 1)
    
    @ObservedObject var someAlbums = Albums()
    @ObservedObject var someSongs = Songs()
    
    
    var filtredAlbums: [Album] {
        if search == "" { return someAlbums.albums }
        return someAlbums.albums.filter {
            $0.name.lowercased().contains(search.lowercased()) || $0.artist.lowercased().contains(search.lowercased())
        }
    }
    
    var filtredSongs: [Song] {
        if search == "" { return someSongs.songs}
        return someSongs.songs.filter {
            $0.name.lowercased().contains(search.lowercased()) || $0.artist.lowercased().contains(search.lowercased()) ||
            $0.album.lowercased().contains(search.lowercased())
        }
    }
    
    
    
    var body: some View {
        NavigationView {
            
            ScrollView(showsIndicators: false) {
                
                
                
                VStack(alignment: .leading, spacing: 18) {
                    Text("Альбомы")
                        .font(.title2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 10)
                    
                    
                    LazyVGrid(columns: columns , spacing: 20){
                        ForEach(filtredAlbums, id: \.self) { index in
                            
                            VStack {
                                NavigationLink(destination: AllHope()) {
                                    Image(index.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: (UIScreen.main.bounds.width - 50) / 2, height: 180)
                                        .cornerRadius(15)
                                }
                                
                                
                                
                                Text(index.name)
                                    .foregroundColor(.black)
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.center)
                                Text(index.artist)
                                    .foregroundColor(.black)
                                    .font(.caption)
                                
                            }
                            
                        }
                        
                        
                        
                    }
                    .navigationTitle("Поиск")
                    
                    .searchable(text: $search, placement: .navigationBarDrawer(displayMode: .always) ,prompt: "Найди свою музыку")
                    .padding(.bottom, 20)
                    
                    
                    Text("Песни")
                        .font(.title2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 20)
                    
                    LazyVGrid(columns: secondColumns, alignment: .leading, spacing: 20) {
                        ForEach(filtredSongs, id: \.self) { song in
                            HStack {
                                Image(song.image)
                                    .resizable()
                                    .frame(width: 50, height: 50, alignment: .leading)
                                    .cornerRadius(10)
                                
                                Text(song.artist)
                                    .font(.caption)
                                    .foregroundColor(.black)
                                
                                Text(song.name)
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .lineLimit(2)
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(.black)
                                
                                Text(song.album)
                                    .font(.caption)
                                    .foregroundColor(.clear)
                                
                                
                            }
                            
                        }
                    }
                    .padding(.leading, 15)
                    .padding(.bottom, 80)
                    
                }
                
            }
            
        }
        
    }
}


