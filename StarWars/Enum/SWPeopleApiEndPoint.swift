//
//  SWPeopleApiEndPoint.swift
//  StarWars
//
//  Created by Quinto Technologies on 07/03/18.
//  Copyright © 2018 HarpreetSingh. All rights reserved.
//

import Foundation
import Alamofire

enum SWPeopleApiEndPoint: ApiEndPoint {
    case getPeoples
    
    var path: String {
        switch self {
        case .getPeoples:
            return "/people"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .getPeoples:
            return .get
        }
    }
    
}

extension SWPeopleApiEndPoint {
    enum ApiKey: String {
        case page 
    }
}
