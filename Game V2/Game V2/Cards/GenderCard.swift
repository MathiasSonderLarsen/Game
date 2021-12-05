//
//  GenderCard.swift
//  Game V2
//
//  Created by Mathias Larsen on 25/08/2021.
//

import Foundation
class GenderCard: Card {
    var gender: String
    
    init(type: String, decription: String, gender: String) {
        self.gender = gender
        super.init(type: type, decription: decription)
    }
}
