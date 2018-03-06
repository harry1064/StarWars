//
//  SWColorModel.swift
//  StarWars
//
//  Created by Quinto Technologies on 06/03/18.
//  Copyright © 2018 HarpreetSingh. All rights reserved.
//

import Foundation

struct SWColorModel {
    var name: String
    var count: Int
    var order: Int
    
    mutating func incrementCount() {
        count += 1
    }
}

