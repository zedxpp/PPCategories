//
//  UITabBar+PPBadge.m
//  PPCategories
//
//  Created by pengpeng on 16/5/26.
//  Copyright © 2016年 Swift520. All rights reserved.
//

#import "UITabBar+PPBadge.h"
#import "PPBadgeView.h"

@implementation UITabBar (PPBadge)

- (void)showBadgeOnItemIndex:(NSInteger)index {
    // 容错处理
    if (index == self.items.count) return;
    
    // 移除之前的小红点
    [self removeBadgeOnItemIndex:index];
    
    // 小红点宽高
    CGFloat badgeWH = 6;
    
    // 新建小红点
    PPBadgeView *badgeView = [[PPBadgeView alloc] init];
    badgeView.index = index;
    badgeView.layer.cornerRadius = badgeWH * 0.5;
    badgeView.layer.masksToBounds = YES;
    badgeView.backgroundColor = [UIColor redColor];
    
    CGRect tabFrame = self.frame;
    
    //确定小红点的位置
    CGFloat percentX = (index + 0.6) / self.items.count;
    CGFloat x = ceilf(percentX * tabFrame.size.width);
    CGFloat y = ceilf(0.1 * tabFrame.size.height);
    badgeView.frame = CGRectMake(x, y, badgeWH, badgeWH);
    
    [self addSubview:badgeView];
}

- (void)hideBadgeOnItemIndex:(NSInteger)index {
    //移除小红点
    [self removeBadgeOnItemIndex:index];
}

- (void)removeBadgeOnItemIndex:(NSInteger)index {
    // 角标进行移除
    for (PPBadgeView *subView in self.subviews) {
        
        if ([subView isMemberOfClass:[PPBadgeView class]] && subView.index == index) {
        
            [subView removeFromSuperview];
        }
    }
}
@end

