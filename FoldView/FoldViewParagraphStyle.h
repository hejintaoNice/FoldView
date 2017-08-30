//
//  FoldViewParagraphStyle.h
//  FoldView
//
//  Created by 何锦涛 on 2017/8/30.
//  Copyright © 2017年 hejintao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FoldViewParagraphStyle : NSMutableParagraphStyle

/**
 根据行间距和行前间距设置段落样式
 
 @param lineSpacing 行间距
 @return 段落样式
 */
+ (instancetype)initWithLineSpacing:(CGFloat)lineSpacing;

@end
