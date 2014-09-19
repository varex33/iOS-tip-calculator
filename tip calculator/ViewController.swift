//
//  ViewController.swift
//  tip calculator
//
//  Created by Samuel Argote on 9/18/14.
//  Copyright (c) 2014 Samuel Argote. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountText: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        tipLabel.text="$0.00";
        totalLabel.text="$0.00";
    }
    
    @IBAction func onEditingChange(sender: AnyObject) {
        var tipPercentages = [0.18, 0.2, 0.22];
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex];
        var billAmount = NSString (string: amountText.text).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        tipLabel.text = String(format: "$%f", tip)
        totalLabel.text = String(format: "$%f", total)
        
    }
    
    @IBAction func onTap(sender: AnyObject) {
      //  view.endEditing(true)
    }


}

