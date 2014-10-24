//
//  ViewController.swift
//  Segue Swift
//
//  Created by student on 10/17/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ColorTwoViewControllerDelegate {

    @IBOutlet var ColorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func myVCDidFinish(controller: ColorTwoViewController, text: String){
        //ColorLabel.text = ""
        ColorLabel.text = "Co: " + text
        if(text=="Red"){
            ColorLabel.backgroundColor = UIColor.redColor()
        }
        else if(text=="Blue"){
            ColorLabel.backgroundColor = UIColor.blueColor()
        }
        else{
            ColorLabel.backgroundColor = UIColor.greenColor()
        }
        controller.navigationController?.popViewControllerAnimated(true)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "mySegue"{
            let vc = segue.destinationViewController as ColorTwoViewController
            vc.colorString = ColorLabel.text!
            vc.delegate = self
        }
    }



}

