//
//  ViewController.h
//  OOPsand
//
//  Created by Chad Slater on 10/20/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int _agility;
    int _strength;
    int _intelligence;
    bool telekenisis;
    NSString *_greeting;
    
}



@property (nonatomic, strong) NSString* Name;
@property (nonatomic) int Stamina;

// no parameters
- (void) doSomethingHeroic;
// 1 parameter
- (int) fight:(int)enemyStamina;
// 2 parameters
- (void) increaseStatsWithStamina:(int)stamina andAgility:(int)agility;

@end



