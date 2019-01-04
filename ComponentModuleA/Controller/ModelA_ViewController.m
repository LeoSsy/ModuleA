//
//  ViewController.m
//  ModuleA
//
//  Created by Jack on 2018/11/8.
//  Copyright © 2018年 bianla. All rights reserved.
//

#import "ModelA_ViewController.h"
#import "PageAViewController.h"

@interface ModelA_ViewController ()

@end

@implementation ModelA_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"我是模块A业务组件";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 50, 220, 220)];
    imageView.image = self.image;
    [self.view addSubview:imageView];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(20, 290, 300, 100);
    btn.backgroundColor = [UIColor darkGrayColor];
    [btn setTitle:@"跳转模块A业务功能组件" forState: UIControlStateNormal];
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton *callbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    callbtn.frame = CGRectMake(20, CGRectGetMaxY(btn.frame)+30, 300, 100);
    callbtn.backgroundColor = [UIColor darkGrayColor];
    [callbtn setTitle:@"点击执行回调事件" forState: UIControlStateNormal];
    [callbtn addTarget:self action:@selector(callbtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:callbtn];
    

}

- (void)push {
    PageAViewController *VC = [[PageAViewController alloc] init];
    [self.navigationController pushViewController:VC animated:YES];
}

- (void)callbtnClick {
    if (self.callback) {
        self.callback(@"我是模块a回调的消息");
    }
}

@end
