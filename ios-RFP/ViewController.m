//
//  ViewController.m
//  ios-RFP
//
//  Created by Emiliano Barbosa on 9/27/15.
//  Copyright © 2015 Bocamuchas. All rights reserved.
//
#import <ReactiveCocoa/ReactiveCocoa.h>
#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *valueOne;
@property (weak, nonatomic) IBOutlet UITextField *valueTwo;
@property (weak, nonatomic) IBOutlet UITextField *result;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.valueOne.rac_textSignal subscribeNext:^(id x) {
        NSLog(@"ValueOne Digitado: %@", x);
    }];
    self.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)calculateSum:(id)sender {
    _result.text = [NSString stringWithFormat:@"%.02f", ([_valueOne.text floatValue] + [_valueTwo.text floatValue])];
}

@end
