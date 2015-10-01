//
//  ViewController.m
//  Logo Demo
//
//  Created by George Petrov on 10/1/15.
//  Copyright © 2015 Apps Collider. All rights reserved.
//

#import "ViewController.h"
#import "LogoView.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet LogoView *logoView;

- (IBAction)animateButtonAction:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)animateButtonAction:(UIButton *)sender {
    [_logoView animateLogo];
}

@end
