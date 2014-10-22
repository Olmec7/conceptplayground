//
//  ViewController.swift
//  XMLParserSwift
//
//  Created by Chad Slater on 10/16/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//

import UIKit

class ViewController: UIViewController, NSXMLParserDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var url = NSURL(string: "http://api.nytimes.com/svc/books/v2/lists.xml?list=hardcover-fiction&weeks-on-list=2&api-key=5dccb91cdc2998be790dcf899cb1f9a3:12:70001517")
        var xmlParser = NSXMLParser(contentsOfURL: url)
        xmlParser?.delegate = self
        xmlParser?.parse()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func parser(parser: NSXMLParser!, didStartElement elementName: String!, namespaceURI: String!, qualifiedName qName: String!, attributes attributeDict: NSDictionary!) {
        println("Element's name is \(elementName)")
        println("Element's attributes are \(attributeDict)")
    }

}
