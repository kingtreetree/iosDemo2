//
//  myVC1ViewController.h
//  iosDemo2
//
//  Created by zzzz98wc on 15/6/3.
//  Copyright (c) 2015年 zzzz98wc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIKit/UIActivityIndicatorView.h>
#import <Foundation/Foundation.h>

@interface myVC1ViewController : UIViewController <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *myWebView;
@property (nonatomic) NSString* myUrlRequestString;

@end
