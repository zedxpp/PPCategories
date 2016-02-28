//
//  UIBarButtonItem+PPExtension.h
//  CategoryRepository
//
//  Created by SimleCp.
//  Copyright (c) 2016年 Swift520.com All rights reserved.
//
//  GitHub地址: https://github.com/SimleCp
//  博客地址: http://Swift520.com

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (PPExtension)

/**
 *  快速生成UIBarButtonItem类方法
 */
+ (instancetype)itemWithImage:(NSString *)image highlightedImage:(NSString *)highlightedImage target:(id)target action:(SEL)action;

@end

