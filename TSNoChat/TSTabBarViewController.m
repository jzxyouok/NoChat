//
//  TSTabBarViewController.m
//  TSNoChat
//
//  Created by WangShengquan on 16/7/27.
//  Copyright © 2016年 WangShengquan. All rights reserved.
//

#import "TSTabBarViewController.h"

#import "ChatViewController.h"
#import "FindViewController.h"
#import "LinkManViewController.h"
#import "SetViewController.h"
#import "TSNavigationViewController.h"

@interface TSTabBarViewController ()

@property (nonatomic, strong) ChatViewController *chatVC;
@property (nonatomic, strong) FindViewController *findVC;
@property (nonatomic, strong) LinkManViewController *linkVC;
@property (nonatomic, strong) SetViewController  *setVC;

@end

@implementation TSTabBarViewController

-(instancetype)init
{
    self = [super init];
    if (self) {
        [self setTabBarViewControllers];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)setTabBarViewControllers
{
    // 会话
    self.chatVC = [[ChatViewController alloc]init];
    TSNavigationViewController *chatNavVC = [[TSNavigationViewController alloc]initWithRootViewController:self.chatVC];
    
    // 联系人
    self.linkVC = [[LinkManViewController alloc]init];
    TSNavigationViewController *lineNavVC = [[TSNavigationViewController alloc]initWithRootViewController:self.linkVC];
    
    // 发现
    self.findVC = [[FindViewController alloc]init];
    TSNavigationViewController *findNavVC = [[TSNavigationViewController alloc]initWithRootViewController:self.findVC];
    
    // 设置
    self.setVC = [[SetViewController alloc]init];
    TSNavigationViewController *setNavVC = [[TSNavigationViewController alloc]initWithRootViewController:self.setVC];
    
    self.viewControllers = @[chatNavVC,lineNavVC,findNavVC,setNavVC];
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
