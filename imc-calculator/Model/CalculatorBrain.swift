//
//  CalculatorBrain.swift
//  imc-calculator
//
//  Created by João Victor on 02/04/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var imc: String?
    
    func getIMC() -> String {
        if let SafeImc = imc {
            return SafeImc
        } else {
            return "0.0"
        }
    }
    
    mutating func calcIMC(_ height: Float, _ weight: Float) -> String {
        let imcValue = weight / (height * height)
        self.imc = String(format: "%.1f",imcValue)
        return self.imc!
    }
}
