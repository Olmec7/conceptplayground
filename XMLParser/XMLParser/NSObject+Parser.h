//
//  NSObject+Parser.h
//  XMLParser
//
//  Created by Chad Slater on 10/15/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface Parser : NSObject <NSXMLParserDelegate>
{
    NSXMLParser *parser;
    NSMutableString *element;
}

@end
