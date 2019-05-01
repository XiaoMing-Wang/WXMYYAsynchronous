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

/** 赋值 */
- (void)setYy_x:(CGFloat)yy_x {
    _yy_x = yy_x;
    _yy_contentOrigin = CGPointMake(yy_x, _yy_contentOrigin.y);
}
- (void)setYy_y:(CGFloat)yy_y {
    _yy_y = yy_y;
    _yy_contentOrigin = CGPointMake(_yy_contentOrigin.x, _yy_y);
}
- (void)setYy_contentOrigin:(CGPoint)yy_contentOrigin {
    _yy_contentOrigin = yy_contentOrigin;
    _yy_x = yy_contentOrigin.x;
    _yy_y = yy_contentOrigin.y;
}
@end
