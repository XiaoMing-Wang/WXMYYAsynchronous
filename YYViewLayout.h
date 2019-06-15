//
//  YYViewLayout.h
//  ModuleDebugging
//
//  Created by wq on 2019/5/1.
//  Copyright © 2019年 wq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface YYViewLayout : NSObject
@property (nonatomic, assign) CGFloat yy_x;
@property (nonatomic, assign) CGFloat yy_y;
@property (nonatomic, assign) CGFloat yy_width;
@property (nonatomic, assign) CGFloat yy_height;

@property (nonatomic, assign) CGFloat yy_right;
@property (nonatomic, assign) CGFloat yy_bottom;
@property (nonatomic, assign) CGPoint yy_center;
@property (nonatomic, assign) CGFloat yy_centerX;
@property (nonatomic, assign) CGFloat yy_centerY;

@property (nonatomic, assign) CGSize yy_contentSize;
@property (nonatomic, assign) CGPoint yy_contentOrigin;
@end

@interface UIView (YYViewLayout)
- (void)yy_setViewLayout:(YYViewLayout *)viewLayout;
@end
