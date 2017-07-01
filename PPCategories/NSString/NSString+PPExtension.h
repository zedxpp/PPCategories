//
//  NSString+PPExtension.h
//  PPCategories
//
//  Created by SimleCp.
//  Copyright (c) 2016年 Swift520.com All rights reserved.
//
//  GitHub地址: https://github.com/SimleCp
//  博客地址: http://Swift520.com

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (PPExtension)

/** 各种加密 */
@property (readonly) NSString *md5String;
@property (readonly) NSString *sha1String;
@property (readonly) NSString *sha256String;
@property (readonly) NSString *sha512String;

- (NSString *)hmacSHA1StringWithKey:(NSString *)key;
- (NSString *)hmacSHA256StringWithKey:(NSString *)key;
- (NSString *)hmacSHA512StringWithKey:(NSString *)key;
/** 分隔线 */

/**
 *  获取当前路径的文件大小
 */
- (unsigned long long)fileSize;

/**
 *  获取 Cache 路径的完整路径地址
 */
- (NSString *)cacheDirectory;

/**
 *  获取 Documents 路径的完整路径地址
 */
- (NSString *)documentsDirectory;

/**
 *  获取 Tmp 路径的完整路径地址
 */
- (NSString *)tmpDirectory;

/**
 *  将 NSTimeInterval 转换为分钟和秒钟格式化输出
 */
+ (NSString *)stringWithFormatTime:(NSTimeInterval)time;

/**
 *  根据文字宽度和字体大小(pointSize)获取文字高度 (默认字体不加粗)
 *
 *  @param textMaxW 文字最大宽度
 *  @param fontSize 字体大小
 */
- (CGFloat)stringHeightWithTextMaxW:(CGFloat)textMaxW fontSize:(CGFloat)fontSize;

/**
 *  根据文字宽度和字体(UIFont)获取文字高度
 *
 *  @param textMaxW 文字最大宽度
 *  @param font 字体
 */

- (CGFloat)stringHeightWithTextMaxW:(CGFloat)textMaxW font:(UIFont *)font;

/**
 *  根据字体大小(pointSize)获取文字宽度 (默认字体不加粗)
 */
- (CGFloat)stringWidthWithFontSize:(CGFloat)fontSize;

/**
 *  根据字体(UIFont)获取文字宽度
 */
- (CGFloat)stringWidthWithFont:(UIFont *)font;


@end
