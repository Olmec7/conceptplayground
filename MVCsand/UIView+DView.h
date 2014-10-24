//
//  UIView+DView.h
//  MVCsand
//
//  Created by Chad Slater on 10/23/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DView:UIView

@property (nonatomic, strong) UIImageView *numImage;

- (void)showImage:(int)num;

@end
