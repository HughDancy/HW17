//
//  RadioV.swift
//  HW17
//
//  Created by Борис Киселев on 02.09.2022.
//

import SwiftUI

struct RadioVertical: View {
    
    var columns = [
        GridItem(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        ScrollView() {
            LazyVGrid(columns: columns, spacing: 1) {
                ForEach(vRadoiData, id: \.self) { radio in
                    Vrow(title: radio.title, image: radio.image)
                }
            }
        }
    }
}

struct RadioVertical_Previews: PreviewProvider {
    static var previews: some View {
        RadioVertical()
    }
}

