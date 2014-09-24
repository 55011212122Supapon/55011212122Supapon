//
//  ViewController.swift
//  TipCalculatorModel
//
//  Created by Student on 9/12/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var totalTextField : UITextField!
    @IBOutlet var texPctSlider : UISlider!
    @IBOutlet var texPctLabel : UILabel!
    @IBOutlet var resultsTextView : UITextView!
                            
    @IBAction func CalculationTapped(sender: AnyObject) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    let tipCalc = TipCalculatorModel(total : 33.25,taxPct : 0.06)
    
    func refreshUI(){
        totalTextField.text = String(format: "%0.2f", tipCalc: total)
        texPctSlider.value = Float(tipCalc.taxPct)*100.0
        taxPctLabel.text = "Tax Percentage(\(Int(taxPctSlider.value))%)"
        resultsTextView = ""
    }


}

