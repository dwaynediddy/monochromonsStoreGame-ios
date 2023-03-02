//
//  secondView.swift
//  monochromonsStore-ios
//
//  Created by Dwayne on 1/3/2023.
//

import SwiftUI

struct secondView: View {
    var onSave: (Player) -> Void
    @State private var playerName = ""
    @State private var isShowingFirstView  = false
    
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
                    let newPlayer = Player(name: playerName)
                    onSave(newPlayer)
                    isShowingFirstView = true
                }, label: {
                    Text("enter")
                })
                .padding()
                .disabled(isPlayerNameEmpty)
                Text("welcome \(playerName)")
            }
        }
    }
}

struct secondView_Previews: PreviewProvider {
    static var previews: some View {
        secondView() { player in
            print("\(player)")
            
        }
    }
}
