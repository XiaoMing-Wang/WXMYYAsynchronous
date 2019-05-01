//
//  YYTextLayout+WXMClass.m
//  Demo2
//
//  Created by wq on 2019/5/1.
//  Copyright © 2019年 wq. All rights reserved.
//
#define WXMNSRangeZero NSMakeRange(0, 0)
#define KAttributedStringColor NSForegroundColorAttributeName
#define KAttributedStringName NSFontAttributeName
#import "YYTextLayout+WXMClass.h"
#import "objc/runtime.h"

@implementation YYTextLayout (WXMClass)

/** 初始化YYTextLayout */
+ (YYTextLayout *)textLayoutWithConfiguration:(YYLayoutConfiguration *)configuration {
    NSString *content = configuration.yy_content;
    NSAssert(content != nil, @"异步绘制需要传入content");
    if (!content) return nil;
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithString:content];
    
    NSRange attributeRange = configuration.yy_attributeRange;
    NSDictionary *attributes = configuration.yy_attributes;
    if (attributes) [text addAttributes:attributes range:attributeRange];
    
    /** 固定大小 */
    CGSize contentSize = CGSizeZero;
    if (CGSizeEqualToSize(CGSizeZero, configuration.yy_contentSize) == NO) {
        contentSize = configuration.yy_contentSize;
    } else { /** 自定义判断 */
        CGFloat maxWidth = configuration.yy_maxWidth;
        contentSize = [self getSizeContent:content maxW:maxWidth font:configuration.yy_textFont];
    }
    
    YYTextContainer *countContainer = [YYTextContainer containerWithSize:contentSize];
    YYTextLayout *yyLayou = [YYTextLayout layoutWithContainer:countContainer text:text];
    configuration.yy_width = yyLayou.container.size.width;
    configuration.yy_height = yyLayou.container.size.height;
    return yyLayou;
}

/** size */
+ (CGSize)getSizeContent:(NSString *)content maxW:(CGFloat)maxW font:(UIFont *)font {
    if (!font) font = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    if (maxW == 0) maxW = MAXFLOAT;
    NSDictionary *attributes = @{ NSFontAttributeName:font };
    CGRect rect = [content boundingRectWithSize:CGSizeMake(maxW, MAXFLOAT)
                                        options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                     attributes:attributes
                                        context:nil];
    return rect.size;
}

#pragma mark -------- lazy

- (void)setConfiguration:(YYLayoutConfiguration *)configuration {
    SEL sel = @selector(configuration);
    objc_setAssociatedObject(self,sel, configuration, OBJC_ASSOCIATION_RETAIN_NONATOMIC);;
}
- (YYLayoutConfiguration *)configuration {
    return objc_getAssociatedObject(self, _cmd);
}
@end
