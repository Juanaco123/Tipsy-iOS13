//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 0.0
    
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        
        let buttonTitleMinusPercentSign = String(buttonTitle.dropLast())
        
        let buttonTitleAsDouble = Double(buttonTitleMinusPercentSign)!
        
        tip = buttonTitleAsDouble / 100
        
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        sender.minimumValue = 2.0
        let splitNumberAsInt = Int(sender.value)
        splitNumberLabel.text = String(splitNumberAsInt)
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(tip)
    }
    
}

