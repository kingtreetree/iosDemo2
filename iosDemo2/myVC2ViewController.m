//
//  myVC2ViewController.m
//  iosDemo2
//
//  Created by zzzz98wc on 15/6/3.
//  Copyright (c) 2015年 zzzz98wc. All rights reserved.
//

#import "myVC2ViewController.h"

@interface myVC2ViewController ()

@end

@implementation myVC2ViewController

@synthesize myWebView=_myWebView;
@synthesize myUrlRequestString=_myUrlRequestString;

-(NSString*)myUrlRequestString{
    if([_myUrlRequestString isEqual:@""] || _myUrlRequestString==NULL){
        _myUrlRequestString=@"http://www.baidu.com";
    }
    return _myUrlRequestString;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURLRequest* myUrlRequest=[NSURLRequest requestWithURL:[NSURL URLWithString:self.myUrlRequestString]];
    [self.myWebView loadRequest:myUrlRequest];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
