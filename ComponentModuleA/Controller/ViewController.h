//
//  ViewController.h
//  ModuleA
//
//  Created by Jack on 2018/11/8.
//  Copyright © 2018年 bianla. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef void(^callback)(NSString *result);


@interface ViewController : UIViewController
/**
 接收到图片
 */
@property(nonatomic,strong)UIImage *image;


/**
 回调
 */
@property(nonatomic,copy)callback callback;
@end

