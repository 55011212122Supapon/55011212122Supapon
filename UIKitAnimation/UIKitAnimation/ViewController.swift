//
//  ViewController.swift
//  UIKitAnimation
//
//  Created by student on 11/7/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController, UICollisionBehaviorDelegate{
    
    var square: UIView!
    
    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    
    var collision: UICollisionBehavior!
    var firstContact = false
    
    var snap: UISnapBehavior!
    //var square: UIView!
    
    let motionManager = CMMotionManager()
    let motionQueue = NSOperationQueue()
    
    func collisionBehavior(behavior: UICollisionBehavior! , beganContactForItem item: UIDynamicItem! , withBoundaryIdentifier identifier: NSCopying! , atPoint p: CGPoint){
        println("Boundary contact occurred - \(identifier)")
        
        let collidingView = item as UIView
        collidingView.backgroundColor = UIColor.yellowColor()
        UIView.animateWithDuration(0.3){
            collidingView.backgroundColor = UIColor.grayColor()
        }
        
        if (!firstContact){
        firstContact = true
        
        let  square = UIView(frame: CGRect(x: 30, y: 0, width: 100, height: 100))
        square.backgroundColor = UIColor.grayColor()
        view.addSubview(square)
        
        collision.addItem(square)
        gravity.addItem(square)
        
        let attach = UIAttachmentBehavior(item: collidingView, attachedToItem: square)
        animator.addBehavior(attach)
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       let barrier = UIView(frame: CGRect(x: 0, y: 300, width: 130, height: 20))
        
        square = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        square.backgroundColor = UIColor.grayColor()
        view.addSubview(square)
        
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [square])
        animator.addBehavior(gravity)
        
        collision = UICollisionBehavior(items: [square])
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
        
        barrier.backgroundColor = UIColor.redColor()
        view.addSubview(barrier)
        
        collision.addBoundaryWithIdentifier("barrier", forPath: UIBezierPath(rect: barrier.frame))
        
        collision.action = {println("\(NSStringFromCGAffineTransform(self.square.transform)) \(NSStringFromCGPoint(self.square.center))")}
        collision.collisionDelegate=self
        
        let itemBehavior = UIDynamicItemBehavior(items: [square])
        itemBehavior.elasticity = 0.6
        animator.addBehavior(itemBehavior)
        
    }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        if(snap != nil){
            animator.removeBehavior(snap)
        }
        
        let touch = touches.anyObject() as UITouch
        snap = UISnapBehavior(item: square, snapToPoint: touch.locationInView(view))
        animator.addBehavior(snap)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func coreMotion(){
        motionManager.startAccelerometerUpdatesToQueue(motionQueue, withHandler: )
    }
    
    func panning(pan: UIPanGestureRecognizer){
        println("Our box is panning...")
        var location = pan.locationInView(self.view)
        var touchLocation = pan.locationInView(self.square)
        
        if pan.state == UIGestureRecognizerState.Began{
            
            self.animator!.removeAllBehaviors()
            self.square!.center = location;
            
        }
        else if pan.state == UIGestureRecognizerState.Changed{
            self.square!.center = location;
        }
        else if pan.state == UIGestureRecognizerState.Ended{
            self.animator!.addBehavior(self.gravity)
            self.animator!.addBehavior(self.collision)
        }
    }
}













