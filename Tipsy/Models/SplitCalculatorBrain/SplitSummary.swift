//
//  SplitDetails.swift
//  Tipsy
//
//  Created by Mohammed Sadiq on 03/11/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation


struct SplitSummary {
    var billAmount: Double
    var tipPercentage: Double
    var headCount: Int
    
    
    var split: Double {
        get {
            return billAmount * (1.0 + tipPercentage / 100.0) / Double(headCount)
        }
    }
}
