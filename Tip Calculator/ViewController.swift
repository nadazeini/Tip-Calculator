//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Nada Zeini on 11/23/19.
//  Copyright © 2019 Nada Zeini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {

        view.endEditing(true)
    }
    @IBAction func defaultSelect(_ sender: UISegmentedControl) {
        print("hi")
             if sender.selectedSegmentIndex == 0 {
                 print("10 ")
              }

              if sender.selectedSegmentIndex == 1 {
                  print("15 ")

              }


              if sender.selectedSegmentIndex == 2 {
                  print("20")

              }
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //get bill
        let bill = Double(billField.text!) ?? 0
        
        //calculate tip and total
        let tipPercentages = [0.1,0.15,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
       
       
       let total = bill + tip
        //update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
      
    }
}

