//
//  SWCharactersAndEyeColorsModelTests.swift
//  StarWarsTests
//
//  Created by Quinto Technologies on 06/03/18.
//  Copyright © 2018 HarpreetSingh. All rights reserved.
//

import XCTest
@testable import StarWars

class SWCharactersAndEyeColorsModelTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInitializationFromCharactersOnly() {
        let charactersAndEyeColorsModel = SWCharactersAndEyeColorsModel(fromCharactersModel: mockCharactersArray())
        XCTAssertNotNil(charactersAndEyeColorsModel)
        
        // initializing from empty array
        let charactersAndEyeColorsModel1 = SWCharactersAndEyeColorsModel(fromCharactersModel: [])
        XCTAssertNil(charactersAndEyeColorsModel1)
    }
    
    func testInitializationFromCharactersAndInstanceOfSelf() {
        let oldCharactersAndEyeColorsModel = SWCharactersAndEyeColorsModel(fromCharactersModel: mockCharactersArray())
        let princeCharacter = SWCharacterModel(name: "Prince", height: "123", hairColor: "black", eyeColor: "black", skinColor: "brown")
        let charactersAndEyeColorsModel = SWCharactersAndEyeColorsModel(from: oldCharactersAndEyeColorsModel!, characters:[princeCharacter])
        XCTAssertNotNil(charactersAndEyeColorsModel)
    }
    
    func testEyeColorsOrder() {
        let princeCharacter = SWCharacterModel(name: "Prince", height: "123", hairColor: "black", eyeColor: "black", skinColor: "brown")
        let harryCharacter = SWCharacterModel(name: "Harry", height: "123", hairColor: "black", eyeColor: "brown", skinColor: "brown")
        let charactersAndEyeColorsModel = SWCharactersAndEyeColorsModel(fromCharactersModel: [princeCharacter, harryCharacter])
        XCTAssertEqual(charactersAndEyeColorsModel!.eyeColors.count, 3)
        let eyeColorAtIndex1 = charactersAndEyeColorsModel!.eyeColors[1]
        let eyeColorAtIndex2 = charactersAndEyeColorsModel!.eyeColors[2]
        XCTAssertEqual(eyeColorAtIndex1.name, "black")
        XCTAssertEqual(eyeColorAtIndex2.name, "brown")
    }
    
    
}

extension SWCharactersAndEyeColorsModelTests {
    
    func mockCharactersArray() -> [SWCharacterModel] {
        let character1 = SWCharacterModel(name: "Harry", height: "123", hairColor: "black", eyeColor: "brown", skinColor: "brown")
        return [character1]
    }
}
