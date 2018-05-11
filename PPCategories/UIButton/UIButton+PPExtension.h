//
//  UIButton+PPExtension.h
//  PPCategoriesExample
//
//  Created by peng on 2017/7/1.
//  Copyright © 2017年 zedxpp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (PPExtension)

/**
 创建自定义类型的按钮
 */
+ (instancetype)button;

/**
 根据image和title获取默认状态下的按钮宽度
 
 @return 宽度
 */
- (CGFloat)getButtonNormalStateWidth;

@end
