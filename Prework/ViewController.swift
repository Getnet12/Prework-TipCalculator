//
//  ViewController.swift
//  Prework
//
//  Created by Getnet Mekuriyaw on 10/12/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tip Calculator"
    }

    @IBAction func calculateTip(_ sender: Any) {
        //getting the bill amount from the text input
        let bill = Double(billAmountTextField.text!) ?? 0
        //Getting the total bill
        let tipPercentage = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //update the tip bill amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //update total amount
        totalLabel.text = String(format:"$%.2f", total)
    }
    
}

