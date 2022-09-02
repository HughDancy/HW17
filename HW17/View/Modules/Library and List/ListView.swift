//
//  ListView.swift
//  HW17
//
//  Created by Борис Киселев on 02.09.2022.
//

import SwiftUI

struct ListView: View {
    
    @State private var multisection = Set<UUID>()
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        
        List(selection: $multisection) {
            ForEach(categories, id: \.self) { element in
                HStack {
                    Image(systemName: element.icon)
                        .foregroundColor(.pink)
                    Text(element.category)
                }
            } .onMove(perform: move)
            
            
        }
        .environment(\.editMode, Binding.constant(EditMode.active))
        .listStyle(.plain)
        .navigationTitle("Медиатека")
        .accentColor(.pink)
        
        .toolbar {
            
            Button("Готово") {
                presentationMode.wrappedValue.dismiss()
            }
        }.navigationBarBackButtonHidden(true)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        categories.move(fromOffsets: source, toOffset: destination)
        
    }
}


struct MediaView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

