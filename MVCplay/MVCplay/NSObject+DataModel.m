//
//  NSObject+DataModel.m
//  MVCplay
//
//  Created by Chad Slater on 10/21/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//

#import "NSObject+DataModel.h"

@implementation NSObject (DataModel)
- (int)getDiceRoll
{
    int roll = (arc4random() % 6) + 1;
    
    return roll;
}
@end
