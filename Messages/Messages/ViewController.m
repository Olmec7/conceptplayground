//
//  ViewController.m
//  Messages
//
//  Created by Chad Slater on 10/27/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Model.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)forScore:(id)sender {
    Model *score = [[Model alloc] init];
    int points = 100;
    int newScore = [score addX:24 toY:points];
    [score sort];
    
    
    self.score.text = [NSString stringWithFormat:@"%d", newScore];
    
}



@end
