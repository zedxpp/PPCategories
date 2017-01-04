//
//  UIImage+PPExtension.h
//  PPCategories
//
//  Created by SimleCp.
//  Copyright (c) 2016年 Swift520.com All rights reserved.
//
//  GitHub地址: https://github.com/SimleCp
//  博客地址: http://Swift520.com

#import <UIKit/UIKit.h>

@interface UIImage (PPExtension)

/**
 *  传入无需系统自动渲染的图片的名称 (字符串) , 返回原始的图片
 */
+ (UIImage *)imageWithOriginalImageName:(NSString *)imageName;

/**
 *  根据图片名 (字符串) 生成圆形头像 (UIImage对象)
 */
+ (instancetype)circleImageNamed:(NSString *)name;
- (instancetype)circleImage;

/**
 *  根据URL字符串下载图片
 */
+ (instancetype)imageWithURLString:(NSString *)urlString;

@end
