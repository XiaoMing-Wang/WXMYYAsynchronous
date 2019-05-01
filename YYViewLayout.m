//
//  YYViewLayout.m
//  ModuleDebugging
//
//  Created by wq on 2019/5/1.
//  Copyright © 2019年 wq. All rights reserved.
//

#import "YYViewLayout.h"

@implementation YYViewLayout

- (void)setYy_right:(CGFloat)yy_right {
    _yy_right = yy_right;
    _yy_x = yy_right - self.yy_width;
}
- (void)setYy_bottom:(CGFloat)yy_bottom {
    _yy_bottom = yy_bottom;
    _yy_y = yy_bottom - self.yy_height;
}
- (void)setYy_center:(CGPoint)yy_center {
    _yy_center = yy_center;
    _yy_centerX = yy_center.x;
    _yy_centerY = yy_center.y;
}
- (void)setYy_contentSize:(CGSize)yy_contentSize {
    _yy_contentSize = yy_contentSize;
    _yy_width = yy_contentSize.width;
    _yy_height = yy_contentSize.height;
}
- (void)setYy_contentOrigin:(CGPoint)yy_contentOrigin {
    _yy_contentOrigin = yy_contentOrigin;
    _yy_x = yy_contentOrigin.x;
    _yy_y = yy_contentOrigin.y;
}
@end

@implementation UIView (YYViewLayout)

- (void)yy_setViewLayout:(YYViewLayout *)viewLayout {
    CGFloat x = viewLayout.yy_x;
    CGFloat y = viewLayout.yy_y;
    CGFloat w = viewLayout.yy_width;
    CGFloat h = viewLayout.yy_height;
    self.frame = CGRectMake(x, y, w, h);
    if (viewLayout.yy_centerX)self.center = CGPointMake(viewLayout.yy_centerX, self.center.y);
    if (viewLayout.yy_centerY)self.center = CGPointMake(self.center.x,viewLayout.yy_centerY);
    
}
@end
