//
//  SWSegmentControlViewModel.swift
//  StarWars
//
//  Created by Quinto Technologies on 06/03/18.
//  Copyright © 2018 HarpreetSingh. All rights reserved.
//

import Foundation

protocol Option {
    func segmentCellViewModel(forIndex index: Int, isSelected: Bool) -> SWSegmentCellViewModel
}

class SWSegmentControlViewModel {
    
    var options: [Option] = [] {
        didSet{
            reloadSegmentControlOptions?()
        }
    }
    
    var numberOfOptions: Int  {
        get {
            return options.count
        }
    }
    
    var selectedIndex:Int = 0 {
        didSet {
            reloadSegmentControlOptions?()
        }
    }
    
    var reloadSegmentControlOptions: (() -> Void)?
    
    func cellViewModel(forIndex index: Int) -> SWSegmentCellViewModel {
        return options[index].segmentCellViewModel(forIndex: index, isSelected: index == selectedIndex)
    }
}
