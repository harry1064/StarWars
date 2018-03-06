//
//  SWCharactersListViewModelTests.swift
//  StarWarsTests
//
//  Created by Quinto Technologies on 06/03/18.
//  Copyright © 2018 HarpreetSingh. All rights reserved.
//

import XCTest
@testable import StarWars

class SWCharactersListViewModelTests: XCTestCase {
    
    private let mockWebServiceManager = MockWebServiceManager()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        self.mockWebServiceManager.jsonString = SWMockJsonStringPeopleApi.page1
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        self.mockWebServiceManager.jsonString = ""
    }
    
    func testOrderOfexecutionOfBindingClosure() {
        let orderExpectations = expectation(description: "orderExpectations")
        let characterViewListModel = SWCharactersListViewModel(withStarWarsWebServiceManager: mockWebServiceManager)
        var orderCount = 0
        characterViewListModel.onStartFetching = {
            XCTAssertEqual(orderCount, 0)
            orderCount = 1
        }
        characterViewListModel.onDoneFetching = {
            XCTAssertEqual(orderCount, 1)
            orderCount = 2
        }
        
        characterViewListModel.onCurrentFilterOptionChange = {
            XCTAssertEqual(orderCount, 2)
            orderExpectations.fulfill()
        }
        characterViewListModel.fetchCharacters()
        waitForExpectations(timeout: 30, handler: nil)
    }
    
    func testSelectFilterOptionAtIndex() {
        let selectFilterOptionAtIndexExpectations = expectation(description: "selectFilterOptionAtIndexExpectations")
        let characterViewListModel = SWCharactersListViewModel(withStarWarsWebServiceManager:mockWebServiceManager)
        var numberOfTimesCurrentFilterOptionChangeCalled = 0
        characterViewListModel.onCurrentFilterOptionChange = {
            if (numberOfTimesCurrentFilterOptionChangeCalled == 0) { // called first time on fetchingCharacter i.e All filter option
                numberOfTimesCurrentFilterOptionChangeCalled = 1
                characterViewListModel.selectFilterOption(atIndex: 1)
            } else {
                XCTAssertEqual(characterViewListModel.currentFilterOption.order, 1)
                selectFilterOptionAtIndexExpectations.fulfill()
            }
        }
        characterViewListModel.fetchCharacters()
        waitForExpectations(timeout: 30, handler: nil)
    }
    
    func testNumberOfCharacters() {
        let testNumberOfCharactersExpectations = expectation(description: "testNumberOfCharactersExpectations")
        let characterViewListModel = SWCharactersListViewModel(withStarWarsWebServiceManager: mockWebServiceManager)
        XCTAssertEqual(characterViewListModel.numberOfCharacters, 0)
        characterViewListModel.onCurrentFilterOptionChange = {
            XCTAssertEqual(characterViewListModel.numberOfCharacters, 10)
            testNumberOfCharactersExpectations.fulfill()
        }
        characterViewListModel.fetchCharacters()
        waitForExpectations(timeout: 30, handler: nil)
    }
    
    func testNumberOfFilterOptions() {
        let testNumberOfFilterOptionsExpectations = expectation(description: "testNumberOfFilterOptionsExpectations")
        let characterViewListModel = SWCharactersListViewModel(withStarWarsWebServiceManager: mockWebServiceManager)
        XCTAssertEqual(characterViewListModel.numberOfFilterOptions, 0)
        characterViewListModel.onCurrentFilterOptionChange = {
            XCTAssertEqual(characterViewListModel.numberOfFilterOptions, 6)
            testNumberOfFilterOptionsExpectations.fulfill()
        }
        characterViewListModel.fetchCharacters()
        waitForExpectations(timeout: 30, handler: nil)
    }
    
    func testPaginationRequest() {
        let testPaginationRequestExpectations = expectation(description: "testPaginationRequestExpectations")
        let characterViewListModel = SWCharactersListViewModel(withStarWarsWebServiceManager: mockWebServiceManager)
        XCTAssertEqual(characterViewListModel.canFetchMoreCharacters, true)
        var numberOfTimesCurrentFilterOptionChangeCalled = 0
        characterViewListModel.onCurrentFilterOptionChange = {
            if (numberOfTimesCurrentFilterOptionChangeCalled == 1) {
                XCTAssertEqual(characterViewListModel.canFetchMoreCharacters, false)
                testPaginationRequestExpectations.fulfill()
            } else {
                numberOfTimesCurrentFilterOptionChangeCalled += 1
                // set last page json string for next fetch call
                self.mockWebServiceManager.jsonString = SWMockJsonStringPeopleApi.lastPage
                characterViewListModel.fetchCharacters()
            }
        }
        characterViewListModel.fetchCharacters()
        waitForExpectations(timeout: 30, handler: nil)
    }
}


class MockWebServiceManager: SWPeopleApiProtocol {
    
    var jsonString = ""
    
    func getPeoples(param: [String : Any], completion: @escaping (Error?, SWGETPeopleApiModel?) -> Void) {
        do {
            let jsonData = jsonString.data(using: .utf8)
            let peopleApiModel = try JSONDecoder().decode(SWGETPeopleApiModel.self, from:jsonData!)
            completion(nil, peopleApiModel)
        } catch  {
            completion(error, nil)
        }
    }

}

