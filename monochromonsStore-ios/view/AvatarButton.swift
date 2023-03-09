//
//  AvatarButton.swift
//  monochromonsStore-ios
//
//  Created by Dwayne on 9/3/2023.
//

import SwiftUI

struct AvatarButton: View {
    let avatar: Avatar
    let action: () -> Void
    @State private var avatarSelected: Bool = false
    
    var body: some View {
        NavigationStack{
            Button(action: {
                avatarSelected = true
                
            }, label: {
                VStack {
                    Image("\(avatar.image)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("Select \(avatar.name)")
                        .font(.system(.title2))
                        .padding()
                }
            })
            if avatarSelected {
                NavigationLink("Continue with \(avatar.name)", destination: TestView())
            }
        }
    }
}
