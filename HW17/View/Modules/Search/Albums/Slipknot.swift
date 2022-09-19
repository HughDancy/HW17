//
//  Slipknot.swift
//  HW17
//
//  Created by Борис Киселев on 18.09.2022.
//

import SwiftUI

struct Slipknot: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            GeometryReader { reader in
                
                ZStack {
                    Image("slipknot")
                        .resizable()
                    //                        .frame(width: 480,  height: 500)
                        .offset(y: -reader.frame(in: .global).minY)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width, height: reader.frame(in: .global).minY + 500)
                    
                    Text("Slipknot")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 60)
                    
                    
                    Text("Метал ・ 2001")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.top, 110)
                    
                    HStack {
                        Button(action: {}) {
                            HStack {
                                Image(systemName: "play.fill")
                                    .foregroundColor(.black)
                                    .padding(.leading, 20)
                                Text("Слушать")
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                    .padding(.trailing, 20)
                            }
                        }
                        .buttonStyle(.borderedProminent)
                        .accentColor(Color("userGray"))
                        
                        Button(action: {}) {
                            HStack {
                                Image(systemName: "shuffle")
                                    .foregroundColor(.black)
                                    .padding(.leading, 10)
                                Text("Перемешать")
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                    .padding(.trailing, 10)
                            }
                        }
                        .buttonStyle(.borderedProminent)
                        .accentColor(Color("userGray"))
                    }
                    .padding(.top, 190)
                }
                
            }
            .frame( height: 500)
            
            VStack(alignment: .leading, spacing: 15) {
                
                ForEach(ahig, id: \.self) {  song in
                    HStack {
                        Text(song)
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .padding(.leading, 15)
                        
                            .padding(.bottom, 40)
                        
                        Spacer()
                        
                        Image(systemName: "heart")
                            .padding(.trailing, 15)
                        Divider()
                            .foregroundColor(.black)
                    }
                    
                }
                
                .offset(y: -1)
            }
            
            .ignoresSafeArea(.all)
            .background(Color("userGray").edgesIgnoringSafeArea(.all))
            
        }
        .background(Color("userGray").edgesIgnoringSafeArea(.all))
    }
}

struct Slipknot_Previews: PreviewProvider {
    static var previews: some View {
        Slipknot()
    }
}
