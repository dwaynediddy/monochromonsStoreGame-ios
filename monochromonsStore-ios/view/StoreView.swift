//
//  StoreView.swift
//  monochromonsStore-ios
//
//  Created by Dwayne on 14/3/2023.
//

import SwiftUI

struct StoreView: View {
    var body: some View {
        VStack {
            HStack {
                Image("agumon")
                    .resizable()
                    .frame(width: 200, height: 200)
                Image("monochromon")
                    .resizable()
                    .frame(width: 200, height: 200)
            }
            
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 350, height: 150)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 2))
                    Text("text")
            }
            .padding()
        }
    }
}

struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
    }
}
