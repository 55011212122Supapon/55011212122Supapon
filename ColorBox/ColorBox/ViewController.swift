//
//  ViewController.swift
//  ColorBox
//
//  Created by student on 11/7/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let container = UIView()
    let redSquare = UIView()
    let blueSquare = UIView()
    
  
    @IBAction func animateButtonTapped(sender: AnyObject) {
        
        //let views = (frontView: self.redSquare, backView: self.blueSquare)
        //var views : (frontView: UIView, backView: UIView)
        
        // เปิดได้ครั้งเดียว
       
      /* let transitionOptions = UIViewAnimationOptions.TransitionCurlUp
        
        UIView.transitionWithView(self.container, duration: 1.0, options: transitionOptions, animations: {
            
            views.frontView.removeFromSuperview()
            
            self.container.addSubview(views.backView)

            }, completion: { finished in})
    }
    */
        // เปิดเปลี่ยนสีกล่อง หมุน เปิด ปิด
        
        /*if((self.redSquare.superview) != nil){
            views = (frontView: self.redSquare, backView: self.blueSquare)
        }
        else {
            views = (frontView: self.blueSquare, backView: self.redSquare)
        }
        
        //let transitionOptions = UIViewAnimationOptions.TransitionCurlDown // ปิดลงมา
        //let transitionOptions = UIViewAnimationOptions.TransitionCurlUp // เปิดขึ้นไป
        let transitionOptions = UIViewAnimationOptions.TransitionFlipFromLeft // หมุน
        
        UIView.transitionFromView(views.frontView, toView: views.backView, duration: 1.0, options: transitionOptions, completion: nil)*/
        
        let square = UIView()
        square.frame = CGRect(x: 55, y: 300, width: 20, height: 20)
        square.backgroundColor = UIColor.redColor()
        
        self.view.addSubview(square)
        
        let path = UIBezierPath()
        path.moveToPoint(CGPoint(x: 16,y: 239))
        path.addCurveToPoint(CGPoint(x: 301, y: 239), controlPoint1: CGPoint(x: 136, y: 373), controlPoint2: CGPoint(x: 178, y: 110))
        
        let anim = CAKeyframeAnimation(keyPath: "position")
        anim.path = path.CGPath
        
        anim.rotationMode = kCAAnimationRotateAuto
        anim.repeatCount = Float.infinity
        anim.duration = 5.0
        
        square.layer.addAnimation(anim, forKey: "animate position along path")

    }


    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*self.container.frame = CGRect(x: 60, y: 60, width: 200, height: 200)
        self.view.addSubview(container)
        
        self.redSquare.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        self.blueSquare.frame = redSquare.frame
        
        self.redSquare.backgroundColor = UIColor.redColor()
        self.blueSquare.backgroundColor = UIColor.blueColor()
        
        self.container.addSubview(self.redSquare)*/
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

// Do any additional setup after loading the view, typically from a nib.

/* self.container.frame = CGRect(x: 60, y: 60, width: 200, height: 200)
self.view.addSubview(container)

self.redSquare.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
self.blueSquare.frame = redSquare.frame

self.redSquare.backgroundColor = UIColor.redColor()
self.blueSquare.backgroundColor = UIColor.blueColor()

self.container.addSubview(self.redSquare)*/

//************************

/* let container = UIView()
let redSquare = UIView()
let blueSquare = UIView()

@IBAction func animateButtonTapped(sender: AnyObject) {

// create a 'tuple' (a pair or more of objects assigned to a single variable)
let views = (frontView: self.redSquare, backView: self.blueSquare)

// set a transition style
let transitionOptions = UIViewAnimationOptions.TransitionCurlUp

UIView.transitionWithView(self.container, duration: 1.0, options: transitionOptions, animations: {
// remove the front object...
views.frontView.removeFromSuperview()

// ... and add the other object
self.container.addSubview(views.backView)

}, completion: { finished in
// any code entered here will be applied
// .once the animation has completed
})
}*/