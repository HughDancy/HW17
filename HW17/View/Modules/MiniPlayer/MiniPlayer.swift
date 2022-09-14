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
    @State var slideerValue = 0.0
    @State var volumeValue = 0.0
    @State var width1: CGFloat = 0
    
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
                    .padding(.top, 15)
                if !expand {
                    Text("Something In The Way")
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
            .padding(.bottom, 20)
            
            VStack(alignment: .center) {
                
                HStack {
                    VStack(alignment: .leading, spacing: 1) {
                    
                        if expand {
                            Text("Something In The Way")
                                .font(.title)
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                                .matchedGeometryEffect(id: "shape", in: animation)
                            
                            Text("Nirvana")
                                .font(.callout)
                                .foregroundColor(.secondary)
                                .fontWeight(.bold)
                                
                        }
                        
                    }
                    .padding(.leading, 13)
                    
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}) {
                        Image(systemName: "ellipsis.circle")
                            .font(.title2)
                            .foregroundColor(.primary)
                        
                    }
                    .padding(.trailing, 13)
                }
                .padding(5)
                
                ZStack(alignment: .leading) {
                    
                    Rectangle()
                        .fill(Color.black.opacity(0.20))
                        .frame(height: 4)
                    
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: self.width1, height: 4)
                    
                    HStack(spacing: 0){
                        
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 8, height: 8)
                            .offset(x: self.width1)
                            .gesture(
                            DragGesture()
                                .onChanged({ (value) in
                                    if value.location.x >= 0 {
                                        self.width1 = value.location.x
                                    }
                                      
                                    
                                    
                                })
                            
                            )
                    }
                }
                .padding(.leading, 14)
                .padding(.trailing, 14)
                .padding(.bottom, 0)
                
                HStack {
                    Text("00:00")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    
                    Spacer()
                    
                    Text("-04:56")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .padding(.leading, 13)
                .padding(.trailing, 13)
                    
                
                .padding(.top, 3)
                
                HStack(spacing: 70) {
                    Button(action: {}) {
                        Image(systemName: "backward.fill")
                            .resizable()
                            .foregroundColor(.primary)
                            .frame(width: 55, height: 35, alignment: .trailing)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "play.fill")
                            .resizable()
                            .foregroundColor(.primary)
                            .frame(width: 45, height: 55, alignment: .center)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                            .resizable()
                            .foregroundColor(.primary)
                            .frame(width: 55, height: 35, alignment: .leading)
                    }
                }
                
                .padding(55)
                
                HStack {
                    Image(systemName: "speaker.fill")
                        .foregroundColor(.primary)
                    
                    Slider(value: $volumeValue, in: 0...100, step: 0.1)
                    
                    Image(systemName: "speaker.wave.3.fill")
                }
                .padding(.leading, 13)
                .padding(.trailing, 13)
                .padding(.bottom, 25)
                
                HStack(spacing: 70) {
                   
                    Button(action: {}) {
                        Image(systemName: "quote.bubble")
                            .resizable()
                            .frame(width: 30, height: 30, alignment: .leading)
                            .foregroundColor(.primary)
                    }
                    .frame(width: 50 , height: 50, alignment: .leading)
                    
                    Button(action: {}) {
                        Image(systemName: "airplayaudio")
                            .resizable()
                            .frame(width: 33, height: 30, alignment: .center)
                            .foregroundColor(.primary)
                      
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "shuffle")
                            .resizable()
                            .frame(width: 37, height: 30, alignment: .trailing)
                            .foregroundColor(.primary)
                    }
                }
                
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

