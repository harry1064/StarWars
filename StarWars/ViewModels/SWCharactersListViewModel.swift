//
//  SWCharactersListViewModel.swift
//  StarWars
//
//  Created by Quinto Technologies on 05/03/18.
//  Copyright © 2018 HarpreetSingh. All rights reserved.
//

import  Foundation
class SWCharactersListViewModel {
    
    // Properties
    
    private let webserviceManager: SWPeopleApiProtocol
    
    public private(set) var navigationTitle = "Star Wars"
    
    public private(set) var isFetching: Bool = false {
        didSet {
            if isFetching {
                onStartFetching?()
            } else {
                onDoneFetching?()
            }
        }
    }
    
    var canFetchMoreCharacters: Bool {
        get {
            if lastFetchedPeopleApiResponse == nil {
                return true
            } else if lastFetchedPeopleApiResponse.nextUrlString != nil {
                return true
            } else {
                return false
            }

        }
    }
    
    private var filterOptions: [SWEyeColorModel] {
        get {
           return charactersAndColors?.eyeColors ?? []
        }
    }
    
    public private(set) var currentFilterOption: SWEyeColorModel! {
        didSet {
            if (currentFilterOption.order == 0) {
                filteredCharacters = charactersAndColors!.characters
            } else {
                filteredCharacters = charactersAndColors!.characters.filter({ (character) in
                    return character.eyeColor == currentFilterOption.name
                })
            }
            onCurrentFilterOptionChange?()
        }
    }
    
    private var charactersAndColors: SWCharactersAndEyeColorsModel? {
        didSet {
            if (charactersAndColors != nil) {
                if (currentFilterOption == nil) {
                    currentFilterOption = filterOptions.first
                } else {
                    currentFilterOption = filterOptions[currentFilterOption.order]
                }
            }
        }
    }
    
    private var lastFetchedPeopleApiResponse: SWGETPeopleApiModel! = nil
    
    var numberOfCharacters: Int {
        get {
            return filteredCharacters.count
        }
    }
    
    var numberOfFilterOptions: Int {
        get {
            return filterOptions.count
        }
    }
    
    private var filteredCharacters = [SWCharacterModel]()
    
    // Closure for Binding
    
    var onCurrentFilterOptionChange: (() -> Void)?
    
    var onStartFetching: (() -> Void)?
    
    var onDoneFetching: (() -> Void)?
    
    var onFetchCharactersError: ((_ message: String) ->Void)?
    
    init(withStarWarsWebServiceManager webserviceManager: SWPeopleApiProtocol) {
        self.webserviceManager = webserviceManager
    }
    
    // Methods
    
    private var pageCount: Int  = 1
    
    func filterOptionTitle(atIndex index: Int) -> String {
        let colorModel = filterOptions[index]
        return "\(colorModel.name)(\(colorModel.count))"
    }
    
    func characterViewModel(atIndex index:Int) -> SWCharacterListCellViewModel {
        return SWCharacterListCellViewModel(withCharacterModel: filteredCharacters[index])
    }
    
    func selectFilterOption(atIndex index: Int) {
        currentFilterOption = filterOptions[index]
    }
    
    func fetchCharacters() {
        isFetching = true
        webserviceManager.getPeoples(param: [SWPeopleApiEndPoint.ApiKey.page.rawValue: pageCount], completion: {
            [unowned self](error, peopleApiModel) in
                self.isFetching = false
                if let peopleApiModel = peopleApiModel {
                    self.pageCount += 1
                    self.lastFetchedPeopleApiResponse = peopleApiModel
                    if self.charactersAndColors != nil {
                        self.charactersAndColors =  SWCharactersAndEyeColorsModel.init(from: self.charactersAndColors!, characters: self.lastFetchedPeopleApiResponse.characters)
                    } else {
                        self.charactersAndColors = SWCharactersAndEyeColorsModel(fromCharactersModel: self.lastFetchedPeopleApiResponse.characters)
                    }
                } else {
                    self.onFetchCharactersError?(error!.localizedDescription)
                }
        })
    }
}
