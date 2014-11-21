//
//  ViewController.swift
//  BallAnimation
//
//  Created by student on 11/14/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollisionBehaviorDelegate {
    
    var ball = UIImageView()
    var skay = UIImageView()
    var collision: UICollisionBehavior!
    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    //var snap: UISnapBehavior!
   // var barrire: UIView!
    
    //var barrier = UIView()
    
    

    @IBAction func Start(sender: AnyObject) {
        
        
       for loopNumber in 0...5{
            
            let duration : NSTimeInterval = 4.5
            let delay = 0.0
            //let delay = NSTimeInterval (((Int(rand()) % 900)+100.0) / 100.0)
            let options = UIViewAnimationOptions.CurveLinear
            
           // let size : CGFloat = CGFloat(Int(rand()) % 20 + 10.0)
            let yPosition : CGFloat = CGFloat(Int(rand()) % 3000 + 10.0)
            
            var ball = UIImageView()
        
            ball.image = UIImage(named: "Multicolored_Inflatable_beach_ball.jpg_220x220.png")
            //ball.image = UIImage(named: "140.png")
            //ball.image = UIImage(named: "2006.png")
            //ball.image = UIImage(named: "10.png")
            ball.frame = CGRectMake(yPosition,20, 50, 50)
            self.view.addSubview(ball)
           
            
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                ball.frame = CGRectMake(yPosition,800, 50, 50)
                }, completion: { animationFinished in
                    ball.removeFromSuperview()
            })
      
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*skay.image = UIImage(named: "1_4_080205235535_C2.png")
        skay.frame = CGRect(x: 0, y: 0, width: 800, height: 800)
        self.view.addSubview(skay)*/
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "1_4_080205235535_C2.png"))
        
        ball.image = UIImage(named: "10.png")
        ball.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
        self.view.addSubview(ball)
        
        let fullRotation = CGFloat(M_PI * 2)
        
        UIView.animateWithDuration(1.0, animations: {
            
            self.ball.transform = CGAffineTransformMakeRotation(fullRotation)
        })
        
        collision = UICollisionBehavior(items: [ball])
        collision.translatesReferenceBoundsIntoBoundary = true
        //animator.addBehavior(collision)
        
        let barrier = UIView(frame: CGRect(x: 0, y: 300, width: 130, height: 20))
        
        barrier.backgroundColor = UIColor.redColor()
        view.addSubview(barrier)
        
        collision.addBoundaryWithIdentifier("barrier", forPath: UIBezierPath(rect: barrier.frame))
        
        collision.action = {println("\(NSStringFromCGAffineTransform(self.ball.transform)) \(NSStringFromCGPoint(self.ball.center))")}
        
        collision.collisionDelegate = self

    }
    
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

/* animator = UIDynamicAnimator(referenceView: view)
gravity = UIGravityBehavior(items: [ball])
animator.addBehavior(gravity)*/

/* self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];  */

/* override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
if(barrire != nil){
animator.removeBehavior(snap)
}

let touch = touches.anyObject() as UITouch
snap = UISnapBehavior(item: barrire, snapToPoint: touch.locationInView(view))
animator.addBehavior(snap)
}*/

/*override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
if(snap != nil){
animator.removeBehavior(snap)
}

let touch = touches.anyObject() as UITouch
snap = UISnapBehavior(item: barrire, snapToPoint: touch.locationInView(view))
animator.addBehavior(snap)
}*/


