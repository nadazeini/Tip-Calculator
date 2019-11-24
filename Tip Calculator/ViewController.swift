//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Nada Zeini on 11/23/19.
//  Copyright © 2019 Nada Zeini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {

        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //get bill
        let bill = Double(billLabel.text!) ?? 0
        
        //calculate tip and total
        let tipPercentages = [0.1,0.15,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

