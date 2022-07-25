//
//  JXRedView.m
//  PrintHelloWorld_Example
//
//  Created by gaoxinqiang on 2022/7/22.
//  Copyright © 2022 569099804@qq.com. All rights reserved.
//

#import "JXRedView.h"

@implementation JXRedView

- (instancetype)init
{
    if (self = [super init]) {
        [self UI];
    }
    return self;
}

- (void)UI
{
    self.backgroundColor = [UIColor redColor];
}

- (void)log
{
    NSLog(@">>>>>>>====");
}

@end
