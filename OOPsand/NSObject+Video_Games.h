//
//  NSObject+Video_Games.h
//  OOPsand
//
//  Created by Chad Slater on 10/27/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Video_Games: NSObject

@property int year;
@property NSString *title;
@property NSString *developer;
@property NSString *producer;

- (NSString *)gameInfo;


@end
