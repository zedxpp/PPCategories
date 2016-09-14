//
//  NSDate+PPExtension.m
//  CategoryRepository
//
//  Created by SimleCp.
//  Copyright (c) 2016年 Swift520.com All rights reserved.
//
//  GitHub地址: https://github.com/SimleCp
//  博客地址: http://Swift520.com

#import "NSDate+PPExtension.h"

@implementation NSDate (PPExtension)

- (BOOL)isToday
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    
    NSDateComponents *selfCmps = [calendar components:unit fromDate:self];
    NSDateComponents *nowCmps = [calendar components:unit fromDate:[NSDate date]];
    
    return selfCmps.year == nowCmps.year
    && selfCmps.month == nowCmps.month
    && selfCmps.day == nowCmps.day;
    
    //    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    //    fmt.dateFormat = @"yyyy-MM-dd";
    //
    //    NSString *selfYear = [fmt stringFromDate:self];
    //    NSString *nowYear = [fmt stringFromDate:[NSDate date]];
    //
    //    return [selfYear isEqualToString:nowYear];
}

- (BOOL)isYesterday
{
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyy-MM-dd";
    
    NSString *selfString = [fmt stringFromDate:self];
    NSDate *selfDate = [fmt dateFromString:selfString];
    
    NSString *nowString = [fmt stringFromDate:[NSDate date]];
    NSDate *nowDate = [fmt dateFromString:nowString];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    NSDateComponents *cmps = [calendar components:unit fromDate:selfDate toDate:nowDate options:0];
    
    return cmps.year == 0
    && cmps.month == 0
    && cmps.day == 1;
}

- (BOOL)isTomorrow
{
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyy-MM-dd";
    
    NSString *selfString = [fmt stringFromDate:self];
    NSDate *selfDate = [fmt dateFromString:selfString];
    
    NSString *nowString = [fmt stringFromDate:[NSDate date]];
    NSDate *nowDate = [fmt dateFromString:nowString];

    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    NSDateComponents *cmps = [calendar components:unit fromDate:selfDate toDate:nowDate options:0];
    
    return cmps.year == 0
    && cmps.month == 0
    && cmps.day == -1;
}

- (BOOL)isThisYear
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSInteger selfYear = [calendar component:NSCalendarUnitYear fromDate:self];
    NSInteger nowYear = [calendar component:NSCalendarUnitYear fromDate:[NSDate date]];
    return selfYear == nowYear;
    //    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    //    fmt.dateFormat = @"yyyy";
    //
    //    NSString *selfYear = [fmt stringFromDate:self];
    //    NSString *nowYear = [fmt stringFromDate:[NSDate date]];
    //
    //    return [selfYear isEqualToString:nowYear];
}

NSString * const ymd = @"yyyyMMdd";
NSString * const ymD = @"yyyy-MM-dd";
NSString * const ymdhms = @"yyyy-MM-dd HH:mm:ss";
NSString * const ymdhm = @"yyyy-MM-dd HH:mm";

//[df setDateFormat:@"yyyy-MM-dd hh:mm:ss"];

// Timestamp
// convert
//+ (instancetype)
//dateConvertTimeStamp
#pragma mark - name
+ (NSString *)convertYMdFromTimeStamp:(NSString *)timeStamp
{
    
    return [NSDate convertTimeStringFromTimeStamp:timeStamp dateFormat:ymd];
}

+ (NSString *)convertYMDFromTimeStamp:(NSString *)timeStamp
{
    return [NSDate convertTimeStringFromTimeStamp:timeStamp dateFormat:ymD];
}

+ (NSString *)convertYMdHmFromTimeStamp:(NSString *)timeStamp
{
    return [NSDate convertTimeStringFromTimeStamp:timeStamp dateFormat:ymdhm];
}

+ (NSString *)convertYMdHmsFromTimeStamp:(NSString *)timeStamp
{
    return [NSDate convertTimeStringFromTimeStamp:timeStamp dateFormat:ymdhms];
}

+ (NSString *)convertTimeStringFromTimeStamp:(NSString *)timeStamp dateFormat:(NSString *)dateFormat
{
    NSTimeInterval time = [timeStamp doubleValue];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    [formatter setDateFormat:dateFormat];
    [formatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:8 * 3600]];
    
    NSDate *dete = [NSDate dateWithTimeIntervalSince1970:time / 1000];
    //    PPLog(@"%@",[formatter stringFromDate:dete]);
    return [formatter stringFromDate:dete];
}
#pragma mark - name
+ (NSString *)convertTimeStampFromYMdStr:(NSString *)YMdStr
{
    return [self convertTimeStampFromYMdHmsStr:YMdStr dateFormat:ymd];
}

+ (NSString *)convertTimeStampFromYMDStr:(NSString *)YMDStr
{
    return [self convertTimeStampFromYMdHmsStr:YMDStr dateFormat:ymD];
}

+ (NSString *)convertTimeStampFromYMdHmsStr:(NSString *)YMdHmsStr
{
    return [self convertTimeStampFromYMdHmsStr:YMdHmsStr dateFormat:ymdhms];
}

+ (NSString *)convertTimeStampFromYMdHmsStr:(NSString *)YMdHmsStr dateFormat:(NSString *)dateFormat
{
    //    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //    [formatter setDateFormat:dateFormat];
    //    [formatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:8 * 3600]];
    NSDateFormatter *formatter = [self getDateFormatterWithDateFormat:dateFormat];
    NSDate *date = [formatter dateFromString:YMdHmsStr];
    NSTimeInterval time = [date timeIntervalSince1970];
    
    NSString *str = [NSString stringWithFormat:@"%f", time * 1000];
    //    PPLog(@"%@", str);
    return str;
}

#pragma mark - name
+ (NSDateFormatter *)getDateFormatterWithDateFormat:(NSString *)dateFormat
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:dateFormat];
    [formatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:8 * 3600]];
    return formatter;
}

#pragma mark - name
+ (NSString *)getCurrentTimeStamp
{
    //    time_t time = time(NULL);
    NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate  date] timeIntervalSince1970] * 1000];
    return timeSp;
    //    PPLog(@"%ld", );
}
//+ (NSString *)getCurrentTimeFormatterYMdHms
//{
//    return [self getCurrentTimeFormatterWithDateFormat:ymdhms];
//}

+ (NSString *)getCurrentTimeFormatterWithDateFormat:(NSString *)dateFormat
{
    NSDateFormatter *formatter = [self getDateFormatterWithDateFormat:dateFormat];
    return [formatter stringFromDate:[NSDate date]];
}


//+ (NSString *)convertTimeStampFromYMdStr:(NSString *)YMdStr;
//+ (NSString *)convertTimeStampFromYMDStr:(NSString *)YMDStr;
//+ (NSString *)convertTimeStampFromYMdHmsStr:(NSString *)YMdHmsStr;

@end
