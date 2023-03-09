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
                Button(action: {
                    avatarModel.selectAvatar(avatar)
                    print(avatar)
                }) {
                    VStack {
                        Image("\(avatar.image)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            
                        Button(action: {
                            avatarModel.selectAvatar(avatar)
                            print(avatar)
                        }, label: {
                            Text("Select \(avatar.name)")
                                .font(.system(.title2))
                        })
                        .padding(.top, 20)
                    }
                }
            }
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
//        .background(.gray)
    }
}

struct PickAvatarView_Previews: PreviewProvider {
    static var previews: some View {
        PickAvatarView()
    }
}
