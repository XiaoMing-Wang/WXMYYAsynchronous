//
//  WXMBaseCellLayout.m
//  MyLoveApp
//
//  Created by wq on 2019/5/1.
//  Copyright © 2019年 wq. All rights reserved.
//

#import "WXMYYBaseCellLayout.h"
#import "YYLayoutConfiguration.h"

@implementation WXMYYBaseCellLayout

/** 初始化子类需要重写 */
+ (instancetype)wxmCellLayoutcontenModel:(NSObject *)yy_contentModel {
    WXMYYBaseCellLayout *layout = [self new];
    layout.yy_contentModel = yy_contentModel;
    [layout initializeTextLayout];
    return layout;
}

/** 初始化TextLayout */
- (void)initializeTextLayout {
    /**
     YYLayoutConfiguration *titleConf = [YYLayoutConfiguration yy_layoutConfiguration:@""];
     titleConf.yy_textFont = [UIFont systemFontOfSize:16];
     titleConf.yy_maxWidth = 200;
     _titleLabelLayout = [YYTextLayout textLayoutWithConfiguration:titleConf];
     
     YYLayoutConfiguration *subConf= [YYLayoutConfiguration yy_layoutConfiguration:@""];
     subConf.yy_textFont = [UIFont systemFontOfSize:12];
     subConf.yy_maxWidth = KWidth;
     _subtitleLabelLayout = [YYTextLayout textLayoutWithConfiguration:subConf];
     */
}

@end


/** Cell */
@implementation WXMYYBaseTableViewCell

/** 赋值 */
- (void)setCellLayout:(WXMYYBaseCellLayout *)cellLayout {
    /**
     _cellLayout = cellLayout;
     [_titleLabel yy_setTextLayout:cellLayout.titleLabelLayout];
     [_subtitleLabel yy_setTextLayout:cellLayout.subtitleLabelLayout];
     */
}

/** 复用 */
- (instancetype)initWithStyle:(UITableViewCellStyle)style
              reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    [self initializationInterface];
    return self;
}

/** 初始化 */
- (void)initializationInterface {
    /**
     _titleLabel = [YYLabel new];
     _subtitleLabel = [YYLabel new];
     */
}

@end
