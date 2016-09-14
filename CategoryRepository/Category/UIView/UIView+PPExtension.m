//
//  UIView+PPExtension.m
//  CategoryRepository
//
//  Created by SimleCp.
//  Copyright (c) 2016年 Swift520.com All rights reserved.
//
//  GitHub地址: https://github.com/SimleCp
//  博客地址: http://Swift520.com

#import "UIView+PPExtension.h"

@implementation UIView (PPExtension)

#pragma mark - 类拓展
+ (UIView *)viewWithNavTitle:(NSString *)text
{
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.textColor = [UIColor whiteColor];
    [label sizeToFit];
    return label;
}

- (UIViewController *)viewController {
    UIResponder *responder = [self nextResponder];
    while (responder) {
        
        if ([responder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)responder;
        }
        responder = [responder nextResponder];
    }
    return nil;
}

#pragma mark - 坐标自定义
- (CGFloat)pp_x
{
    return self.frame.origin.x;
}

- (void)setPp_x:(CGFloat)pp_x
{
    CGRect frame = self.frame;
    frame.origin.x = pp_x;
    self.frame = frame;
}

- (CGFloat)pp_y
{
    return self.frame.origin.y;
}

- (void)setPp_y:(CGFloat)pp_y
{
    CGRect frame = self.frame;
    frame.origin.y = pp_y;
    self.frame = frame;
}

- (CGFloat)pp_width
{
    return self.frame.size.width;
}

- (void)setPp_width:(CGFloat)pp_width
{
    CGRect frame = self.frame;
    frame.size.width = pp_width;
    self.frame = frame;
}

- (CGFloat)pp_height
{
    return self.frame.size.height;
}

- (void)setPp_height:(CGFloat)pp_height
{
    CGRect frame = self.frame;
    frame.size.height = pp_height;
    self.frame = frame;
}

- (CGFloat)pp_centerX
{
    return self.center.x;
}

- (void)setPp_centerX:(CGFloat)pp_centerX
{
    CGPoint center = self.center;
    center.x = pp_centerX;
    self.center = center;
}

- (CGFloat)pp_centerY
{
    return self.center.y;
}

- (void)setPp_centerY:(CGFloat)pp_centerY
{
    CGPoint center = self.center;
    center.y = pp_centerY;
    self.center = center;
}

- (CGFloat)pp_left
{
    return self.pp_x;
}

- (void)setPp_left:(CGFloat)pp_left
{
    self.pp_x = pp_left;
}

- (CGFloat)pp_right
{
    return CGRectGetMaxX(self.frame);
}

- (void)setPp_right:(CGFloat)pp_right
{
    CGRect frame = self.frame;
    frame.origin.x = pp_right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)pp_top
{
    return self.pp_y;
}

- (void)setPp_top:(CGFloat)pp_top
{
    self.pp_y = pp_top;
}

- (CGFloat)pp_bottom
{
    return CGRectGetMaxY(self.frame);
}

- (void)setPp_bottom:(CGFloat)pp_bottom
{
    CGRect frame = self.frame;
    frame.origin.y = pp_bottom - frame.size.height;
    self.frame = frame;
}

- (CGPoint)pp_origin
{
    return self.frame.origin;
}

- (void)setPp_origin:(CGPoint)pp_origin
{
    CGRect frame = self.frame;
    frame.origin = pp_origin;
    self.frame = frame;
}

- (CGSize)pp_size
{
    return self.frame.size;
}

- (void)setPp_size:(CGSize)pp_size
{
    CGRect frame = self.frame;
    frame.size = pp_size;
    self.frame = frame;
}

@end
