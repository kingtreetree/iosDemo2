//
//  ViewController.m
//  iosDemo2
//
//  Created by zzzz98wc on 15/5/30.
//  Copyright (c) 2015年 zzzz98wc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *happyView;
@property NSString* testString;

@end

@implementation ViewController
@synthesize testString=_testString;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
