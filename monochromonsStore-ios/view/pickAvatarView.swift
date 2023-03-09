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
                Button(action: {
                    self.selectedAvatar = avatar
                }) {
                    VStack {
                        Image("\(avatar.image)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        //                    Text("\(avatar.name)")
                        Button(action: {
                            // save avatar and send to next page
                        }, label: {
                            Text("Select \(avatar.name)")
                                .font(.system(.title2))
                        })
                        .padding()
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
