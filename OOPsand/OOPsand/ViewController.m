//
//  ViewController.m
//  OOPsand
//
//  Created by Chad Slater on 10/20/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//

#import "ViewController.h"



@implementation ViewController
- (int)fight:(int)enemyStamina
{
    int resultingStamina = enemyStamina - 5;
    
    return resultingStamina;
}

- (void) increaseStatsWithStamina:(int)stamina andAgility:(int)agility
{
    stamina += stamina;
    agility += agility;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

