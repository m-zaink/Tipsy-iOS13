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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        billAmountTextField.delegate = self
    }

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        if let enteredAmount = billAmountTextField.text {
            print(enteredAmount)
        }
    }
    
    @IBAction func tapGestureRecognized(_ sender: UITapGestureRecognizer) {
        if let enteredAmountAsString = billAmountTextField.text, let enteredAmount = Int(enteredAmountAsString) {
            view.endEditing(true)
        } else {
            print("Invalid number added so far")
        }
    }
}

extension HomeViewController : UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let enteredAmount = textField.text {
            print(enteredAmount)
        }
    }
}
