//
//  ColorTwoViewController.swift
//  Segue Swift
//
//  Created by student on 10/17/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

protocol ColorTwoViewControllerDelegate{
    func myVCDidFinish(controller:ColorTwoViewController,text:String)
}

class ColorTwoViewController: UIViewController {
    
    var delegate:ColorTwoViewControllerDelegate? = nil

    var colorString = ""
    
    @IBOutlet var ColorLabel: UILabel!
    
    @IBAction func ColorSelectionButton(sender: UIButton) {
        ColorLabel.text = sender.titleLabel!.text!
    }
    
    @IBAction func SeveColor(sender: UIBarButtonItem) {
        if (delegate != nil){
            delegate!.myVCDidFinish(self, text: ColorLabel!.text!)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        ColorLabel.text = colorString
    }
    


}
