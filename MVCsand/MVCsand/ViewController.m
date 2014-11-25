//
//  ViewController.m
//  MVCsand
//
//  Created by Chad Slater on 10/23/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+DataModel.h"

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

- (IBAction)rNumberButton:(id)sender {
    
    DataModel *model = [[DataModel alloc] init];
    
    int randomNumber = [model getNumber];
    
    self.rNumber.text = [NSString stringWithFormat:@"%d",randomNumber];
    
    
}
- (IBAction)enterNumber:(id)sender {
}
@end
