//
//  UIApplication+PPExtension.h
//  PPCategories
//
//  Created by zedxpp.
//  Copyright (c) 2016年 zedxpp.com All rights reserved.
//
//  GitHub地址: https://github.com/SimleCp
//  博客地址: http://zedxpp.com

#import <UIKit/UIKit.h>

@interface UIApplication (PPExtension)


/**
 获取app版本号
 */
- (NSString *)getAppVersion;

/**
 获取app编译版本号
 */
- (NSString *)getAppBuildVersion;

/**
 *  获取窗口当前正在显示控制器
 */
- (UIViewController *)currentViewController;

@end
