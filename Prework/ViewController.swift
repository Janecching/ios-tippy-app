//
//  ViewController.swift
//  Prework
//
//  Created by Jane Chong on 7/27/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
        // Get tip
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill+tip
        // Update tip
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update total
        totalLabel.text = String(format: "$%.2f", total)
    }
}

