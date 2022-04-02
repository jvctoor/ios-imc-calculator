//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func valueHeightChanged(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f",sender.value))m"
    }
    
    @IBAction func valueWeightChanged(_ sender: UISlider) {
        weightLabel.text = "\(String(format: "%.0f",sender.value))kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let _ = calculatorBrain.calcIMC(height, weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.imcValue = calculatorBrain.getIMC()
        }
    }
    
}

