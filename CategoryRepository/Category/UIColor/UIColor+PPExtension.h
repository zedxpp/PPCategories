//
//  UIColor+PPExtension.h
//  CategoryRepository
//
//  Created by SimleCp.
//  Copyright (c) 2016年 Swift520.com All rights reserved.
//
//  GitHub地址: https://github.com/SimleCp
//  博客地址: http://Swift520.com

#import <UIKit/UIKit.h>

@interface UIColor (PPExtension)

/**
 *  根据RGBA返回UIColor
 */
+ (UIColor *)colorWithR:(CGFloat)red g:(CGFloat)green b:(CGFloat)blue a:(CGFloat)alpha;

/**
 *  根据RGB返回UIColor
 */
+ (UIColor *)colorWithR:(CGFloat)red g:(CGFloat)green b:(CGFloat)blue;

/**
 *  根据 颜色二进制 和透明度 返回UIColor
 */
+ (UIColor *)colorWithHexStr:(NSString *)string alpha:(CGFloat)alpha;

/**
 *  根据 颜色二进制 返回UIColor
 */
+ (UIColor *)colorWithHexStr:(NSString *)string;
@end
