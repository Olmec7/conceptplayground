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



- (void)viewDidLoad {
    [super viewDidLoad];
    
   
}

- (IBAction)getGame{
    
    Video_Games *game = [[Video_Games alloc] init];
    game.developer = @"Bungie";
    game.year = 2001;
    game.title = @"Halo: Combat Evolved";
    
    
    Video_Games *game2 = [[Video_Games alloc] init];
    [game2 setTitle:@"Mass Effect"];
    [game2 setDeveloper:@"BioWare"];
    [game2 setYear:2007];
    
    NSArray *games = [[NSArray alloc] initWithObjects:game, game2, nil];
    
    Video_Games *halo = games[0];
    Video_Games *massEffect = games[1];
    

    switch (self.getGameSegmented.selectedSegmentIndex)
    {
            
            
        case 0:
            self.gameYearLabel.text = [NSString stringWithFormat:@"Year Released: %d", halo.year];
            self.gameDeveloperLabel.text = [NSString stringWithFormat:@"Developed By: %@",halo.developer];
            break;
        case 1: self.gameDeveloperLabel.text = [NSString stringWithFormat:@"Developed By: %@", massEffect.developer];
             self.gameYearLabel.text = [NSString stringWithFormat:@"Year Released: %d", massEffect.year];
            break;
        default:
            break; 
    }
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

