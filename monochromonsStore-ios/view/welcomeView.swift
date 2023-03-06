//
//  firstView.swift
//  monochromonsStore-ios
//
//  Created by Dwayne on 1/3/2023.
//

import SwiftUI

struct welcomeView: View {
    
    let name: String
    @State private var typedText: String = "welcome to the store I am Monochromon, I own this store. I heard you want to earn some cash and prove you got salesman skills! sure thing"
    
    var body: some View {
        VStack {
            Text("Welcome, \(name)!")
                .padding(.top, 50)
                .font(.title)
            Image("monochromon")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 350, height: 150)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 2))
                Text(typedText)
                    .font(.body)
                Button ("Next") {
                    // go to next dialogue screen
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .padding()
//        .onAppear{
//            let timer = Timer.publish(every: 0.1, on: .main, in: .common)
//            let publisher = timer.autoconnect()
//            let characters = Array("Welcome to the store")
//            _ = publisher
//                .zip(characters.publisher)
//                .map { $0.1 }
//                .sink(receiveValue: { self.typedText += $0 })
//
//        }
    }
}

struct firstView_Previews: PreviewProvider {
    static var previews: some View {
        welcomeView(name: "John")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
