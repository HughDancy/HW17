//
//  MiniPlayer.swift
//  HW17
//
//  Created by Борис Киселев on 02.09.2022.
//

import SwiftUI

struct Miniplayer: View {
    
    var animation: Namespace.ID
    @Binding var expand: Bool
    var height = UIScreen.main.bounds.height / 3
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    
    var body: some View {
        
        VStack {
            
            Capsule()
                .fill(Color.gray)
                .frame(width: expand ? 60 : 0 , height: expand ? 4 : 0)
                .opacity(expand ? 1 : 0)
                .padding(.top, expand ? safeArea?.top : 0 )
                .padding(.vertical, expand ? 30 : 0)
            
            HStack(spacing: 15) {
                
                if expand{Spacer(minLength: 0)}
                
                Image("Nirvana")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .shadow(radius: 7)
                    .frame(width: expand ? height : 55, height: expand ? height : 55)
                    .cornerRadius(15)
                if !expand {
                    Text("Nirvana - Rape Me")
                        .font(.callout)
                        .fontWeight(.bold)
                        .matchedGeometryEffect(id: "Label", in: animation)
                }
                
                
                Spacer(minLength: 0)
                
                if !expand {
                    
                    Button(action: {}, label: {
                        
                        Image(systemName: "play.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                        
                    })
                    
                    Button(action: {}, label: {
                        
                        Image(systemName: "forward.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                        
                    })
                }
            }
            .padding(.horizontal)
            
            VStack {
                
                HStack {
                    
                    if expand {
                        Text("Nirvana")
                            .font(.title2)
                            .foregroundColor(.primary)
                            .fontWeight(.bold)
                            .matchedGeometryEffect(id: "Label", in: animation)
                    }
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}) {
                        Image(systemName: "ellipsis.circle")
                            .font(.title2)
                            .foregroundColor(.primary)
                        
                    }
                }
                .padding()
                
                Spacer(minLength: 0)
            }
            
            .frame(width: expand ? nil : 0, height: expand ? nil : 0)
            .opacity(expand ? 1 : 0)
        }
        
        .frame(maxHeight: expand ? .infinity : 80)
        .background(
            VStack(spacing: 0) {
                BlurView()
                
                Divider()
            }
                .onTapGesture(perform: {
                    withAnimation(.spring()) { expand.toggle() }
                })
        )
        
        .ignoresSafeArea()
        .offset(y: expand ? 0 :  -48)
    }
}

