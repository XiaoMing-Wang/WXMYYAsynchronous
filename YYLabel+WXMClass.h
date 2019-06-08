//
//  YYLabel+WXMClass.h
//  Demo2
//
//  Created by wq on 2019/5/1.
//  Copyright © 2019年 wq. All rights reserved.
//
/** 注：YYLabel显示时只需设置origin size在绘制时已经设置 */
#import "YYLabel.h"

@interface YYLabel (WXMClass)

/** 忽略公共属性 YES以获得更高的性能但会显示其他界面的信息 默认NO*/
- (void)asynchWithIgnoreCommonProperties:(BOOL)ignoreCommonProperties;

- (void)yy_setTextLayout:(YYTextLayout *)textLayout;

@end
