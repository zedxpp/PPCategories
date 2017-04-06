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
 *  根据 颜色十六进制 和透明度 返回UIColor
 */
+ (UIColor *)colorWithHexStr:(NSString *)string alpha:(CGFloat)alpha;

/**
 *  根据 颜色十六进制 返回UIColor
 */
+ (UIColor *)colorWithHexStr:(NSString *)string;

/**
 *  从UIColor中获取颜色十六进制字符串 如#FFB400
 */
+ (NSString *)hexStrWithColor:(UIColor *)color;

/**
 *  图片名字, 返回颜色
 */
+ (UIColor *)colorWithPatternImageString:(NSString *)imageString;

@end
