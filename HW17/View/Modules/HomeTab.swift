//
//  HomeTab.swift
//  HW17
//
//  Created by Борис Киселев on 02.09.2022.
//

import SwiftUI

struct HomeTab: View {
    
    // Miniplayer properties
    
    @State var expand = false
    
    @Namespace var animation
    
    // Home TabBar body
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            
            TabView {
                
                LibraryView()
                    .tabItem {
                        Image(systemName: "music.note.house.fill")
                        Text("Слушать")
                    }
                RadioScreen()
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                Search()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .accentColor(.pink)
            
            Miniplayer(animation: animation, expand: $expand)
            
        })
    }
    
}


struct HomeTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeTab()
    }
}
