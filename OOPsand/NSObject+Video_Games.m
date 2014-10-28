//
//  NSObject+Video_Games.m
//  OOPsand
//
//  Created by Chad Slater on 10/27/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//

#import "NSObject+Video_Games.h"

@implementation Video_Games: NSObject

- (NSString *)gameInfo {
    NSString *gameInfo = [NSString stringWithFormat:@"%@ was developed by %@ and produced by %@ in %i", self.title, self.developer, self.producer, self.year];
    
    return gameInfo;}

@end
