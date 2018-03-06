//
//  SWCharacterListCellViewModel.swift
//  StarWars
//
//  Created by Quinto Technologies on 06/03/18.
//  Copyright © 2018 HarpreetSingh. All rights reserved.
//

import Foundation

struct SWCharacterListCellViewModel {
    
    private var characterModel: SWCharacterModel
    
    var nameString: String {
        return "Name: \(characterModel.name)"
    }
    
    var eyeColorString: String {
        return "Eye Color: \(characterModel.eyeColor)"
    }
    
    init(withCharacterModel model: SWCharacterModel) {
        characterModel = model
    }
}
