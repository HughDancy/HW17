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
        Text("All Hope Is Gone")
    }
    
   
}


struct Ahig_Previews: PreviewProvider {
    static var previews: some View {
        Ahig()
    }
}
