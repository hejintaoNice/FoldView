//
//  FoldViewParagraphStyle.m
//  FoldView
//
//  Created by 何锦涛 on 2017/8/30.
//  Copyright © 2017年 hejintao. All rights reserved.
//

#import "FoldViewParagraphStyle.h"

@implementation FoldViewParagraphStyle

/**
 * 根据行间距和行前间距设置段落样式
 */
+ (instancetype)initWithLineSpacing:(CGFloat)lineSpacing
{
    FoldViewParagraphStyle *paragraphStyle = [[FoldViewParagraphStyle alloc] init];
    
    [paragraphStyle setLineSpacing:lineSpacing];
    [paragraphStyle setLineBreakMode:NSLineBreakByTruncatingTail];
    
    return paragraphStyle;
}

@end
