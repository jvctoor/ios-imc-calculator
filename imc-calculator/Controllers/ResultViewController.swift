//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by João Victor on 31/03/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var imcValue: String?

    @IBOutlet var imcLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imcLabel.text = imcValue
        
    
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
