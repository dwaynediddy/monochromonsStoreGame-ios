//
//  startView.swift
//  monochromonsStore-ios
//
//  Created by Dwayne on 1/3/2023.
//

import SwiftUI

struct startView: View {
    var handler: (Player) -> Void
    @State private var name = ""
    
    var body: some View {
        VStack {
            Text("Hello Stranger what is your name?")
            TextField("enter name:", text: $name)
                .padding()
            Button(action: {
                let newPlayer = Player(name: name.self)
                self.handler(newPlayer)
            }, label: {
                Text("Save")
            })
        }
    }
}

struct startView_Previews: PreviewProvider {
    static var previews: some View {
        startView() { newPlayer in
            print("Saving player name \(newPlayer.name)")
        }
    }
}
