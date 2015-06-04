//
//  myVC2ViewController.m
//  iosDemo2
//
//  Created by zzzz98wc on 15/6/3.
//  Copyright (c) 2015年 zzzz98wc. All rights reserved.
//

#import "myVC2ViewController.h"

@interface myVC2ViewController ()

@property CGRect myRect;

@end

@implementation myVC2ViewController

@synthesize myWebView=_myWebView;
@synthesize myUrlRequestString=_myUrlRequestString;
@synthesize myRect=_myRect;

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

-(void)webViewDidStartLoad:(UIWebView *)webView{
    NSLog(@"webview did start load!");
    
    //创建UIActivityIndicatorView背底半透明View
    UIView *myWaitView = [[UIView alloc] initWithFrame:self.myRect];
    
    NSLog(@"rect original point is: %f %f",self.myRect.origin.x,self.myRect.origin.y);
    NSLog(@"webview original point is %f %f",self.myWebView.bounds.origin.x,self.myWebView.bounds.origin.y);
    
    [myWaitView setTag:108];
    [myWaitView setBackgroundColor:[UIColor blackColor]];
    [myWaitView setAlpha:0.5];
    [self.myWebView addSubview:myWaitView];
    
    UIActivityIndicatorView* activityIndicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 64.0f, 64.0f)];
    [activityIndicator setCenter:myWaitView.center];
    [activityIndicator setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleWhite];
    [myWaitView addSubview:activityIndicator];
    
    [activityIndicator startAnimating];
    
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"webview did finish load!");
    UIView* myWaitView=[self.myWebView viewWithTag:108];
    [myWaitView removeFromSuperview];
    
}

-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    NSLog(@"webview did error!");
}


@end
