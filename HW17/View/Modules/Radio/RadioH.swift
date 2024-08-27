//
//  RadioH.swift
//  HW17
//
//  Created by Борис Киселев on 02.09.2022.
//

import SwiftUI

struct RadioH: View {
    let rows = [
        GridItem(.flexible(minimum: 200, maximum: 200), spacing: 40)
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(vRadoiData, id: \.self) { radio in
                    HRow(title: radio.title, image: radio.image)
                }
            }
        }
    }
}

struct RadioH_Previews: PreviewProvider {
    static var previews: some View {
        RadioH()
    }
}
