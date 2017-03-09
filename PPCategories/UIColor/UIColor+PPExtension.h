//
//  UIColor+PPExtension.h
//  PPCategories
//
//  Created by SimleCp.
//  Copyright (c) 2016年 Swift520.com All rights reserved.
//
//  GitHub地址: https://github.com/SimleCp
//  博客地址: http://Swift520.com

#import <UIKit/UIKit.h>

@interface UIColor (PPExtension)

/**
 *  RGBA返回UIColor
 */
+ (UIColor *)colorWithR:(CGFloat)red g:(CGFloat)green b:(CGFloat)blue a:(CGFloat)alpha;

/**
 *  RGB返回UIColor
 */
+ (UIColor *)colorWithR:(CGFloat)red g:(CGFloat)green b:(CGFloat)blue;

/**
 *  颜色二进制 和透明度 返回UIColor
 */
+ (UIColor *)colorWithHexStr:(NSString *)string alpha:(CGFloat)alpha;

/**
 *  颜色二进制 返回UIColor
 */
+ (UIColor *)colorWithHexStr:(NSString *)string;


/**
 图片名字, 返回颜色
 */
+ (UIColor *)colorWithPatternImageString:(NSString *)imageString;

@end
