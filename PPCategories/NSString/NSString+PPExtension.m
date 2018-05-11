//
//  NSString+PPExtension.m
//  PPCategories
//
//  Created by zedxpp.
//  Copyright (c) 2016年 zedxpp.com All rights reserved.
//
//  GitHub地址: https://github.com/SimleCp
//  博客地址: http://zedxpp.com

#import "NSString+PPExtension.h"
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonHMAC.h>

@implementation NSString (PPExtension)

/** 各种加密 */
- (NSString *)md5String
{
    const char *string = self.UTF8String;
    int length = (int)strlen(string);
    unsigned char bytes[CC_MD5_DIGEST_LENGTH];
    CC_MD5(string, length, bytes);
    return [self stringFromBytes:bytes length:CC_MD5_DIGEST_LENGTH];
}

- (NSString *)sha1String
{
    const char *string = self.UTF8String;
    int length = (int)strlen(string);
    unsigned char bytes[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1(string, length, bytes);
    return [self stringFromBytes:bytes length:CC_SHA1_DIGEST_LENGTH];
}

- (NSString *)sha256String
{
    const char *string = self.UTF8String;
    int length = (int)strlen(string);
    unsigned char bytes[CC_SHA256_DIGEST_LENGTH];
    CC_SHA256(string, length, bytes);
    return [self stringFromBytes:bytes length:CC_SHA256_DIGEST_LENGTH];
}

- (NSString *)sha512String
{
    const char *string = self.UTF8String;
    int length = (int)strlen(string);
    unsigned char bytes[CC_SHA512_DIGEST_LENGTH];
    CC_SHA512(string, length, bytes);
    return [self stringFromBytes:bytes length:CC_SHA512_DIGEST_LENGTH];
}

- (NSString *)hmacSHA1StringWithKey:(NSString *)key
{
    NSData *keyData = [key dataUsingEncoding:NSUTF8StringEncoding];
    NSData *messageData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSMutableData *mutableData = [NSMutableData dataWithLength:CC_SHA1_DIGEST_LENGTH];
    CCHmac(kCCHmacAlgSHA1, keyData.bytes, keyData.length, messageData.bytes, messageData.length, mutableData.mutableBytes);
    return [self stringFromBytes:(unsigned char *)mutableData.bytes length:mutableData.length];
}

- (NSString *)hmacSHA256StringWithKey:(NSString *)key
{
    NSData *keyData = [key dataUsingEncoding:NSUTF8StringEncoding];
    NSData *messageData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSMutableData *mutableData = [NSMutableData dataWithLength:CC_SHA256_DIGEST_LENGTH];
    CCHmac(kCCHmacAlgSHA256, keyData.bytes, keyData.length, messageData.bytes, messageData.length, mutableData.mutableBytes);
    return [self stringFromBytes:(unsigned char *)mutableData.bytes length:mutableData.length];
}

- (NSString *)hmacSHA512StringWithKey:(NSString *)key
{
    NSData *keyData = [key dataUsingEncoding:NSUTF8StringEncoding];
    NSData *messageData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSMutableData *mutableData = [NSMutableData dataWithLength:CC_SHA512_DIGEST_LENGTH];
    CCHmac(kCCHmacAlgSHA512, keyData.bytes, keyData.length, messageData.bytes, messageData.length, mutableData.mutableBytes);
    return [self stringFromBytes:(unsigned char *)mutableData.bytes length:mutableData.length];
}

#pragma mark - Helpers

- (NSString *)stringFromBytes:(unsigned char *)bytes length:(NSInteger)length
{
    NSMutableString *mutableString = @"".mutableCopy;
    for (int i = 0; i < length; i++)
        [mutableString appendFormat:@"%02x", bytes[i]];
    return [NSString stringWithString:mutableString];
}
/** 分隔线 */



- (unsigned long long)fileSize
{
    // 获得文件管理者
    NSFileManager *mgr = [NSFileManager defaultManager];
    
    // 是否为文件夹
    BOOL isDirectory = NO;
    
    // 先判断路径的存在性
    BOOL exists = [mgr fileExistsAtPath:self isDirectory:&isDirectory];
    // 路径不存在
    if (!exists) return 0;
    
    // 如果是文件夹
    if (isDirectory) {
        // 文件总大小
        unsigned long long fileSize = 0;
        
        // 遍历所有文件
        NSDirectoryEnumerator *enumerator = [mgr enumeratorAtPath:self];
        for (NSString *subpath in enumerator) {
            // 完整的子路径
            NSString *fullSubpath = [self stringByAppendingPathComponent:subpath];
            fileSize += [mgr attributesOfItemAtPath:fullSubpath error:nil].fileSize;
        }
        
        return fileSize;
    }
    
    // 如果是文件
    return [mgr attributesOfItemAtPath:self error:nil].fileSize;
}

- (NSString *)cacheDirectory
{
    NSString *dir = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
    return [dir stringByAppendingPathComponent:[self lastPathComponent]];
}

- (NSString *)documentsDirectory
{
    NSString *dir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    return [dir stringByAppendingPathComponent:[self lastPathComponent]];
}

- (NSString *)tmpDirectory
{
    NSString *dir = NSTemporaryDirectory();
    return [dir stringByAppendingPathComponent:[self lastPathComponent]];
}

+ (NSString *)stringWithFormatTime:(NSTimeInterval)time
{
    time += 0.05;
    NSInteger min = time / 60;
    NSInteger second = (NSInteger)time % 60;
    return [NSString stringWithFormat:@"%02ld:%02ld", min, second];
}

- (CGFloat)stringHeightWithTextMaxW:(CGFloat)textMaxW fontSize:(CGFloat)fontSize
{
    return [self stringHeightWithTextMaxW:textMaxW font:[UIFont systemFontOfSize:fontSize]];
}

- (CGFloat)stringHeightWithTextMaxW:(CGFloat)textMaxW font:(UIFont *)font
{
    return [self boundingRectWithSize:CGSizeMake(textMaxW, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : font} context:nil].size.height;
}

- (CGFloat)stringWidthWithFontSize:(CGFloat)fontSize
{
    return [self stringWidthWithFont:[UIFont systemFontOfSize:fontSize]];
}

- (CGFloat)stringWidthWithFont:(UIFont *)font
{
    UIFont *currentFont = font;
    return [self boundingRectWithSize:CGSizeMake(MAXFLOAT, currentFont.pointSize) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : currentFont} context:nil].size.width;
}

- (NSString *)stringFormatWithLimitValueType:(PPStringFormatLimitValue)type
{
    return [self stringFormatWithLimitValueType:type footDesc:nil];
}

- (NSString *)stringFormatWithLimitValueType:(PPStringFormatLimitValue)type footDesc:(NSString *)footDesc
{
    if (type == PPStringFormatLimitValueThousand || type == PPStringFormatLimitValueTenThousand) {
        NSInteger value;
        NSString *str;
        if (type == PPStringFormatLimitValueThousand) {
            value = 1000;
            str = @"千";
        } else {
            value = 10000;
            str = @"万";
        }
        
        NSString *tmp = str;
        if (footDesc.length) {
            [tmp stringByAppendingString:footDesc];
        }
        
        return [self stringFormatWithLimitValue:value footDesc:tmp];
    } else {
        return @"界限type异常";
    }
}

- (NSString *)stringFormatWithLimitValue:(NSInteger)limitValue footDesc:(NSString *)footDesc
{
    CGFloat tmp = (CGFloat)limitValue / (CGFloat)limitValue / (CGFloat)limitValue;
    NSString *resStr;
    NSInteger realValue = [self integerValue];
    if (realValue >= limitValue) {
        resStr = [NSString stringWithFormat:@"%.1f%@", realValue * tmp, footDesc];
    } else {
        resStr = [NSString stringWithFormat:@"%zd", realValue];
    }
    return resStr;
}

@end
