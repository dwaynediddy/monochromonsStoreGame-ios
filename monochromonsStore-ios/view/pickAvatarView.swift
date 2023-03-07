//
//  pickAvatar.swift
//  monochromonsStore-ios
//
//  Created by Dwayne on 6/3/2023.
//

import SwiftUI

struct PickAvatarView: View {
    @ObservedObject var avatarModel = AvatarModel()
    @State private var selectedAvatar: Avatar?
    
    var body: some View {
        VStack {
            Text("Select your avatar")
                .font(.title)
            TabView {
                ForEach(avatarModel.avatars, id: \.name) { avatar in
                    Image("\(avatar.image)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            Button(action: {
                           
                }, label: {
                    Text(selectedAvatar != nil ? "Select \(selectedAvatar!.name)" : "Select an avatar")
                        .font(.system(.title2))
                })
            .padding()
        }
//        .background(.gray)
    }
}

struct PickAvatarView_Previews: PreviewProvider {
    static var previews: some View {
        PickAvatarView()
    }
}
