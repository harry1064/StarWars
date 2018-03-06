//
//  SWWebServiceManager.swift
//  StarWars
//
//  Created by Quinto Technologies on 06/03/18.
//  Copyright © 2018 HarpreetSingh. All rights reserved.
//

import Foundation
import Alamofire

class SWWebServiceManager {

    private static let baseURL = "https://swapi.co/api"
    
    private static func processRequest(endPoint: ApiEndPoint, param: Parameters, completion: @escaping (SWServiceError?, Data?) -> Void) {
        

        if (!NetworkStatus.sharedInstance.isReachable) {
            completion(SWServiceError.noInternetConnection, nil)
            return
        }
        Alamofire.request("\(baseURL)\(endPoint.path)", method: endPoint.method, parameters: param, encoding: URLEncoding.default, headers: nil).responseData(completionHandler: { (response) in
            
            if let error = response.error {
                completion(SWServiceError.custom(error.localizedDescription), nil)
            } else if let data = response.result.value {
                completion(nil, data)
            } else {
                completion(SWServiceError.other, nil)
            }
        })
    }
}

extension SWWebServiceManager: SWPeopleApiProtocol {
    func getPeoples(param:Parameters, completion: @escaping (Error?, SWGETPeopleApiModel?) -> Void) {
        SWWebServiceManager.processRequest(endPoint:SWPeopleApiEndPoint.getPeoples, param: param) { (error, data) in
            var peopleApiModel: SWGETPeopleApiModel?
            if let data = data {
                peopleApiModel = try? JSONDecoder().decode(SWGETPeopleApiModel.self, from:data)
            }
            completion(error, peopleApiModel)
        }
    }
}



