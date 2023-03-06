//
//  firstView.swift
//  monochromonsStore-ios
//
//  Created by Dwayne on 1/3/2023.
//

import SwiftUI

struct welcomeView: View {
    
    let name: String
    @State private var text: String = ""
    
    let finalText: String = "welcome to the store I am Monochromon, I own this store. I heard you want to earn some cash and prove you got salesman skills! sure thing"
    
    
    var body: some View {
        VStack {
            Text("Welcome, \(name)!")
                .padding(.top, 50)
                .font(.title)
            Spacer()
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
                Text(text)
                    .font(.body)
                    .padding(10)
                HStack {
                    Spacer()
                    Button("Next") {
//                        typewriter()
                    }

                    .padding(.trailing, 20)
                    .padding(.top, 80)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .padding()
        .onAppear {
            typewriter()
        }
    }
    
    
    func typewriter(at position: Int = 0) {
        if position == 0 {
            text = ""
        }
        if position < finalText.count {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                text.append(finalText[position])
                typewriter(at: position + 1)
            }
        }
    }
}

struct firstView_Previews: PreviewProvider {
    static var previews: some View {
        welcomeView(name: "test name")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

extension String {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
