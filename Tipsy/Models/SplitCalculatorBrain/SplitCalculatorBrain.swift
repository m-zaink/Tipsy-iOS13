//
//  SplitCalculatorBrain.swift
//  Tipsy
//
//  Created by Mohammed Sadiq on 03/11/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct SplitCalculatorBrain {
    private var splitSummary: SplitSummary
    
    init(splitSummary: SplitSummary) {
        self.splitSummary = splitSummary
    }
    
    
    var split: Double {
        get {
            return splitSummary.split
        }
    }
    
    var tipPercentage: Double {
        set (splitPercentage) {
            splitSummary.tipPercentage = splitPercentage
        }
        
        get {
            splitSummary.tipPercentage
        }
    }
    
    
    var billAmount: Double {
        set (billAmount) {
            splitSummary.billAmount = billAmount
        }
        
        get {
            return splitSummary.billAmount
        }
    }
    
    var headCount: Int {
        set (headCount) {
            splitSummary.headCount = headCount
        }
        
        get {
            splitSummary.headCount
        }
    }
}
