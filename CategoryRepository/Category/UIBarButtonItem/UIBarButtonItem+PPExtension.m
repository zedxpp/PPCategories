//
//  UIBarButtonItem+PPExtension.m
//  CategoryRepository
//
//  Created by SimleCp.
//  Copyright (c) 2016年 Swift520.com All rights reserved.
//
//  GitHub地址: https://github.com/SimleCp
//  博客地址: http://Swift520.com

#import "UIBarButtonItem+PPExtension.h"

@implementation UIBarButtonItem (PPExtension)

+ (instancetype)itemWithNilItem
{
    return [self itemWithTitle:@"" target:nil action:nil];
}

+ (instancetype)itemWithTarget:(id)target action:(SEL)action
{
    //    return [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@""] style:UIBarButtonItemStyleDone target:target action:action];
    return [self itemWithNormalImage:@"nav_back" highlightedImage:@"" target:target action:action title:@""];
}

+ (instancetype)itemWithTitle:(NSString *)title target:(id)target action:(SEL)action
{
    return [self itemWithNormalImage:@"" highlightedImage:@"" target:target action:action title:title];
}

+ (instancetype)itemWithImage:(NSString *)image target:(id)target action:(SEL)action
{
    return [self itemWithNormalImage:image highlightedImage:@"" target:target action:action title:@""];
}

+ (instancetype)itemWithNormalImage:(NSString *)normalImage target:(id)target action:(SEL)action title:(NSString *)title
{
    return [self itemWithNormalImage:normalImage highlightedImage:@"" target:(id)target action:(SEL)action title:(NSString *)title];
}

+ (instancetype)itemWithNormalImage:(NSString *)normalImage highlightedImage:(NSString *)highlightedImage target:(id)target action:(SEL)action title:(NSString *)title
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    if (normalImage.length) {
        [btn setImage:[UIImage imageNamed:normalImage] forState:UIControlStateNormal];
    }
    
    if (highlightedImage.length) {
        [btn setImage:[UIImage imageNamed:highlightedImage] forState:UIControlStateHighlighted];
    }
    //    btn.titleEdgeInsets = UIEdgeInsetsMake(0, 5, 0, 0);
    //    btn.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 5);
    //    if ([title isEqualToString:@""]) {
    //        btn.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 5);
    //    }
    
    btn.titleLabel.font = [UIFont systemFontOfSize:15];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}


@end
