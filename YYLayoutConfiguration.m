//
//  YYLayoutConfiguration.m
//  Demo2
//
//  Created by wq on 2019/5/1.
//  Copyright © 2019年 wq. All rights reserved.
//
#import "YYLayoutConfiguration.h"

@implementation YYLayoutConfiguration

- (instancetype)init {
    if (self = [super init]) {
        self.yy_content = @"";
        self.yy_maxWidth = 0;
        self.yy_numberOfLines = 1;
        self.yy_textColor = YYDefaultColor;
        self.yy_textAlignment = NSTextAlignmentLeft;
        self.yy_verticalAlignment = YYTextVerticalAlignmentCenter;
        self.yy_textFont = [UIFont systemFontOfSize:YYDefaultFont];
    }
    return self;
}

/** 初始化 */
+ (instancetype)yy_layoutConfiguration:(NSString *)content {
    YYLayoutConfiguration * configuration = [YYLayoutConfiguration new];
    configuration.yy_content = content;
    return configuration;
}

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
