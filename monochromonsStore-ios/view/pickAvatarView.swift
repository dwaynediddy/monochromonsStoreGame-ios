//
//  pickAvatar.swift
//  monochromonsStore-ios
//
//  Created by Dwayne on 6/3/2023.
//

import SwiftUI

struct PickAvatarView: View {
    @ObservedObject var avatarModel = PickAvatarViewModel()
    
    var body: some View {
        VStack {
            Text("Select your avatar")
                .font(.title)
            TabView {
                ForEach(avatarModel.avatars, id: \.name) { avatar in
                    AvatarButton(avatar: avatar, action: {
                        avatarModel.selectAvatar(avatar)
                        avatarModel.saveSelectedAvatar()
                        print(avatarModel.saveSelectedAvatar(), "avatar is saved")
                    })
                }
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
    //        .background(.gray)
}

struct PickAvatarView_Previews: PreviewProvider {
    static var previews: some View {
        PickAvatarView()
    }
}
