//
//  pickAvatar.swift
//  monochromonsStore-ios
//
//  Created by Dwayne on 6/3/2023.
//

import SwiftUI

struct PickAvatarView: View {
    var body: some View {
        VStack {
            Text("Select your avatar")
                .font(.title)
            Image("gabumon")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Button(action : {
                
            }, label: {
                Text("Select")
                
            })
        }
    }
}

struct PickAvatarView_Previews: PreviewProvider {
    static var previews: some View {
        PickAvatarView()
    }
}
