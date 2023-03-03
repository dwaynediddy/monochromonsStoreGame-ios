//
//  firstView.swift
//  monochromonsStore-ios
//
//  Created by Dwayne on 1/3/2023.
//

import SwiftUI

struct welcomeView: View {
    
    let name: String
    
    var body: some View {
        Text("Welcome, \(name)!")
    }
}

struct firstView_Previews: PreviewProvider {
    static var previews: some View {
        welcomeView(name: "John")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
