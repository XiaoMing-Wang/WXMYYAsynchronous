//
//  YYLayoutConfiguration.h
//  Demo2
//
//  Created by wq on 2019/5/1.
//  Copyright © 2019年 wq. All rights reserved.
//
#define YYDefaultFont 16
#define YYDefaultColor [UIColor blackColor]
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <YYLabel.h>

@interface YYLayoutConfiguration : NSObject

/** 内容 */
@property (nonatomic, copy) NSString *yy_content;

/** 位置大小 */
@property (nonatomic, assign) CGFloat yy_x;
@property (nonatomic, assign) CGFloat yy_y;
@property (nonatomic, assign) CGFloat yy_right;
@property (nonatomic, assign) CGFloat yy_bottom;
@property (nonatomic, assign) CGPoint yy_center;
@property (nonatomic, assign) CGFloat yy_centerX;
@property (nonatomic, assign) CGFloat yy_centerY;
@property (nonatomic, assign) CGFloat yy_maxWidth;
@property (nonatomic, assign) CGPoint yy_contentOrigin;
@property (nonatomic, assign) CGSize yy_contentSize;

/** 其他设置 */
@property (nonatomic, strong) UIFont *yy_textFont;
@property (nonatomic, strong) UIColor *yy_textColor;
@property (nonatomic, assign) NSInteger yy_numberOfLines;
@property (nonatomic, assign) NSTextAlignment yy_textAlignment;
@property (nonatomic, assign) YYTextVerticalAlignment yy_verticalAlignment;

/** 返回真实宽高 */
@property (nonatomic, assign) CGFloat yy_width;
@property (nonatomic, assign) CGFloat yy_height;

/** 富文本 */
@property (nonatomic, assign) NSRange yy_attributeRange;
@property (nonatomic, strong) NSDictionary *yy_attributes;

/** 初始化 */
+ (instancetype)yy_layoutConfiguration:(NSString *)content;

@end

