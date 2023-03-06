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
    @State private var currentIndex: Int = 0
    
    let finalText:[String] = [
        "I am Monochromon, welcome to my store, I heard you want to earn some cash and prove you got salesman skills! sure thing",
        "when a customer comes in you can chose to sell the item for Higher, normal or lower price. your aim is to make as much cash as you can",
        "but be careful and take note at a customers mood, they wont haggle for ever and you may miss the sale all together!",
        "So if you think you got what it takes lets begin!"
    ]
    
    
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
                        typewritter(for: finalText, at: currentIndex)
                        currentIndex += 1
                    }

                    .padding(.trailing, 20)
                    .padding(.top, 80)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .padding()
        .onAppear {
            typewritter(for: finalText, at: currentIndex)
            currentIndex += 1
        }
    }
    
    
    func typewritter(for strings: [String], at index: Int, position: Int = 0) {
        if position == 0 {
            text = ""
        }
        if position < strings[index].count {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.08) {
                text.append(strings[index][position])
                typewritter(for: strings, at: index,position: position + 1)
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
