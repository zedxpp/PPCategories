//
//  UIColor+PPExtension.m
//  PPCategories
//
//  Created by SimleCp.
//  Copyright (c) 2016年 Swift520.com All rights reserved.
//
//  GitHub地址: https://github.com/SimleCp
//  博客地址: http://Swift520.com

#import "UIColor+PPExtension.h"

@implementation UIColor (PPExtension)

+ (UIColor *)colorWithR:(CGFloat)red g:(CGFloat)green b:(CGFloat)blue a:(CGFloat)alpha
{
    return [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:alpha];
}

+ (UIColor *)colorWithR:(CGFloat)red g:(CGFloat)green b:(CGFloat)blue {
    return [UIColor colorWithR:red g:green b:blue a:1.0];
}

+ (UIColor *)colorWithHexStr:(NSString *)string alpha:(CGFloat)alpha {
    NSString *str;
    if ([string containsString:@"#"]) {
        str = [string substringFromIndex:1];
    } else {
        str = string;
    }
    
    NSScanner *scanner = [[NSScanner alloc] initWithString:str];
    UInt32 hexNum = 0;
    if ([scanner scanHexInt:&hexNum] == NO) {
        NSLog(@"16进制转UIColor, hexString为空");
    }
    
    return [UIColor colorWithR:(hexNum & 0xFF0000) >> 16 g:(hexNum & 0x00FF00) >> 8 b:hexNum & 0x0000FF a:alpha];
}

+ (UIColor *)colorWithHexStr:(NSString *)string {
    return [UIColor colorWithHexStr:string alpha:1.0];
}

<<<<<<< HEAD
+ (NSString *)hexStrWithColor:(UIColor *)color {
    CGFloat r, g, b, a;
    BOOL bo = [color getRed:&r green:&g blue:&b alpha:&a];
    if (bo) {
        int rgb = (int) (r * 255.0f)<<16 | (int) (g * 255.0f)<<8 | (int) (b * 255.0f)<<0;
        return [NSString stringWithFormat:@"#%06x", rgb].uppercaseString;
    } else {
        return @"";
    }
}


=======
+ (UIColor *)colorWithPatternImageString:(NSString *)imageString
{
    return [UIColor colorWithPatternImage:[UIImage imageNamed:imageString]];
}



>>>>>>> ca39baae99ead5687d87bd8976021a32cc3cdc7d

@end
