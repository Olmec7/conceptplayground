//
//  ViewController.swift
//  ParallelProcessing
//
//  Created by Chad Slater on 11/22/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var threadView: UITableView!
    
    var backgroundQueue: NSOperationQueue?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let priority = DISPATCH_QUEUE_PRIORITY_DEFAULT
        dispatch_async(dispatch_get_global_queue(priority, 0), { ()->() in
            for i in 1...20 {
                println("dispatch global queue")
            }
            dispatch_async(dispatch_get_main_queue(), {
                for i in 1...20 {
                  println("dispatch main queue")
                }
                
            })
        })
        println("main Interface thread")
        
        let queue = NSOperationQueue()
        let backgroundOperation = BackGroundProcess()
        
        queue.addOperation(backgroundOperation)
        //this is the default value, but if you don't set it you will get an error.
        backgroundOperation.threadPriority = 0
        backgroundOperation.completionBlock = {() -> () in
            println("hello") 
        }
        
        backgroundQueue = NSOperationQueue()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var numberRow = 3
        return numberRow
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "MyTestCell")
        
        backgroundQueue?.addOperationWithBlock({
            cell.textLabel.text = "Row #\(indexPath.row)"
            
            NSOperationQueue.mainQueue().addOperationWithBlock({
                cell.detailTextLabel?.text = "Subtitle #\(indexPath.row)"
                return;
                
            })
            
        })
    
        
        return cell
    }
    
}