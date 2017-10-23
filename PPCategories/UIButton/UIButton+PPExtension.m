//
//  UIButton+PPExtension.m
//  PPCategoriesExample
//
//  Created by peng on 2017/7/1.
//  Copyright © 2017年 swift520. All rights reserved.
//

#import "UIButton+PPExtension.h"

@implementation UIButton (PPExtension)

+ (instancetype)button
{
    return [self buttonWithType:UIButtonTypeCustom];
}

- (CGFloat)getButtonNormalStateWidth
{
    UIImage *img = [self imageForState:UIControlStateNormal];
    NSString *title = [self titleForState:UIControlStateNormal];
    
    // +1 预留1毫米间隙
    return img.size.width + [title stringWidthWithFontSize:self.titleLabel.font.pointSize] + 1;
}


@end
