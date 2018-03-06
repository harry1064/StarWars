//
//  NetworkStatus.swift
//  StarWars
//
//  Created by Quinto Technologies on 07/03/18.
//  Copyright © 2018 HarpreetSingh. All rights reserved.
//

import Foundation
import Alamofire

class NetworkStatus {
    static let sharedInstance = NetworkStatus()
    
    private let reachabilityManager = NetworkReachabilityManager(host: "www.apple.com")
    
    private init() {
        reachabilityManager?.startListening()
    }
    
    var isReachable: Bool {
        get {
            return reachabilityManager?.isReachable ?? false
        }
    }
    
}
