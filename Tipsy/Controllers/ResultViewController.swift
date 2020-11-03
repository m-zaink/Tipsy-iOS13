//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Mohammed Sadiq on 03/11/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var splitSummaryLabel: UILabel!
    
    var splitSummary: SplitSummary!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        splitLabel.text = String(splitSummary.split.toTwoDecimals)
        splitSummaryLabel.text = "Split between \(splitSummary.headCount) people, with \(splitSummary.tipPercentage)% tip."
    }
    

    @IBAction func onRecalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
