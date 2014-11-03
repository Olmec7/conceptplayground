//
//  ViewController.h
//  OOPsand
//
//  Created by Chad Slater on 10/20/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSObject+Video_Games.h"


@interface ViewController : UIViewController
    
- (IBAction)getGame;
@property (nonatomic, weak) IBOutlet UILabel *gameYearLabel;
@property (nonatomic, weak) IBOutlet UILabel *gameDeveloperLabel;
@property (nonatomic,weak) IBOutlet UISegmentedControl *getGameSegmented;

    
    



@end



