//
//  TwoViewController.m
//  CoreAnimation
//
//  Created by suhc on 15/11/19.
//  Copyright © 2015年 kongjianjia. All rights reserved.
//

#import "TwoViewController.h"
#import "OneViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController
#pragma mark － 生命周期
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(107, 100, 100, 50);
    btn.center = self.view.center;
    [btn setTitle:@"第二页" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:13];
    btn.backgroundColor = [UIColor greenColor];
    [btn addTarget:self action:@selector(btnOnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

#pragma mark - Method
- (void)btnOnClick:(UIButton *)btn{
    OneViewController *oneVc = [[OneViewController alloc] init];
    
    [UIView transitionFromView:self.view toView:oneVc.view duration:1.f options:UIViewAnimationOptionTransitionFlipFromLeft completion:^(BOOL finished) {
        [UIApplication sharedApplication].keyWindow.rootViewController = oneVc;
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"嘻嘻嘻嘻嘻嘻");
}

@end
