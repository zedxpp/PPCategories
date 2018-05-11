//
//  UITabBar+PPBadge.h
//  PPCategories
//
//  Created by zedxpp on 16/5/26.
//  Copyright © 2016年 zedxpp. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PPBadgeView;

@interface UITabBar (PPBadge)

- (void)showBadgeOnItemIndex:(NSInteger)index;

- (void)hideBadgeOnItemIndex:(NSInteger)index;

@end

