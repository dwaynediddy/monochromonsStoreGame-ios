//
//  File.swift
//  monochromonsStore-ios
//
//  Created by Dwayne on 14/3/2023.
//

import Foundation
//import Combine

struct Customer {
    let name: String
    let image: String
    let budget: String
    let goodMood: Bool
}

class CustomerModel: ObservableObject {
    @Published var customers: [Customer] = [
        Customer(name: "Gabumon", image: "gabumon", budget: "low", goodMood: Bool.random()),
        Customer(name: "Meteormon", image: "meteormon", budget: "medium", goodMood: Bool.random()),
        Customer(name: "Pengumon", image: "pengumon", budget: "high", goodMood: Bool.random())

    ]
}

//Items = [
//    kepacCoffee=50gold
//    sneakers=150gold
//    AirPods    = 300gold
//
//Low    & false = 10%
//Low & true = 13%
//
//Med & false = 12%
//Median true = 18%
//
//High and false = 8%
//High and true = 25%



