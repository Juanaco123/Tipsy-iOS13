//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Juan Camilo Victoria Pacheco on 27/05/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bill: Bill?
    
    mutating func calculateSplitBill(billTotal: Double, tip: Double, numberOfPeople: Int) {
        let result = billTotal * (1 + tip) / Double(numberOfPeople)
        
        bill = Bill(value: result, tip: tip, amountOfPeople: numberOfPeople)
    }
    
    func getResult() -> String {
        let result = String(format: "%.2f", bill?.value ?? 0.0)
        return result
    }
    
    func getNumberOfPeople() -> Int {
        let numberOfPeople = bill?.amountOfPeople ?? 2
        return numberOfPeople
    }
    
    func getTip() -> Int {
        let tip = Int((bill?.tip ?? 0.1) * 100)
        return tip
    }
}
