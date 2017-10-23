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

typedef NS_ENUM(NSInteger, PPStringFormatLimitValue) {
    PPStringFormatLimitValueThousand, // 千
    PPStringFormatLimitValueTenThousand // 万
};

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

/**
 格式化字符串, 把 11000 -> 1.1万
 
 @param type 千或者万
 @return 字符串 如 1.1万
 */
- (NSString *)stringFormatWithLimitValueType:(PPStringFormatLimitValue)type;

/**
 格式化字符串, 把 11000 -> 1.1万人关注
 
 @param type 千或者万
 @param footDesc 千或者万的字符串已经增加到字符串了, 只需要传入后面的 人关注, 如果不需要, 传nil
 @return 字符串 如 1.1万人关注
 */
- (NSString *)stringFormatWithLimitValueType:(PPStringFormatLimitValue)type footDesc:(NSString *)footDesc;

/**
 格式化字符串, 把 11000 -> 1.1万人关注
 
 @param limitValue 界限值 如 1000, 10000
 @param footDesc 尾部描述 如 万, 万人关注
 @return 字符串 如 1.1万人关注
 */
- (NSString *)stringFormatWithLimitValue:(NSInteger)limitValue footDesc:(NSString *)footDesc;


@end
