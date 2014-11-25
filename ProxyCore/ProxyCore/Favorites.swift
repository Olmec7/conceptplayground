//
//  Favorites.swift
//  ProxyCore
//
//  Created by Chad Slater on 11/20/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//

import Foundation
import CoreData

class Favorites: NSManagedObject {

    @NSManaged var title: String
    @NSManaged var author: String
    
    class func createInManagedObjectContext(moc: NSManagedObjectContext, title: String, author: String) -> Favorites {
        let newFavorite = NSEntityDescription.insertNewObjectForEntityForName("LogItem", inManagedObjectContext: moc) as Favorites
        newFavorite.title = title
        newFavorite.author = author
        
        return newFavorite
        
    }

}
