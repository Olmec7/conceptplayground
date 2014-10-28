//
//  ViewController.m
//  OOPsand
//
//  Created by Chad Slater on 10/20/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Video_Games.h"



@implementation ViewController


- (IBAction)getGame:(id)sender{
    
    Video_Games *game = [[Video_Games alloc] init];
    game.developer = @"Bungie";
    game.year = 2001;
    game.title = @"Halo: Combat Evolved";
    
    
    Video_Games *game2 = [[Video_Games alloc] init];
    [game2 setTitle:@""];
    [game2 setDeveloper:@"JRR Tolkien"];
    [game2 setYear:1954];
    
    NSArray *games = [[NSArray alloc] initWithObjects:game, game2, nil];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

