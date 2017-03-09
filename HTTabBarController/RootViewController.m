//
//  RootViewController.m
//  HTTabBarController
//
//  Created by 一米阳光 on 17/3/9.
//  Copyright © 2017年 一米阳光. All rights reserved.
//

#import "RootViewController.h"
#import "HTTools.h"
#import "FiveViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor greenColor];
    [self createButton];
}

- (void)createButton {
    UIButton * button = [HTTools createButton:CGRectMake(100, 100, CGRectGetWidth(self.view.bounds)-200, 50) bgColor:[UIColor cyanColor] title:@"跳转" titleColor:[UIColor redColor] tag:101 action:@selector(buttonClick:) vc:self];
    [self.view addSubview:button];
}

- (void)buttonClick:(id)sender {
    FiveViewController * fiveVC = [[FiveViewController alloc] init];
    [self.navigationController pushViewController:fiveVC animated:YES];
}



@end
