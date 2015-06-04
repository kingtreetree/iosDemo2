//
//  myTVCViewController.m
//  iosDemo2
//
//  Created by zzzz98wc on 15/6/4.
//  Copyright (c) 2015年 zzzz98wc. All rights reserved.
//

#import "myTVCViewController.h"

@interface myTVCViewController ()

@end

@implementation myTVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation

{
    
    // Return YES for supported orientations
    
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 2;//返回标题数组中元素的个数来确定分区的个数
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    switch (section) {
            
        case 0:
            
            return  1; //每个分区通常对应不同的数组，返回其元素个数来确定分区的行数
            
            break;
            
        case 1:
            
            return  2;
            
            break;
            
        default:
            
            return 0;  
            
            break;  
            
    }  
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
    static NSString *CellIdentifier = @"Cell";
    
    //初始化cell并指定其类型，也可自定义cell
    
    UITableViewCell *myCell = (UITableViewCell*)[tableView  dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(myCell == nil){
        myCell = [[UITableViewCell alloc] initWithFrame:CGRectZero];
        }
    switch (indexPath.section) {
        case 0://对应各自的分区，0是用户信息
            [[myCell textLabel] setText:@"用户信息"];//给cell添加数据
            break;
            
        case 1:
            [[myCell textLabel] setText:@"我的收藏"];
            break;
        default:
            [[myCell textLabel] setText:@"检查更新"];
            
    }  
    return myCell;//返回cell
}


@end
