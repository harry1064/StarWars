//
//  SWCharacterModel.swift
//  StarWars
//
//  Created by Quinto Technologies on 05/03/18.
//  Copyright © 2018 HarpreetSingh. All rights reserved.
//

import Foundation

struct SWCharacterModel: Codable {
    var name: String
    var height: String
    var hairColor: String
    var eyeColor: String
    var skinColor: String
    
     enum CodingKeys: String, CodingKey {
        case name
        case height
        case hairColor = "hair_color"
        case eyeColor = "eye_color"
        case skinColor = "skin_color"
    }
}
