//
//  RootViewController.m
//  CoreAnimation
//
//  Created by suhc on 15/11/19.
//  Copyright © 2015年 kongjianjia. All rights reserved.
//

#import "RootViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

#pragma mark - 生命周期
- (void)viewDidLoad {
    [super viewDidLoad];
    
    OneViewController *oneVc = [[OneViewController alloc] init];
    [self addOneChildViewController:oneVc withTitle:@"一"];
    
    TwoViewController *twoVc = [[TwoViewController alloc] init];
    [self addOneChildViewController:twoVc withTitle:@"二"];
    
    ThreeViewController *threeVc = [[ThreeViewController alloc] init];
    [self addOneChildViewController:threeVc withTitle:@"三"];
    
    FourViewController *fourVc = [[FourViewController alloc] init];
    [self addOneChildViewController:fourVc withTitle:@"四"];
    
    //设置导航栏主题
    [[UINavigationBar appearance] setBarTintColor:[UIColor purpleColor]];
    [UINavigationBar appearance].translucent = NO;
    
    //设置TabBar主题
    UITabBarItem *tabBarItemAppearance = [UITabBarItem appearance];
    //1.普通状态
    NSMutableDictionary *normalAttributesDic = [NSMutableDictionary dictionary];
    normalAttributesDic[NSFontAttributeName] = [UIFont systemFontOfSize:17];
    normalAttributesDic[NSForegroundColorAttributeName] = [UIColor blackColor];
    [tabBarItemAppearance setTitleTextAttributes:normalAttributesDic forState:UIControlStateNormal];
    //2.选中状态
    NSMutableDictionary *selectedAttributesDic = [NSMutableDictionary dictionaryWithDictionary:normalAttributesDic];
    selectedAttributesDic[NSForegroundColorAttributeName] = [UIColor greenColor];
    [tabBarItemAppearance setTitleTextAttributes:selectedAttributesDic forState:UIControlStateSelected];
    
    [tabBarItemAppearance setTitlePositionAdjustment:UIOffsetMake(0, -10)];
    
    
}

- (void)addOneChildViewController:(UIViewController *)controller withTitle:(NSString *)title{
    //1.设置参数
    controller.title = title;
    
    //2.封装一个导航控制器
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:controller];
    
    //3.添加为子控制器
    [self addChildViewController:nav];
}

@end
