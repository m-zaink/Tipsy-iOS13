//
//  ExtensionDouble.swift
//  Tipsy
//
//  Created by Mohammed Sadiq on 03/11/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

extension Double {
    var toTwoDecimals: Double {
        get {
            return (self * 100).rounded() / 100
        }
    }
}
