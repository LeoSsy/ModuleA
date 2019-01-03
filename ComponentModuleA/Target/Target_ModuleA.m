//
//  Target_ModuleB.m
//  ModuleB-Component
//
//  Created by 测试模块 on 2018/9/13.
//  Copyright © 2018年 quangqiang. All rights reserved.
//

#import "Target_ModuleA.h"
#import "ViewController.h"

@implementation Target_ModuleA

- (UIViewController *)Action_viewController:(NSDictionary *)params {
    ViewController *VC = [[ViewController alloc] init];
    VC.image = [params objectForKey:@"image"];
    VC.callback = [params objectForKey:@"callback"];
    return VC;
}

@end
