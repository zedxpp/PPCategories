//
//  NSDate+PPExtension.h
//  PPCategories
//
//  Created by SimleCp.
//  Copyright (c) 2016年 Swift520.com All rights reserved.
//
//  GitHub地址: https://github.com/SimleCp
//  博客地址: http://Swift520.com

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSDate (PPExtension)
/**
 *  是否为今天
 */
- (BOOL)isToday;
/**
 *  是否为昨天
 */
- (BOOL)isYesterday;
/**
 *  是否为明天
 */
- (BOOL)isTomorrow;
/**
 *  是否为今年
 */
- (BOOL)isThisYear;

/** yyyyMMdd */
UIKIT_EXTERN NSString * const ymd;
/** yyyy-MM-dd */
UIKIT_EXTERN NSString * const ymD;
/** yyyy-MM-dd HH:mm:ss */
UIKIT_EXTERN NSString * const ymdhms;
/** yyyy-MM-dd HH:mm */
UIKIT_EXTERN NSString * const ymdhm;

/**
 *  获取当前时间戳 毫秒级
 */
+ (NSString *)getCurrentTimeStampMilliSecond;

/**
 *  获取当前时间戳 秒级
 */
+ (NSString *)getCurrentTimeStampSecond;

/**
 *  时间戳转换为日期字符串 格式: yyyyMMdd
 */
+ (NSString *)convertYMdFromTimeStamp:(NSString *)timeStamp;

/**
 *  时间戳转换为日期字符串 格式: yyyy-MM-dd
 */
+ (NSString *)convertYMDFromTimeStamp:(NSString *)timeStamp;

/**
 *  时间戳转换为日期字符串 格式: yyyy-MM-dd HH:mm
 */
+ (NSString *)convertYMdHmFromTimeStamp:(NSString *)timeStamp;

/**
 *  时间戳转换为日期字符串 格式: yyyy-MM-dd HH:mm:ss
 */
+ (NSString *)convertYMdHmsFromTimeStamp:(NSString *)timeStamp;

/**
 *  日期字符串转换为时间戳 输入的日期字符串格式: yyyyMMdd
 */
+ (NSString *)convertTimeStampFromYMdStr:(NSString *)YMdStr;

/**
 *  日期字符串转换为时间戳 输入的日期字符串格式: yyyy-MM-dd
 */
+ (NSString *)convertTimeStampFromYMDStr:(NSString *)YMDStr;

/**
 *  日期字符串转换为时间戳 输入的日期字符串格式: yyyy-MM-dd HH:mm:ss
 */
+ (NSString *)convertTimeStampFromYMdHmsStr:(NSString *)YMdHmsStr;

@end
