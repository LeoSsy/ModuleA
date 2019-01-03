//
//  ViewController.m
//  ModuleA
//
//  Created by Jack on 2018/11/8.
//  Copyright © 2018年 bianla. All rights reserved.
//

#import "ViewController.h"
#import "PageAViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"我是模块B业务组件";
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 50, 220, 220)];
    imageView.image = self.image;
    [self.view addSubview:imageView];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 300, 100);
    btn.backgroundColor = [UIColor darkGrayColor];
    btn.center = self.view.center;
    [btn setTitle:@"模块B业务功能组件" forState: UIControlStateNormal];
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

}

- (void)push {
    PageAViewController *VC = [[PageAViewController alloc] init];
    [self.navigationController pushViewController:VC animated:YES];
}

@end
