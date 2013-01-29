//
//  UIViewController+AdvancedNavigationControllerWidth.m
//  ANAdvancedNavigationController
//
//  Created by Zongxuan Su on 13-1-27.
//  Copyright (c) 2013年 Home. All rights reserved.
//

#import "UIViewController+AdvancedNavigationControllerWidth.h"
#import <objc/runtime.h>

@implementation UIViewController (AdvancedNavigationControllerWidth)

static NSString *kAdvancedNavigationControllerWidthKey = @"AdvancedNavigationControllerWidth";

- (void)setAdvancedNavigationControllerWidth:(CGFloat)advancedNavigationControllerWidth
{
    objc_setAssociatedObject(self, &kAdvancedNavigationControllerWidthKey, @(advancedNavigationControllerWidth), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGFloat)advancedNavigationControllerWidth
{
    return [objc_getAssociatedObject(self, &kAdvancedNavigationControllerWidthKey) floatValue];
}

@end
