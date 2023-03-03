//
//  secondView.swift
//  monochromonsStore-ios
//
//  Created by Dwayne on 1/3/2023.
//

import SwiftUI

struct startingView: View {
    @State private var playerName = ""
    @State private var isButtonTapped: Bool = false
    
    private var isPlayerNameEmpty: Bool {
            playerName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
        }
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("What is your name")
                TextField("enter name", text: $playerName)
                    .padding()
                    .multilineTextAlignment(.center)
                Button(action: {
                    isButtonTapped = true
                }, label: {
                    Text("Confirm")
                })
                .padding()
                .disabled(isPlayerNameEmpty)
                if isButtonTapped {
                    NavigationLink("Push to start", destination: welcomeView(name: playerName))
                }
            }
        }
    }
}

struct secondView_Previews: PreviewProvider {
    static var previews: some View {
        startingView()
        }
    }
