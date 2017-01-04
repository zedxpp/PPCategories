//
//  UIBarButtonItem+PPExtension.h
//  PPCategories
//
//  Created by SimleCp.
//  Copyright (c) 2016年 Swift520.com All rights reserved.
//
//  GitHub地址: https://github.com/SimleCp
//  博客地址: http://Swift520.com

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (PPExtension)

+ (instancetype)itemWithNilItem;

+ (instancetype)itemWithTarget:(id)target action:(SEL)action;

+ (instancetype)itemWithTitle:(NSString *)title target:(id)target action:(SEL)action;

+ (instancetype)itemWithImage:(NSString *)image target:(id)target action:(SEL)action;

+ (instancetype)itemWithNormalImage:(NSString *)normalImage target:(id)target action:(SEL)action title:(NSString *)title;

+ (instancetype)itemWithNormalImage:(NSString *)normalImage highlightedImage:(NSString *)highlightedImage target:(id)target action:(SEL)action title:(NSString *)title;

@end

