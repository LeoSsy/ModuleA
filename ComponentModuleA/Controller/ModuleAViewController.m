//
//  ModuleBViewController.m
//  ModuleB-Component
//
//  Created by 测试模块 on 2018/9/13.
//  Copyright © 2018年 quangqiang. All rights reserved.
//

#import "ModuleAViewController.h"
#import "PageAViewController.h"

@interface ModuleAViewController ()

@end

@implementation ModuleAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"我是模块B业务组件";
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 300, 100);
    btn.backgroundColor = [UIColor lightGrayColor];
    btn.center = self.view.center;
    [btn setTitle:@"模块B业务功能组件" forState: UIControlStateNormal];
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)push {
    PageAViewController *VC = [[PageAViewController alloc] init];
    [self.navigationController pushViewController:VC animated:YES];
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
