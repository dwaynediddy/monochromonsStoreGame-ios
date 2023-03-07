//
//  pickAvatar.swift
//  monochromonsStore-ios
//
//  Created by Dwayne on 6/3/2023.
//

import SwiftUI

struct PickAvatarView: View {
    let images:[String] = ["gabumon", "agumon", "petamon", "polomon", "biromon"]
    
    var body: some View {
        VStack {
            Text("Select your avatar")
                .font(.title)
            TabView {
                ForEach(0..<5) { i in
                    Image("\(images[i])")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            Button(action : {
                
            }, label: {
                Text("Select")
                
            })
            .padding()
        }
        .background(.gray)
    }
}

struct PickAvatarView_Previews: PreviewProvider {
    static var previews: some View {
        PickAvatarView()
    }
}
