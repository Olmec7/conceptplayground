//
//  NSObject+DataModel.m
//  
//
//  Created by Chad Slater on 10/23/14.
//
//

#import "NSObject+DataModel.h"

@implementation DataModel


- (int)getNumber {
    int r = (arc4random() % 10) + 1;
    //
    return r;
}


@end
