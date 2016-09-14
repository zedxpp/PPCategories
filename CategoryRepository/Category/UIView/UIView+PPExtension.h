//
//  UIView+PPExtension.h
//  CategoryRepository
//
//  Created by SimleCp.
//  Copyright (c) 2016年 Swift520.com All rights reserved.
//
//  GitHub地址: https://github.com/SimleCp
//  博客地址: http://Swift520.com

#import <UIKit/UIKit.h>

@interface UIView (PPExtension)

@property (nonatomic, assign) CGFloat pp_x;
@property (nonatomic, assign) CGFloat pp_y;
@property (nonatomic, assign) CGFloat pp_width;
@property (nonatomic, assign) CGFloat pp_height;
@property (nonatomic, assign) CGFloat pp_centerX;
@property (nonatomic, assign) CGFloat pp_centerY;

@property (nonatomic, assign) CGPoint pp_origin;
@property (nonatomic, assign) CGSize pp_size;

@property (nonatomic, assign) CGFloat pp_left;
@property (nonatomic, assign) CGFloat pp_right;
@property (nonatomic, assign) CGFloat pp_top;
@property (nonatomic, assign) CGFloat pp_bottom;

/**
 *  设置导航栏标题
 */
+ (UIView *)viewWithNavTitle:(NSString *)text;

/**
 *  获取当前view所在的控制器
 */
- (UIViewController *)viewController;

@end
