//
//  StarwarsWebServiceProtocol.swift
//  StarWars
//
//  Created by Quinto Technologies on 06/03/18.
//  Copyright © 2018 HarpreetSingh. All rights reserved.
//

import Foundation
import Alamofire

protocol SWPeopleApiProtocol {
    func getPeoples(param:Parameters, completion: @escaping (Error?, SWGETPeopleApiModel?) -> Void)
}



