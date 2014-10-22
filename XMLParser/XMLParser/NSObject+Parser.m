//
//  NSObject+Parser.m
//  XMLParser
//
//  Created by Chad Slater on 10/15/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//

#import "NSObject+Parser.h"

@implementation NSObject (Parser)

-init {
    if(self == [super init]) {
        parser = [[NSXMLParser alloc]
                  initWithContentsOfURL:[NSURL fileURLWithPath:[[NSBundle mainBundle]
                                                                pathForResource:@"Sample" ofType: @"xml"]]];
        [parser setDelegate:self];
        [parser parse];
    }      
    return self;
}

- (void)parser:(NSXMLParser *)parser
didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI
 qualifiedName:(NSString *)qualifiedName attributes:(NSDictionary
                                                     *)attributeDict {
    
    NSLog(@"Started
          Element %@", elementName);
          element = [NSMutableString
                     string];
          
          }
          
          §  - (void)parser:(NSXMLParser
                             *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI
          qualifiedName:(NSString *)qName
          
          - (void)parser:(NSXMLParser *)parser
          didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI
          qualifiedName:(NSString *)qName {
              
              NSLog(@"Found an element named: %@ with a
                    value of: %@", elementName, element);
                    
                    }
                    
                    §  - (void)parser:(NSXMLParser
                                       *)parser foundCharacters:(NSString *)string

                    
                    - (void)parser:(NSXMLParser *)parser
                    foundCharacters:(NSString *)string
                    
                    if(element == nil)
                    
                    element = [[NSMutableString
                                alloc] init];
                    
                    [element appendString:string];
                    
                    }
                    
                    - (BOOL)application:(UIApplication *)application
                    didFinishLaunchingWith Options:(NSDictionary *)launchOptions {
                        
                        // Override point for customization after app launch
                        [window addSubview:viewController.view];
                        [window makeKeyAndVisible];
                        
                        Parser *parser = [[Parser alloc] init];
                        
                        return YES;
                    }

@end
