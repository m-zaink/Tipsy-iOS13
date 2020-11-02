//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var zeroTipButton: UIButton!
    @IBOutlet weak var tenthTipButton: UIButton!
    @IBOutlet weak var twentiethTipButton: UIButton!
    
    @IBOutlet weak var splitCountLabel: UILabel!
    
    @IBAction func onCalculateButtonPressed(_ sender: UIButton) {
        guard let enteredAmountAsString = billAmountTextField.text, !enteredAmountAsString.isEmpty else {
            let alert = createUIAlertForEmptyBillTotal()
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        guard  let enteredAmount = Float(enteredAmountAsString) else {
            let alert = createUIAlertForIncorrectBillTotal()
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        print(enteredAmount)
    }
    
    @IBAction func onTapGestureRecognized(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func onTipButtonPressed(_ sender: UIButton) {
        guard let currentTitle = sender.currentTitle else {
            return
        }
        
        guard let tipPercentage = Double(currentTitle.replacingOccurrences(of: "%", with: "")) else {
            return
        }
        
        unselectCurrentlySelectedTipButton()
        
        sender.isSelected = true
        
        print(tipPercentage)
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        splitCountLabel.text = String(format: "%.0f", sender.value)
    }
}


// MARK:- Auxilliary methods
extension HomeViewController {
    func createUIAlertForEmptyBillTotal() -> UIAlertController {
        let alert = UIAlertController(
            title: "Bill total cannot be empty",
            message: "Please enter your bill amount",
            preferredStyle: UIAlertController.Style.alert
        )
        
        let okAction = UIAlertAction(
            title: "Ok",
            style: UIAlertAction.Style.default) {
            _ in
            self.billAmountTextField.becomeFirstResponder()
        }
        
        alert.addAction(okAction)
        
        return alert
    }
    
    func createUIAlertForIncorrectBillTotal() -> UIAlertController {
        let alert = UIAlertController(
            title: "Bill total is incorrect",
            message: "Please enter a valid bill amount",
            preferredStyle: UIAlertController.Style.alert
        )
        
        let okAction = UIAlertAction(
            title: "Ok",
            style: UIAlertAction.Style.default) {
            _ in
            self.billAmountTextField.becomeFirstResponder()
        }
        
        alert.addAction(okAction)
        
        return alert
    }
    
    func unselectCurrentlySelectedTipButton() {
        if zeroTipButton.isSelected {
            zeroTipButton.isSelected = false
        } else if tenthTipButton.isSelected {
            tenthTipButton.isSelected = false
        } else {
            twentiethTipButton.isSelected = false
        }
    }
}

fileprivate extension String {
    var toTip: String {
        return self.replacingOccurrences(of: "%", with: "")
    }
}
