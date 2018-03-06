//
//  SWServiceError.swift
//  StarWars
//
//  Created by Quinto Technologies on 07/03/18.
//  Copyright © 2018 HarpreetSingh. All rights reserved.
//

import Foundation

enum SWServiceError: Error {
    case noInternetConnection
    case custom(String)
    case other
}

extension SWServiceError:LocalizedError {
    var errorDescription: String? {
        switch self {
        case .noInternetConnection:
            return "No internet connection"
        case .custom(let message):
            return message
        case .other:
            return "Something went wrong."
        }
    }
}
