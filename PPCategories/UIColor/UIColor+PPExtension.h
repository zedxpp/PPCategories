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
<<<<<<< HEAD
 *  根据 颜色十六进制 和透明度 返回UIColor
=======
 *  颜色二进制 和透明度 返回UIColor
>>>>>>> ca39baae99ead5687d87bd8976021a32cc3cdc7d
 */
+ (UIColor *)colorWithHexStr:(NSString *)string alpha:(CGFloat)alpha;

/**
<<<<<<< HEAD
 *  根据 颜色十六进制 返回UIColor
 */
+ (UIColor *)colorWithHexStr:(NSString *)string;

/**
 *  从UIColor中获取颜色十六进制字符串 如#FFB400
 */
+ (NSString *)hexStrWithColor:(UIColor *)color;
=======
 *  颜色二进制 返回UIColor
 */
+ (UIColor *)colorWithHexStr:(NSString *)string;


/**
 图片名字, 返回颜色
 */
+ (UIColor *)colorWithPatternImageString:(NSString *)imageString;
>>>>>>> ca39baae99ead5687d87bd8976021a32cc3cdc7d

@end
