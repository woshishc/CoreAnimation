//
//  AppDelegate.m
//  CoreAnimation
//
//  Created by suhc on 15/11/19.
//  Copyright © 2015年 kongjianjia. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"
#import "OneViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //1.创建window
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    //2.设置背景颜色
    self.window.backgroundColor = [UIColor whiteColor];
    //3.设置为window
    [self.window makeKeyAndVisible];
    //4.设置根控制器
    self.window.rootViewController = [[OneViewController alloc] init];
    
    return YES;
}



@end
