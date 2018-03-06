//
//  SWPeopleApiModel.swift
//  StarWars
//
//  Created by Quinto Technologies on 06/03/18.
//  Copyright © 2018 HarpreetSingh. All rights reserved.
//

import Foundation
/**
    This struct repersents the model for the response of Star Wars GET /people api endpoint.
 */
struct SWGETPeopleApiModel: Codable {
    var count: Int
    var nextUrlString: String?
    var prevUrlString: String?
    var characters: [SWCharacterModel]
    
    private enum CodingKeys: String, CodingKey {
        case count
        case nextUrlString = "next"
        case prevUrlString = "previous"
        case characters = "results"
    }
}
