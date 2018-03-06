//
//  SWCharacterModelTest.swift
//  StarWarsTests
//
//  Created by Quinto Technologies on 06/03/18.
//  Copyright © 2018 HarpreetSingh. All rights reserved.
//

import XCTest
@testable import StarWars

class SWCharacterModelTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDecodingSWCharacterModelFromValidJSONStrng() {
        let characterJsonData = mockValidCharacterJsonString().data(using: .utf8)
        let decoder = JSONDecoder()
        let characterModel = try? decoder.decode(SWCharacterModel.self, from: characterJsonData!)
        XCTAssertNotNil(characterModel, "decoding valid json for star war character should not return nil")
    }
    
    func testDecodingSWCharacterModelFromInvalidJSONStrng() {
        let characterJsonData = mockInValidCharacterJsonString().data(using: .utf8)
        let decoder = JSONDecoder()
        let characterModel = try? decoder.decode(SWCharacterModel.self, from: characterJsonData!)
        XCTAssertNil(characterModel, "decoding invalid json for star war character should return nil")
    }
}

extension SWCharacterModelTests {
    
    private func mockValidCharacterJsonString() -> String {
        return """
        {
        "name": "Luke Skywalker",
        "height": "172",
        "mass": "77",
        "hair_color": "blond",
        "skin_color": "fair",
        "eye_color": "blue",
        "birth_year": "19BBY",
        "gender": "male",
        "homeworld": "https://swapi.co/api/planets/1/",
        "films": [
        "https://swapi.co/api/films/2/",
        "https://swapi.co/api/films/6/",
        "https://swapi.co/api/films/3/",
        "https://swapi.co/api/films/1/",
        "https://swapi.co/api/films/7/"
        ],
        "species": [
        "https://swapi.co/api/species/1/"
        ],
        "vehicles": [
        "https://swapi.co/api/vehicles/14/",
        "https://swapi.co/api/vehicles/30/"
        ],
        "starships": [
        "https://swapi.co/api/starships/12/",
        "https://swapi.co/api/starships/22/"
        ],
        "created": "2014-12-09T13:50:51.644000Z",
        "edited": "2014-12-20T21:17:56.891000Z",
        "url": "https://swapi.co/api/people/1/"
        }
    """
    }
    
    private func mockInValidCharacterJsonString() -> String {
        // Missing eye_color
        return """
        {
        "name": "Luke Skywalker",
        "height": "172",
        "mass": "77",
        "hair_color": "blond",
        "skin_color": "fair",
        "birth_year": "19BBY",
        "gender": "male",
        "homeworld": "https://swapi.co/api/planets/1/",
        "films": [
        "https://swapi.co/api/films/2/",
        "https://swapi.co/api/films/6/",
        "https://swapi.co/api/films/3/",
        "https://swapi.co/api/films/1/",
        "https://swapi.co/api/films/7/"
        ],
        "species": [
        "https://swapi.co/api/species/1/"
        ],
        "vehicles": [
        "https://swapi.co/api/vehicles/14/",
        "https://swapi.co/api/vehicles/30/"
        ],
        "starships": [
        "https://swapi.co/api/starships/12/",
        "https://swapi.co/api/starships/22/"
        ],
        "created": "2014-12-09T13:50:51.644000Z",
        "edited": "2014-12-20T21:17:56.891000Z",
        "url": "https://swapi.co/api/people/1/"
        }
        """
    }
}
