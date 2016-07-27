//
//  ChatViewController.m
//  TSNoChat
//
//  Created by WangShengquan on 16/7/27.
//  Copyright © 2016年 WangShengquan. All rights reserved.
//

#import "ChatViewController.h"

@interface ChatViewController ()

@end

@implementation ChatViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.title = @"会话";
        self.tabBarItem.title = @"会话";
        self.tabBarItem.image = [UIImage imageNamed:@"tabbar_chat"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_chatHL"];
    }
    return self;
}

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

@end
