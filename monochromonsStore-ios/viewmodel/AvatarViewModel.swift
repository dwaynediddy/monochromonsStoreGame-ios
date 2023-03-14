//
//  AvatarViewModel.swift
//  monochromonsStore-ios
//
//  Created by Dwayne on 9/3/2023.
//

import Foundation

struct Avatar {
    let name: String
    let image: String
}

class PickAvatarViewModel: ObservableObject {
    @Published var avatars: [Avatar] = []
    @Published var selectedAvatar: Avatar?
    
    init() {
        self.avatars = [
            Avatar(name: "Gabumon", image: "gabumon"),
            Avatar(name: "Agumon", image: "agumon"),
            Avatar(name: "Petamon", image: "petamon"),
            Avatar(name: "Polomon", image: "polomon"),
            Avatar(name: "Biromon", image: "biromon"),
        ]
    }
    func selectAvatar(_ avatar: Avatar) {
        self.selectedAvatar = avatar
        saveSelectedAvatar()
    }
    
    func saveSelectedAvatar() {
        guard let selectAvatar = selectedAvatar else {
            return
        }
        UserDefaults.standard.set(selectAvatar.name, forKey: "selectedAvatarName")
    }
    
}
