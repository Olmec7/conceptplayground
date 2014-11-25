//
//  ViewController.swift
//  ProxyCore
//
//  Created by Chad Slater on 11/19/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//

import UIKit
import CoreData


class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet var tableOfFavorites: UITableView!
    
    var favorites = [NSManagedObject]()
    
    @IBAction func enterFavorite(sender:AnyObject){
        var alertPopUp = UIAlertController(title: "New favorite",
            message: "Add a new favorite, Title then Creator or Author",
            preferredStyle: .Alert)
        
        let saveFavorite = UIAlertAction(title: "Save Favorite",
            style: .Default) { (action: UIAlertAction!) -> Void in
                
                let textField = alertPopUp.textFields![0] as UITextField
                let textField1 = alertPopUp.textFields![1] as UITextField
                self.addFavoriteInfo(textField.text, author: textField1.text)
                self.tableOfFavorites.reloadData()
        }
        
        let cancel = UIAlertAction(title: "Cancel",
            style: .Default) { (action: UIAlertAction!) -> Void in
        }
        
        alertPopUp.addTextFieldWithConfigurationHandler {
            (textField: UITextField!) -> Void in
        }
        
        alertPopUp.addTextFieldWithConfigurationHandler {
            (textField1: UITextField!) -> Void in
        }
        
        alertPopUp.addAction(saveFavorite)
        alertPopUp.addAction(cancel)
        
        presentViewController(alertPopUp,
            animated: true,
            completion: nil)

        
    }

    func addFavoriteInfo(title:String, author:String) {
        
        let coreModel =
        UIApplication.sharedApplication().delegate as CoreModel
        
        let managedContext = coreModel.managedObjectContext!
        
        let theEntity =  NSEntityDescription.entityForName("Favorites",
            inManagedObjectContext:
            managedContext)
        
        let favorite = NSManagedObject(entity: theEntity!,
            insertIntoManagedObjectContext:managedContext) as Favorites
        
        favorite.title = title
        

        var error: NSError?
        if !managedContext.save(&error) {
            println("Could not save \(error), \(error?.userInfo)")
        }
    
        favorites.append(favorite)
    }
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        title = "Chad's Favorite Entertainment"
        tableOfFavorites.registerClass(UITableViewCell.self,
            forCellReuseIdentifier: "Cell")
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
    
    func tableView(tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
            return favorites.count
    }
    
    func tableView(tableView: UITableView,
        cellForRowAtIndexPath
        indexPath: NSIndexPath) -> UITableViewCell {
            
            let cell =
            tableView.dequeueReusableCellWithIdentifier("Cell")
                as UITableViewCell
            
            let aFavorite = favorites[indexPath.row]
            cell.textLabel.text = aFavorite.valueForKey("title")? as String?
            
            return cell
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let coreModel =
        UIApplication.sharedApplication().delegate as CoreModel
        
        let managedContext = coreModel.managedObjectContext!
        
        let fetchRequest = NSFetchRequest(entityName:"Favorites")
        
        var error: NSError?
        
        let fetchedResults =
        managedContext.executeFetchRequest(fetchRequest,
            error: &error) as [NSManagedObject]?
        
        if let results = fetchedResults {
            favorites = results
        } else {
            println("Could not fetch \(error), \(error!.userInfo)!!!!!!")
        }
    }
}
