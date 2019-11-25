//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Nada Zeini on 11/23/19.
//  Copyright © 2019 Nada Zeini. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //Show default tip percentage on settings screen
        defaultController.selectedSegmentIndex = getDefaultTip()
    }
    
    func setDefaultTip(index: Int) {
        let defaults = UserDefaults.standard
        defaults.set(index, forKey: "defaultTip")
        defaults.synchronize()
    }
    
    func getDefaultTip() -> Int {
        let defaults = UserDefaults.standard
        return defaults.integer(forKey: "defaultTip")
    }
    var defaultTip = 0;
    @IBAction func defaultChanged(_ sender: Any) {
       let index = Int(defaultController.selectedSegmentIndex)
        self.setDefaultTip(index: index)
        
    }
    
    
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


