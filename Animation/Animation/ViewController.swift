//
//  ViewController.swift
//  Animation
//
//  Created by student on 11/14/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollisionBehaviorDelegate{
    
   // var square: UIView!
    var ball = UIImageView()
    var collision: UICollisionBehavior!
    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!

  
    @IBAction func animateButtonStart(sender: AnyObject) {
    }
    
    @IBAction func animateButtonStop(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*square = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        square.backgroundColor = UIColor.grayColor()
        view.addSubview(square)
        
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [square])
        animator.addBehavior(gravity)*/
        
        ball.image = UIImage(named: "10.png")
        ball.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
        self.view.addSubview(ball)
        
        let fullRotation = CGFloat(M_PI * 2)
        
        UIView.animateWithDuration(1.0, animations: {
            
            self.ball.transform = CGAffineTransformMakeRotation(fullRotation)
        })
        
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [ball])
        animator.addBehavior(gravity)
        
        collision = UICollisionBehavior(items: [ball])
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
        
        let barrier = UIView(frame: CGRect(x: 0, y: 300, width: 130, height: 20))
        
        barrier.backgroundColor = UIColor.redColor()
        view.addSubview(barrier)
        
        collision.addBoundaryWithIdentifier("barrier", forPath: UIBezierPath(rect: barrier.frame))
        
         collision.action = {println("\(NSStringFromCGAffineTransform(self.ball.transform)) \(NSStringFromCGPoint(self.ball.center))")}
        
        collision.collisionDelegate = self
        
        
    }
    
    /*func collisionBehavior(behavior: UICollisionBehavior! , beganContactForItem item: UIDynamicItem! , withBoundaryIdentifier identifier: NSCopying! , atPoint p: CGPoint){
        println("Boundary contact occurred - \(identifier)")
        
    }*/

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

