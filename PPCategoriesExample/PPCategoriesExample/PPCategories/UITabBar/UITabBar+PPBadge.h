//
//  UITabBar+PPBadge.h
//  PPCategories
//
//  Created by SimleCp on 16/5/26.
//  Copyright © 2016年 Swift520. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PPBadgeView;

@interface UITabBar (PPBadge)

- (void)showBadgeOnItemIndex:(NSInteger)index;

- (void)hideBadgeOnItemIndex:(NSInteger)index;

@end

