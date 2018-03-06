//
//  Extension.swift
//  StarWars
//
//  Created by Quinto Technologies on 05/03/18.
//  Copyright © 2018 HarpreetSingh. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func addConstraints(withFormat format: String, views: UIView...) {
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated() {
            viewsDictionary["v\(index)"] = view
        }
        let constraints = NSLayoutConstraint.constraints(withVisualFormat: format, options: .init(rawValue: 0), metrics: nil, views: viewsDictionary)
        NSLayoutConstraint.activate(constraints)
    }
}
