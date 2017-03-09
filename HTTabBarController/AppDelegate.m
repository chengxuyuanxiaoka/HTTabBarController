//
//  AppDelegate.m
//  HTTabBarController
//
//  Created by 一米阳光 on 17/3/9.
//  Copyright © 2017年 一米阳光. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourViewController.h"
#import "FiveViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    /**
     *  标签栏控制器UITabBarController
     *  标签栏控制器的工作原理和导航控制器一样,都是用来管理子视图控制器之间的层次关系
     *
     *   不同点：导航控制器使用的是压栈和出栈,但是标签栏控制器上的所有子视图控制器层次上是平级的,就是说所有的子视图控制器平铺在标签栏控制器之上
     */
    RootViewController * root = [[RootViewController alloc] init];
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:root];
    //为root上的导航条添加标题,导航条上的内容必须通过导航控制器上的子视图控制器对象调用navigationItem的属性设置
    root.navigationItem.title = @"首页";
    //同样的为标签栏控制器上的视图添加标题 使用标签栏控制器上的子视图控制器对象调用tabBarItem.title
    nav.tabBarItem.title = @"界面1";
    
    SecondViewController * second = [[SecondViewController alloc] init];
    second.tabBarItem.title = @"界面2";
    
    ThirdViewController * third = [[ThirdViewController alloc] init];
    third.tabBarItem.title = @"界面3";
    
    FourViewController * four = [[FourViewController alloc] init];
    four.tabBarItem.title = @"界面4";
    
    //创建标签栏控制器对象
    UITabBarController * tabBar = [[UITabBarController alloc] init];
    //向tabBarController上添加子视图控制器
    tabBar.viewControllers = @[nav,second,third,four];
    self.window.rootViewController = tabBar;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
