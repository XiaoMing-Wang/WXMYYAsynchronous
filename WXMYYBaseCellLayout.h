//
//  WXMBaseCellLayout.h
//  MyLoveApp
//
//  Created by wq on 2019/5/1.
//  Copyright © 2019年 wq. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "WXMAsynchronousHeader.h"

@interface WXMYYBaseCellLayout : NSObject
@property (nonatomic, strong) NSObject *yy_contentModel;
@property (nonatomic, strong) YYTextLayout *titleLabelLayout;
@property (nonatomic, strong) YYTextLayout *subtitleLabelLayout;
+ (instancetype)wxmCellLayoutcontenModel:(NSObject *)yy_contentModel;
@end


@interface WXMYYBaseTableViewCell : UITableViewCell
@property (nonatomic, strong) WXMYYBaseCellLayout *cellLayout;
@property (nonatomic, strong) YYLabel *titleLabel;
@property (nonatomic, strong) YYLabel *subtitleLabel;
@property (nonatomic, strong) UIImageView *iconImageView;
@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"

/** 将存放model(obj)的数组转换成存放Layout数组 */
static inline NSArray *YY_DataConversion(NSArray *dataSource,Class classObj) {
    NSMutableArray *arratM = @[].mutableCopy;
    SEL sel = NSSelectorFromString(@"wxmCellLayoutcontenModel:");
    if (![classObj respondsToSelector:sel]) return nil;
    [dataSource enumerateObjectsUsingBlock:^(NSObject* obj, NSUInteger idx, BOOL *stop) {
        WXMYYBaseCellLayout* cellLayout =  [classObj performSelector:sel withObject:obj];
        if (cellLayout != nil) [arratM addObject:cellLayout];
    }];
    return arratM;
}
#pragma clang diagnostic pop
