//
//  ViewController.swift
//  desdes
//
//  Created by cs_pple_02 on 9/10/19.
//  Copyright © 2019 cs_pple_02. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipController: UISegmentedControl!
    @IBOutlet weak var billField: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
  
    print("Hello")
        
        view.endEditing(true)
    
    }
    @IBAction func calculateTip(_ sender: Any) {

        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        // Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipController.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels 
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    
    }
}

