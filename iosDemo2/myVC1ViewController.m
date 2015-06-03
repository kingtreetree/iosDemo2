//
//  myVC1ViewController.m
//  iosDemo2
//
//  Created by zzzz98wc on 15/6/3.
//  Copyright (c) 2015年 zzzz98wc. All rights reserved.
//

#import "myVC1ViewController.h"

@interface myVC1ViewController ()




@end

@implementation myVC1ViewController

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

-(void)webViewDidStartLoad:(UIWebView *)webView{
    NSLog(@"webview did start load!");
    
    //创建UIActivityIndicatorView背底半透明View
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    [view setTag:108];
    [view setBackgroundColor:[UIColor blackColor]];
    [view setAlpha:0.5];
    [self.view addSubview:view];
    
    UIActivityIndicatorView* activityIndicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 32.0f, 32.0f)];
    [activityIndicator setCenter:view.center];
    [activityIndicator setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleWhite];
    [view addSubview:activityIndicator];
    
    [activityIndicator startAnimating];
    
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"webview did finish load!");
}

-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    NSLog(@"webview did error!");
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
