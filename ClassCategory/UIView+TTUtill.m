//
//  UIView+TTUtill.m
//  TTUtill
//
//  Created by TsujiTomoya on 2015/04/22.
//  Copyright (c) 2015年 TTUtill. All rights reserved.
//

#import "UIView+TTUtill.h"

@implementation UIView (TTUtill)

- (void)maskByRoundingCorners:(UIRectCorner)corners
                 cornerRadius:(CGFloat)cornerRadius
{
    [self layoutIfNeeded];
    
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                     byRoundingCorners:corners
                                           cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
    
    CAShapeLayer *maskLayer = [CAShapeLayer new];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    
    self.layer.mask = maskLayer;
}


@end
