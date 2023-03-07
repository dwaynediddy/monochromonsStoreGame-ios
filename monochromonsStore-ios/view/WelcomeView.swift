//
//  firstView.swift
//  monochromonsStore-ios
//
//  Created by Dwayne on 1/3/2023.
//

import SwiftUI

struct WelcomeView: View {
    
    var name: String
    @State private var text: String = ""
    @State private var currentIndex: Int = 0
    @State private var isDone : Bool = false
    @State private var isTypingPaused: Bool = false
    
    let finalText:[String] = [
        "I am Monochromon, welcome to my store, I heard you want to earn some cash and prove you got salesman skills! sure thing",
        "When a customer comes in you can chose to sell the item for Higher, normal or lower price. your aim is to make as much cash as you can",
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
            if isDone {
                NavigationLink("Push to start", destination: PickAvatarView())
            }
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
                    
                    Button(action: {
                        if finalText.indices.contains(currentIndex) {
                            isTypingPaused = true
                            isDone = true
                            typewritter(for: finalText[currentIndex], at: 0)
                            currentIndex += 1
                        }
                    }, label: {
                            Text("Next")
                        })
                    .padding(.trailing, 20)
                    .padding(.top, 80)
                }
            }
            .navigationBarBackButtonHidden(true)
            .padding()
            .onAppear {
                if finalText.indices.contains(currentIndex) {
                    typewritter(for: finalText[currentIndex], at: 0)
                    currentIndex += 1
                }
            }
        }
    }
    
    func typewritter(for string: String, at position: Int) {
        if position == 0 {
            text = ""
        }
        if position < string.count {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.08) {
                if !isTypingPaused {
                    text.append(string[string.index(string.startIndex, offsetBy: position)])
                    typewritter(for: string, at: position + 1)
                } else {
                    isTypingPaused = false
                }
            }
        }
    }
}

struct firstView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(name: "test name")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

extension String {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
