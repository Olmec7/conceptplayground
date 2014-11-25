//
//  ViewController.swift
//  Animating
//
//  Created by Chad Slater on 11/4/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var falling: UIGravityBehavior!
    var animator: UIDynamicAnimator!
    var bounce: UICollisionBehavior!
    
    let size : CGFloat = 100
    let yPosition : CGFloat = 120
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    @IBAction func animateAgain(sender: AnyObject) {
        
        let theDownChad = UIImageView()
       
        theDownChad.image = UIImage(named: "BadChad.jpg")
        theDownChad.frame = CGRectMake(0, yPosition, size, size)
        self.view.addSubview(theDownChad)
        
        animator = UIDynamicAnimator(referenceView: view)
        falling = UIGravityBehavior(items: [theDownChad])
        animator.addBehavior(falling)
        
        bounce = UICollisionBehavior(items: [theDownChad])
        bounce.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(bounce)
        
    }
    
    @IBAction func letsAnimate(sender: AnyObject) {
        
        let theSideChad = UIImageView()
        
        theSideChad.image = UIImage(named: "BadChad.jpg")
        theSideChad.frame = CGRectMake(0, yPosition, size, size)
        self.view.addSubview(theSideChad)
        
        
        let duration = 2.0
        let delay = 0.2
        let options = UIViewAnimationOptions.CurveEaseIn
        
            
       
    
        UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
            
            theSideChad.backgroundColor = UIColor.lightGrayColor()
            
         
            theSideChad.frame = CGRectMake(320-self.size, self.yPosition, self.size, self.size)
            
            }, completion: { animationFinished in
                
                theSideChad.removeFromSuperview()
                
        })
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

