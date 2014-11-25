//
//  ViewController.swift
//  DecoratorPattern
//
//  Created by Chad Slater on 11/24/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//

import UIKit

protocol MacBook {
    func getCost() -> Double
    func getScreenSize() -> String
    func getMemoryAmount() -> String
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        class RegularMacBook: MacBook {
            func getCost() -> Double {
                return 1000.0
            }
            
            func getScreenSize() -> String {
                return "13 Inch"
           
            }
            func getMemoryAmount() -> String {
                return "8GB"
            }
        }
    
        class MacBookDecorator: MacBook {
            private let decoratedMacBook: MacBook
            
            required init(decoratedMacBook: MacBook) {
                self.decoratedMacBook = decoratedMacBook
            }
            
            func getCost() -> Double {
                return decoratedMacBook.getCost()
            }
            
            func getScreenSize() -> String {
                return decoratedMacBook.getScreenSize()
            }
            func getMemoryAmount() -> String {
                return decoratedMacBook.getMemoryAmount()
            }
        }
        
        class Pro: MacBookDecorator {
            required init(decoratedMacBook: MacBook) {
                super.init(decoratedMacBook: decoratedMacBook)
            }
            
            override func getCost() -> Double {
                return super.getCost() + 500.0
            }
            
            override func getScreenSize() -> String {
                return super.getScreenSize() + ", " + " + 2 inches"
            }
            override func getMemoryAmount() -> String {
                return super.getMemoryAmount() + ", " + " + 8GB"
            }
        }
        
        class Air: MacBookDecorator {
            required init(decoratedMacBook: MacBook) {
                super.init(decoratedMacBook: decoratedMacBook)
            }
            
            override func getCost() -> Double {
                return super.getCost() - 400.0
            }
            
            override func getScreenSize() -> String {
                return super.getScreenSize() + ", " + " - 2 inches"
            }
            override func getMemoryAmount() -> String {
                return super.getMemoryAmount() + ", " + " - 4GB"
            }
        }
        
        
        var aMacBook: MacBook = RegularMacBook()
        println("Cost : \(aMacBook.getCost()); Screen Size: \(aMacBook.getScreenSize()) Memory Amount: \(aMacBook.getMemoryAmount())")
        aMacBook = Pro(decoratedMacBook: aMacBook)
        println("Cost : \(aMacBook.getCost()); Screen Size: \(aMacBook.getScreenSize()) Memory Amount: \(aMacBook.getMemoryAmount())")
        aMacBook = Air(decoratedMacBook: aMacBook)
        println("Cost : \(aMacBook.getCost()); Screen Size: \(aMacBook.getScreenSize()) Memory Amount: \(aMacBook.getMemoryAmount())")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

