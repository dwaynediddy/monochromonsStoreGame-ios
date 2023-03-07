//
//  avatarModel.swift
//  monochromonsStore-ios
//
//  Created by Dwayne on 7/3/2023.
//

import Foundation

struct Avatar {
    let name: String
    let image: String
}

class AvatarModel: ObservableObject {
    @Published var avatars: [Avatar] = [
           Avatar(name: "Gabumon", image: "gabumon"),
           Avatar(name: "Agumon", image: "agumon"),
           Avatar(name: "Petamon", image: "petamon"),
           Avatar(name: "Polomon", image: "polomon"),
           Avatar(name: "Biromon", image: "biromon"),
       ]
}
