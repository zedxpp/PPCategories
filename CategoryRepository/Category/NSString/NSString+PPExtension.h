//
//  NSString+PPExtension.h
//  CategoryRepository
//
//  Created by SimleCp.
//  Copyright (c) 2016年 Swift520.com All rights reserved.
//
//  GitHub地址: https://github.com/SimleCp
//  博客地址: http://Swift520.com

#import <Foundation/Foundation.h>

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

@end
