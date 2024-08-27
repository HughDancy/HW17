//
//  Ahig.swift
//  HW17
//
//  Created by Борис Киселев on 15.09.2022.
//

import SwiftUI

struct Ahig: View {
    
    
    @State private var multisection = Set<UUID>()
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            List {
                Section {
                    ZStack {
                        Image("ahig")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .ignoresSafeArea()
                        Text("All Hope Is Gone")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.top, 210)
                        Text("Slipknot")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.top, 270)
                        Text("Метал ・ 2008")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.top, 310)
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
                        .padding(.top,380)
                        
                    }
                }
                .padding(-57.0)
                .padding(.bottom,50)
                .ignoresSafeArea(.all, edges: .top)
                
                Section {
                    ForEach(ahig, id: \.self) { song in
                        Text(song)
                            .font(.caption)
                            .foregroundColor(.black)
                    }
                }
            }
            .padding(0.0)
            .listStyle(.plain)
        }
        .padding(.bottom, 30)
    }
}

struct Ahig_Previews: PreviewProvider {
    static var previews: some View {
        Ahig()
    }
}
