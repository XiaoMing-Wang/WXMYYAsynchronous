//
//  YYTextLayout+WXMClass.h
//  Demo2
//
//  Created by wq on 2019/5/1.
//  Copyright © 2019年 wq. All rights reserved.
//

#import "YYTextLayout.h"
#import "YYLayoutConfiguration.h"

@interface YYTextLayout (WXMClass)

/** 配置信息 */
@property (nonatomic, strong) YYLayoutConfiguration *configuration;

+ (YYTextLayout *)textLayoutWithConfiguration:(YYLayoutConfiguration *)configuration;

@end
