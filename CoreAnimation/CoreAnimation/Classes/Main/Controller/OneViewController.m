//
//  OneViewController.m
//  CoreAnimation
//
//  Created by suhc on 15/11/19.
//  Copyright © 2015年 kongjianjia. All rights reserved.
//

#import "OneViewController.h"
#import "TwoViewController.h"

@interface OneViewController ()

@property (nonatomic, weak) UIView *detailView;
@end

@implementation OneViewController
#pragma mark - 生命周期
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 100, 50);
    btn.center = self.view.center;
    [btn setTitle:@"第一页" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:13];
    btn.backgroundColor = [UIColor greenColor];
    [btn addTarget:self action:@selector(btnOnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

#pragma mark - Method
- (void)btnOnClick:(UIButton *)btn{
    TwoViewController *twoVc = [[TwoViewController alloc] init];
    
    [UIView transitionFromView:self.view toView:twoVc.view duration:1.f options:UIViewAnimationOptionTransitionFlipFromRight completion:^(BOOL finished) {
        [UIApplication sharedApplication].keyWindow.rootViewController = twoVc;
    }];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"哈哈哈哈哈哈哈哈哈哈");
}

@end
