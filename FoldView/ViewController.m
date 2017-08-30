//
//  ViewController.m
//  FoldView
//
//  Created by 何锦涛 on 2017/8/30.
//  Copyright © 2017年 hejintao. All rights reserved.
//

#import "ViewController.h"
#import "FoldView+Untils.h"
#import "FoldView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FoldViewAttributedString *unFoldAttrStr = nil;
    NSMutableString *content = [[NSMutableString alloc] initWithString:@"人生，如一幅春夏秋冬的景象，岁月，像一趟穿越四季的列车，我们都在路上。际遇是沿途的风光，无论我们是无视或是欣赏，终究都成为匆匆的过往。珍惜吧，珍惜会让生命中的美好增加一些重量。豁然吧，豁然是因为明白一切的风霜仅仅是过场。"];
    if ([self.title isEqualToString:@"默认配置初始化"]) {
        // 1.获取属性字符串：默认配置
        unFoldAttrStr = [FoldViewAttributedString defaultConficAttributedString:content];
    } else {
        
        // 注意：在4.7寸屏幕下由于测试文字内容长度不够，故增加一段字符来模拟这种情景，仅仅只用于测试
        if ([self.title isEqualToString:@"展开时展开按钮位置：左边"]) {
            [content appendString:@"豁然是因为明白一切的风霜仅仅"];
        }
        
        // 1.获取属性字符串：自定义内容和属性
        unFoldAttrStr = [[FoldViewAttributedString alloc] initWithContent:content
                                                              contentFont:[UIFont systemFontOfSize:12.0f]
                                                             contentColor:[FoldView colorWithHexString:@"#8b8b8b"]
                                                             unFoldString:@"[显示全文]"
                                                               foldString:@"[收回]"
                                                               unFoldFont:[UIFont systemFontOfSize:12.0f]
                                                              unFoldColor:[FoldView colorWithHexString:@"#dd4991"]
                                                              lineSpacing:7];
    }
    
    // 2.添加展开视图
    FoldView *unFoldView = [[FoldView alloc] initWithAttributedString:unFoldAttrStr maxWidth:[UIScreen mainScreen].bounds.size.width - 60.0f isDefaultUnFold:NO foldLines:3 location:0];
    unFoldView.frame = CGRectMake(30, 100, unFoldView.frame.size.width, unFoldView.frame.size.height);
    unFoldView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:unFoldView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
