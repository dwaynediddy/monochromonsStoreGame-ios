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
        VStack {
            Text("Welcome, \(name)!")
                .padding(.top, 50)
                .font(.title)
            Spacer()
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 350, height: 150)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 2))
                Text("welcome to the store")
            }
        }
        .navigationBarBackButtonHidden(true)
        .padding()
    }
}

struct firstView_Previews: PreviewProvider {
    static var previews: some View {
        welcomeView(name: "John")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
