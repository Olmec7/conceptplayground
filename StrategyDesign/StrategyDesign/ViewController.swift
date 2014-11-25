//
//  ViewController.swift
//  StrategyDesign
//
//  Created by Chad Slater on 11/19/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//

import UIKit


protocol Behaviour {
    func movementDemand() -> String
}


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        class Robot {
            
            let robo: Behaviour
            
            func movementDescription() -> String {
                return self.robo.movementDemand()
            }
            
            init(behaviour: Behaviour) {
                self.robo = behaviour
            }
        }
        
        class Angry : Behaviour {
    
            func movementDemand() -> String {
                   return "Attack Human"
            }
        }
        
        class Defensive : Behaviour {
            func movementDemand() -> String {
                var action = "Defend Human"
                return action
                
            }
        }
        
        class Humor : Behaviour {
            func movementDemand() -> String {
                var action = "Make fun of Human"
                return action
                
            }
        }
        
        var angry = Robot(behaviour:Angry())
        println(angry.movementDescription())
        
        var defensive = Robot(behaviour:Defensive())
        println(defensive.movementDescription())
        
        
        var humorous = Robot(behaviour:Humor())
        println(humorous.movementDescription())
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

