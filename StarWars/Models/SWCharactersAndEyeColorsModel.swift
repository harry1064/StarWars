//
//  SWCharactersAndColorsModel.swift
//  StarWars
//
//  Created by Quinto Technologies on 06/03/18.
//  Copyright © 2018 HarpreetSingh. All rights reserved.
//

import Foundation

struct SWCharactersAndEyeColorsModel {
    
    var characters: [SWCharacterModel]
    
    var eyeColors: [SWEyeColorModel] = []
    
    private var eyeColorDic: [String: SWEyeColorModel]
    
    private var defaultColorName: String = "All"
    
    init?(fromCharactersModel characters: [SWCharacterModel]) {
        self.characters = characters
        if self.characters.count == 0 {
            return nil
        }
        self.eyeColorDic = [String: SWEyeColorModel]()
        var currentOrderForColor: Int = 0
        self.eyeColorDic[defaultColorName] = SWEyeColorModel(name: defaultColorName, count: characters.count, order: currentOrderForColor)
        currentOrderForColor += 1
        for character in self.characters {
            if var oldColorModel = self.eyeColorDic[character.eyeColor] {
                oldColorModel.incrementCount()
                self.eyeColorDic[character.eyeColor] = oldColorModel
            } else {
                self.eyeColorDic[character.eyeColor] =  SWEyeColorModel(name: character.eyeColor, count: 1, order: currentOrderForColor)
                currentOrderForColor += 1
            }
        }
        self.eyeColors  = self.eyeColorDic.values.sorted(by: {$0.order < $1.order})
    }
    
    init?(from old:SWCharactersAndEyeColorsModel, characters: [SWCharacterModel]) {
        var allCharacters = old.characters
        allCharacters.append(contentsOf: characters)
        self = SWCharactersAndEyeColorsModel.init(fromCharactersModel: allCharacters)!
    }
}
