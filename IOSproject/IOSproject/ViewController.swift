//
//  ViewController.swift
//  IOSproject
//
//  Created by student on 11/21/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit
import CoreMotion
import AVFoundation

class ViewController: UIViewController {
    
   /* var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    var collistion: UICollisionBehavior!  */
    
    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var music: UILabel!
    @IBOutlet weak var musicplay: UILabel!
    
    @IBAction func Start(sender: AnyObject) {
        music.text = "Play Audio Music"
        audioPlayer.play()
        
        //musicplay.textColor = UIColor.redColor()
        musicplay.backgroundColor = UIColor(patternImage: UIImage(named: "01.png"))        
    }
    
    @IBAction func Push(sender: AnyObject) {
        music.text = "Push Audio Music"
        audioPlayer.stop()
    }

    @IBAction func Stop(sender: AnyObject) {
        
    }
    
    func coreAudio(){
        var url1 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("brid", ofType: "mp3")!)
        var error: NSError?
        
        audioPlayer = AVAudioPlayer(contentsOfURL: url1, error: &error)
        
        audioPlayer.prepareToPlay()
        
        //audioPlayer.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coreAudio()
        
       self.view.backgroundColor = UIColor(patternImage: UIImage(named: "my love.png"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

