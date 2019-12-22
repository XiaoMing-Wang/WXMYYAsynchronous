//
//  YYLabel+WXMClass.m
//  Demo2
//
//  Created by wq on 2019/5/1.
//  Copyright © 2019年 wq. All rights reserved.
//

#import "YYLabel+WXMClass.h"
#import "YYTextLayout+WXMClass.h"

@implementation YYLabel (WXMClass)

- (void)asynchWithIgnoreCommonProperties:(BOOL)ignoreCommonProperties {
    self.displaysAsynchronously = YES;                    /** 异步绘制 */
    self.fadeOnHighlight = NO;                            /** 淡出动画 减慢速度 */
    self.fadeOnAsynchronouslyDisplay = NO;                /** 褪色动画。减慢速度 */
    self.ignoreCommonProperties = ignoreCommonProperties; /** 忽略公共属性 */
    self.clearContentsBeforeAsynchronouslyDisplay = NO;   /** 是否需要更新文本 */
}

- (void)yy_setTextLayout:(YYTextLayout *)textLayout {
    if (!textLayout) return;
    CGFloat x = textLayout.configuration.yy_x;
    CGFloat y = textLayout.configuration.yy_y;
    CGFloat width = textLayout.configuration.yy_width;
    CGFloat height = textLayout.configuration.yy_height;
    
    self.textLayout = textLayout;
    self.frame = CGRectMake(x, y, width,height);
    
    CGFloat centerX = textLayout.configuration.yy_centerX;
    CGFloat centerY = textLayout.configuration.yy_centerY;
    if (centerX > 0) self.center = CGPointMake(centerX, self.center.y);
    if (centerY > 0) self.center = CGPointMake(self.center.x, centerY);
       
    self.numberOfLines = textLayout.configuration.yy_numberOfLines;
    self.textAlignment = textLayout.configuration.yy_textAlignment;
    self.textVerticalAlignment = textLayout.configuration.yy_verticalAlignment;
    self.textColor = textLayout.configuration.yy_textColor;
    self.font = textLayout.configuration.yy_textFont;
    
    self.lineBreakMode = NSLineBreakByTruncatingTail;
    [self asynchWithIgnoreCommonProperties:NO];
}
@end
