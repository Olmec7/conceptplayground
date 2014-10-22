//
//  UIView+DView.h
//  MVCplay
//
//  Created by Chad Slater on 10/22/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (DView)


#pragma mark Properties

@property (nonatomic, strong) UIImageView *dieImage;

#pragma mark Methods

- (void)showDie:(int)num;

@end
