//
//  ApiEndPoint.swift
//  StarWars
//
//  Created by Quinto Technologies on 07/03/18.
//  Copyright © 2018 HarpreetSingh. All rights reserved.
//

import Foundation
import Alamofire

protocol ApiEndPoint {
    var path:String {get}
    var method: HTTPMethod {get}
}
